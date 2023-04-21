//
//  DetailViewController.swift
//  Project Week 2
//
//  Created by Nguyen, Huy on 3/6/23.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {

    
    @IBOutlet weak var movieImageView: UIImageView!
    
    @IBOutlet weak var movieNameLabel: UILabel!
    
    @IBOutlet weak var movieNameDescription: UILabel!
    
    @IBOutlet weak var moviePopularityLabel: UILabel!
    
    @IBOutlet weak var movieVoteCount: UILabel!
    
    @IBOutlet weak var movieAverage: UILabel!
    
    var movie: Movie!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Nuke.loadImage(with: URL(string: "https://image.tmdb.org/t/p/w600_and_h900_bestv2/" + movie.poster_path.absoluteString)!, into: movieImageView)
        movieNameLabel.text = movie.title
        movieNameDescription.text = movie.overview
        movieAverage.text = "\(movie.vote_average)"
        movieVoteCount.text = "\(movie.vote_count)"
        moviePopularityLabel.text = "\(movie.popularity)"
        
    
        // Do any additional setup after loading the view.

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
