//
//  Movie.swift
//  Swift-Coding-Club-Netflix-Clone
//
//  Created by gaeng on 2022/09/26.
//

import Foundation

struct MovieResults: Decodable {
    let page: Int?
    let results: [Movie]?

    enum CodingKeys: String, CodingKey {
        case page = "page"
        case results = "results"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        page = try values.decodeIfPresent(Int.self, forKey: .page)
        results = try values.decodeIfPresent([Movie].self, forKey: .results)
    }
}
