//
//  Api.swift
//  Swift-Coding-Club-Netflix-Clone
//
//  Created by gaeng on 2022/09/03.
//

import Foundation

// Use Plist for get API_KEY
private var apiKey: String {
  get {
    // 1
    guard let filePath = Bundle.main.path(forResource: "Info", ofType: "plist") else {
      fatalError("Couldn't find file 'Info.plist'.")
    }
    // 2
    let plist = NSDictionary(contentsOfFile: filePath)
    guard let value = plist?.object(forKey: "TMDB Api Key") as? String else {
      fatalError("Couldn't find key 'API_KEY' in 'Info.plist'.")
    }
    return value
  }
}

class Api {
    static let host = "https://api.themoviedb.org/3/movie/"
}
