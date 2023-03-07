//
//  ViewController.swift
//  Project Week 2
//
//  Created by Nguyen, Huy on 3/6/23.
//

import UIKit

class FilmViewController: UIViewController, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        movies.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieCell
        let movie = movies[indexPath.row]
        cell.configure(with: movie)
        return cell
        
    }
    

    @IBOutlet weak var tableView: UITableView!
    
    
    var movies: [Movie] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        movies = Movie.Movies
        
        
        
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let cell = sender as? UITableViewCell,
           let indexPath = tableView.indexPath(for: cell),
           let detailViewController = segue.destination as? DetailViewController {
            let movie = movies[indexPath.row]
            detailViewController.movie = movie
        }
            
    }


}

