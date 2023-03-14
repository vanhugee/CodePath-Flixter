//
//  MovieCell.swift
//  Project Week 2
//
//  Created by Nguyen, Huy on 3/6/23.
//

import UIKit
import Nuke


class MovieCell: UITableViewCell {

    @IBOutlet weak var movieImageView: UIImageView!
    
    @IBOutlet weak var movieNameLabel: UILabel!
    
    @IBOutlet weak var movieDescriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(with movie: Movie) {
        
        movieNameLabel.text = movie.title
        movieDescriptionLabel.text = movie.overview
        Nuke.loadImage(with: URL(string: "https://image.tmdb.org/t/p/w600_and_h900_bestv2/" + movie.poster_path.absoluteString)!, into: movieImageView)
         
    }
    

}
