//
//  ArticleLocalEntity+Mapping.swift
//  ADDemo
//
//  Created by Sergio Ramirez on 4/08/24.
//

import Foundation
import ADDDomain

public extension ArticleLocalEntity {
    
    public func toDomain() -> Article {
        let article = Article(id: id,
                              title: title,
                              author: author,
                              createdAt: createdAt,
                              articleUrl: url ?? "")
        return article
    }
}
