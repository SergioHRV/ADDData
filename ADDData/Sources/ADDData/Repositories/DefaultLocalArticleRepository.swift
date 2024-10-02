//
//  DefaultLocalArticleRepository.swift
//  ADDemo
//
//  Created by Sergio Ramirez on 4/08/24.
//

import Foundation
import ADDDomain

final class DefaultLocalArticleRepository: BaseLocalRepository, LocalArticleRepository {
    
    public func getArticles() async throws -> [Article] {
        let localArticles = try await persistence.getAllArticles()
        var articles: [Article] = []
        for localArticle in localArticles {
            articles.append(localArticle.toDomain())
        }
        return articles
    }
    
    public func saveArticles(_ articles: [Article]) async throws {
        try await persistence.deleteAllArticles()
        try await persistence.saveBatchArticles(from: articles)
    }
    
    public func addDeletedArticleId(_ articleId: String) async throws {
        try await persistence.saveArticleId(articleId: articleId)
    }
    
    public func getDeletedArticlesIds() async throws -> [String] {
        let deleteArticlesIDsLocalEntitys = try await persistence.getDeletedArticleIds()
        let deletedIds = deleteArticlesIDsLocalEntitys.map { $0.id ?? "" }
        return deletedIds
    }
}
