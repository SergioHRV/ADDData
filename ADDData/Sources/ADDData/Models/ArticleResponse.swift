//
//  ArticleResponse.swift
//  ADDemo
//
//  Created by Sergio Ramirez on 3/08/24.
//

import Foundation

public struct ArticlesResponse: Codable {
    public let hits: [ArticleResponse]
    
    public init(hits: [ArticleResponse]) {
        self.hits = hits
    }
}

public struct ArticleResponse: Codable {
    public let id: String
    public let title: String?
    public let otherTitle: String?
    public let author: String?
    public let createdAt: String?
    public let articleUrl: String?
    
    public enum CodingKeys: String, CodingKey {
        case id = "objectID"
        case title = "story_title"
        case otherTitle = "title"
        case author = "author"
        case createdAt = "created_at"
        case articleUrl = "story_url"
    }
    
    public init(id: String, title: String?, otherTitle: String?, author: String?, createdAt: String?, articleUrl: String?) {
        self.id = id
        self.title = title
        self.otherTitle = otherTitle
        self.author = author
        self.createdAt = createdAt
        self.articleUrl = articleUrl
    }
}
