//
//  BaseLocalRepository.swift
//  ADDemo
//
//  Created by Sergio Ramirez on 7/08/24.
//

import Foundation

public class BaseLocalRepository {
    let persistence: PersistenceController

    public init(persistenceController: PersistenceController = PersistenceController.shared) {
        persistence = persistenceController
    }
}
