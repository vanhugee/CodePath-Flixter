//
//  DetailPosterViewController.swift
//  Project Week 2
//
//  Created by Nguyen, Huy on 3/13/23.
//

import UIKit
import Nuke

class DetailPosterViewController: UIViewController {

    var poster: Poster!
    
    
    @IBOutlet weak var posterImageView: UIImageView!
    
    @IBOutlet weak var posterLabel: UILabel!
    
    @IBOutlet weak var DescriptionLabel: UILabel!
    
    @IBOutlet weak var voteCount: UILabel!
    
    @IBOutlet weak var voteAverage: UILabel!
    
    @IBOutlet weak var moviePopularity: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Nuke.loadImage(with: URL(string: "https://image.tmdb.org/t/p/w600_and_h900_bestv2/" + poster.poster_path.absoluteString)!, into: posterImageView)
        posterLabel.text = poster.title
        DescriptionLabel.text = poster.overview
        voteAverage.text = "\(poster.vote_average)"
        voteCount.text = "\(poster.vote_count)"
        moviePopularity.text = "\(poster.popularity)"
        
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
