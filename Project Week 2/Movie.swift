//
//  Track.swift
//  Project Week 2
//
//  Created by Nguyen, Huy on 3/6/23.
//

import Foundation

struct Movie {
    let movieName : String
    let movieImage : URL
    let voteCount : Int
    let voteAverage : Float
    let moviePopularity: Float
    let movieDescription: String
    
    static var Movies: [Movie] = [
        Movie(movieName: "Knock at the Cabin",
              movieImage: URL(string: "https://static1.moviewebimages.com/wordpress/wp-content/uploads/2022/11/knock-at-the-cabin-poster.jpg")!,
              voteCount: 778,
              voteAverage: 6.6,
              moviePopularity: 4969.06,
             movieDescription: "While vacationing at a remote cabin, a young girl and her two fathers are taken hostage by four armed strangers who demand that the family make an unthinkable choice to avert the apocalypse. With limited access to the outside world, the family must decide what they believe before all is lost."),
        Movie(movieName: "Black Panther: Wakanda Forever",
              movieImage: URL(string: "https://cdn.marvel.com/content/1x/blackpantherwakandaforever_lob_mas_mob_04.jpg")!,
              voteCount: 3823,
              voteAverage: 7.4,
              moviePopularity: 3501.282,
             movieDescription: "Queen Ramonda, Shuri, M’Baku, Okoye and the Dora Milaje fight to protect their nation from intervening world powers in the wake of King T’Challa’s death.  As the Wakandans strive to embrace their next chapter, the heroes must band together with the help of War Dog Nakia and Everett Ross and forge a new path for the kingdom of Wakanda."),
        Movie(movieName: "Puss in Boots: The Last Wish",
              movieImage: URL(string: "https://variety.com/wp-content/uploads/2022/06/Puss-in-Boots-The-Last-Wish.jpg")!,
              voteCount: 4277,
              voteAverage: 8.4,
              moviePopularity: 3278.515,
             movieDescription: "Puss in Boots discovers that his passion for adventure has taken its toll: He has burned through eight of his nine lives, leaving him with only one life left. Puss sets out on an epic journey to find the mythical Last Wish and restore his nine lives."),
        Movie(movieName: "Plane",
              movieImage: URL(string: "https://dx35vtwkllhj9.cloudfront.net/lionsgateus/plane/images/regions/us/onesheet.jpg")!,
              voteCount: 770,
              voteAverage: 6.9,
              moviePopularity: 2618.646,
             movieDescription: "After a heroic job of successfully landing his storm-damaged aircraft in a war zone, a fearless pilot finds himself between the agendas of multiple militias planning to take the plane and its passengers hostage."),
        Movie(movieName: "Little Dixie",
              movieImage: URL(string: "https://m.media-amazon.com/images/I/71dwFVI9CrL._RI_.jpg")!,
              voteCount: 46,
              voteAverage: 6.4,
              moviePopularity: 2015.068,
             movieDescription: "Erstwhile Special Forces operative Doc Alexander is asked to broker a truce with the Mexican drug cartel in secrecy. When Oklahoma Governor Richard Jeffs celebrates the execution of a high-ranking cartel member on TV, his Chief of Staff and Doc inform him about the peace he just ended. But it’s too late, as Cuco, the cartel’s hatchet man, has set his vengeful sights on Doc’s daughter Dixie.")
       
    ]
    
    
}



