//
//  Movie.swift
//  Swift-Coding-Club-Netflix-Clone
//
//  Created by gaeng on 2022/09/26.
//

import Foundation

struct Movie: Identifiable, Decodable {
    let id: Int?
    let title: String?
    let overview: String?
    let posterPath: String?
    let popularity: Float?
    
    enum CodingKeys:String, CodingKey {
        case id,title, overview, popularity
        case posterPath = "poster_path"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decodeIfPresent(Int.self, forKey: .id)
        self.title = try container.decodeIfPresent(String.self, forKey: .title)
        self.overview = try container.decodeIfPresent(String.self, forKey: .overview)
        self.posterPath = try container.decodeIfPresent(String.self, forKey: .posterPath)
        self.popularity = try container.decodeIfPresent(Float.self, forKey: .popularity)
    }
}
