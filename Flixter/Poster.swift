//
//  Poster.swift
//  Project Week 2
//
//  Created by Nguyen, Huy on 3/13/23.
//

import Foundation


struct PostersSearchResponse: Decodable {
    let results : [Poster]
}

struct Poster: Decodable {
    let title : String
    let poster_path : URL
    let vote_count : Int
    let vote_average : Float
    let popularity: Float
    let overview: String
        
    
}
