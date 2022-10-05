//
//  MovieViewModel.swift
//  Swift-Coding-Club-Netflix-Clone
//
//  Created by gaeng on 2022/09/26.
//

import Foundation
import Combine

struct Media {
    static let movie = "movie"
    static let tv = "tv"
}

enum NetworError: Error {
    case invalidRequest
    case unknownError(message: String)
}

class HomeViewModel: ObservableObject {
    @Published var movies: [Movie]?

    private var cancellables = Set<AnyCancellable>()

    private var decoder: JSONDecoder = {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return decoder
    }()

    func getTrandigMovies() {
        guard let url = URL(string: "\(Const.host)/3/trending/movie/day?api_key=\(Const.apiKey)") else { return }

        URLSession.shared.dataTaskPublisher(for: url)
            .tryMap { data, response -> Data in
                guard let response = response as? HTTPURLResponse, response.statusCode >= 200 && response.statusCode < 300 else {
                    throw URLError(.badServerResponse)
                }
                return data
            }
            .decode(type: MovieResults.self, decoder: JSONDecoder())
            .map{ $0.results! }
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
            .sink { completion in
                switch completion {
                case .finished:
                    print("finished")
                case .failure(let error):
                    print(error)
                }
            } receiveValue: { value in
                self.movies = value
            }
            .store(in: &cancellables)
    }
    
    func getUpcomingContents() {
            guard let url = URL(string: "\(Const.host)/3/movie/upcoming??api_key=\(Const.apiKey)&language==en-US&page=1") else { return }
            
            URLSession.shared.dataTaskPublisher(for: url)
                .tryMap { data, response -> Data in
                    guard let response = response as? HTTPURLResponse,
                            response.statusCode >= 200 && response.statusCode < 300 else {
                        throw URLError(.badServerResponse)
                    }
                    return data
                }
                .decode(type: MovieResults.self, decoder: JSONDecoder())
                .map{ $0.results! }
                .receive(on: DispatchQueue.main)
                .eraseToAnyPublisher()
                .sink { completion in
                    switch completion {
                    case .finished:
                        print("finished")
                    case .failure(let error):
                        print(error)
                    }
                } receiveValue: { movies in
                    self.movies = movies
                }
                .store(in: &cancellables)
        }
}
