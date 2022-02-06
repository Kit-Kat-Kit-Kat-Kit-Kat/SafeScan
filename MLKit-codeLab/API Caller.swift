//
//  API Caller.swift
//  Product Scanner
//
//  Created by Ridhima Morampudi on 2/5/22.
//  Copyright © 2022 Google Inc. All rights reserved.
//

import Foundation

final class APICaller {
    static let shared = APICaller()
    
    struct Constants {
        static let topHeadlinesURL = URL(string: "https://newsapi.org/v2/top-headlines?country=us&category=health&apiKey=d22b33965f324b69ab1fd35ff3d66174")
    }
    private init() {}

    public func getTopStories (completion: @escaping (Result<[Article], Error>) -> Void) {
        guard let url = Constants.topHeadlinesURL else {
            return
            
        }
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                print("boooo")
                completion(.failure(error))
            }
            else if let data = data {
                do {
                    let result = try JSONDecoder().decode (APIResponse.self, from: data)
                    print("Articles: \(result.articles.count)")
                    completion(.success(result.articles))
                }
                catch {
                    completion(.failure(error) )}

        }
        }
    
    task.resume()
}
}

// Models
struct APIResponse: Codable {
    let articles: [Article]
    
}
struct Article: Codable {
    let source: Source
    let title: String
    let description: String?
    let url: String?
    let urlToImage: String?
    let publishedAt: String?
    }

struct Source: Codable {
    let name: String
}
