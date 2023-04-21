//
//  PostersViewController.swift
//  Project Week 2
//
//  Created by Nguyen, Huy on 3/13/23.
//

import UIKit
import Nuke

class PostersViewController: UIViewController, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        posters.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // Get a collection view cell (based in the identifier you set in storyboard) and cast it to our custom AlbumCell
          let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PosterCell", for: indexPath) as! PosterCell

          // Use the indexPath.item to index into the posters array to get the corresponding album
          let poster = posters[indexPath.item]

          // Get the artwork image url
        let posterUrl = poster.poster_path

          // Set the image on the image view of the cell
          Nuke.loadImage(with: URL(string: "https://image.tmdb.org/t/p/w600_and_h900_bestv2/" + poster.poster_path.absoluteString)!, into: cell.posterImageView)

          return cell
    }
    
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    

    var posters: [Poster] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Create a search URL for fetching albums (`entity=album`)
        
        let url = URL(string: "https://api.themoviedb.org/3/movie/now_playing?api_key=97145c26910cd0a4c185eae89bc6a038")!
        let request = URLRequest(url: url)

        let task = URLSession.shared.dataTask(with: request) { [weak self] data, response, error in

            // Handle any errors
            if let error = error {
                print("❌ Network error: \(error.localizedDescription)")
            }

            // Make sure we have data
            guard let data = data else {
                print("❌ Data is nil")
                return
            }

            // Create a JSON Decoder
            let decoder = JSONDecoder()
            do {
                // Try to parse the response into our custom model
                let response = try decoder.decode(PostersSearchResponse.self, from: data)
                let posters = response.results
                DispatchQueue.main.async {
                    self?.posters = posters
                    self?.collectionView.reloadData()
                }
                print(posters)
            } catch {
                print(error.localizedDescription)
            }
        }

        // Initiate the network request
        task.resume()
        
        collectionView.dataSource = self
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout

        // The minimum spacing between adjacent cells (left / right, in vertical scrolling collection)
        // Set this to taste.
        layout.minimumInteritemSpacing = 1

        // The minimum spacing between adjacent cells (top / bottom, in vertical scrolling collection)
        // Set this to taste.
        layout.minimumLineSpacing = 1

        // Set this to however many columns you want to show in the collection.
        let numberOfColumns: CGFloat = 3

        // Calculate the width each cell need to be to fit the number of columns, taking into account the spacing between cells.
        let width = (collectionView.bounds.width - layout.minimumInteritemSpacing * (numberOfColumns - 1)) / numberOfColumns

        // Set the size that each tem/cell should display at
        layout.itemSize = CGSize(width: width, height: width)
        // Do any additional setup after loading the view.
        
        
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let cell = sender as? UICollectionViewCell,
           let indexPath = collectionView.indexPath(for: cell),
           let detailViewController = segue.destination as? DetailPosterViewController {
            let poster = posters[indexPath.row]
            detailViewController.poster = poster
        }
            
    }
    
     
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
