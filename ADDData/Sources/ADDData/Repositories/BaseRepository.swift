//
//  BaseRepository.swift
//  ADDemo
//
//  Created by Sergio Ramirez on 3/08/24.
//

import Foundation

public class BaseRepository {
    let client: APIClient
    public init(client: APIClient = Client()) {
        self.client = client
    }
}
