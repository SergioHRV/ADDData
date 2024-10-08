//
//  ArticleResponse+Mapping.swift
//  ADDemo
//
//  Created by Sergio Ramirez on 3/08/24.
//

import Foundation
import ADDDomain

extension ArticleResponse {
    
    private var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        formatter.locale = Locale(identifier: "en_US_POSIX")
        return formatter
    }

    public func toDomain() -> Article {
        let date = dateFormatter.date(from: createdAt ?? "") ?? Date()
        let selectedTitle = title ?? otherTitle
        let article = Article(id: id,
                              title: selectedTitle ?? "",
                              author: author ?? "",
                              createdAt: date,
                              articleUrl: articleUrl ?? "")
        return article
    }
}

