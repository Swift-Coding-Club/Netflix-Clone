//
//  Bundle+Extensions.swift
//  Swift-Coding-Club-Netflix-Clone
//
//  Created by gaeng on 2022/09/26.
//

import Foundation

struct Const {
    static let apiKey = Bundle.main.apiKey
    static let host = "https://api.themoviedb.org"
    static let imageUrl = "https://image.tmdb.org/t/p/w500"
}

extension Bundle {
    var apiKey: String {
        get {
            // 1
            guard let filePath = Bundle.main.path(forResource: "MovieApiKey", ofType: "plist") else {
                fatalError("Couldn't find file 'Info.plist'.")
            }
            // 2
            let plist = NSDictionary(contentsOfFile: filePath)
            guard let value = plist?.object(forKey: "tmdb api key") as? String else {
                fatalError("Couldn't find key 'API_KEY' in 'Info.plist'.")
            }
            return value
        }
    }
}
