//
//  Track.swift
//  Project Week 2
//
//  Created by Nguyen, Huy on 3/6/23.
//

import Foundation

struct Movie: Decodable {
    let title : String
    let poster_path : URL
    let vote_count : Int
    let vote_average : Float
    let popularity: Float
    let overview: String
        
}

struct MoviesResponse: Decodable {
    let results: [Movie]
}



