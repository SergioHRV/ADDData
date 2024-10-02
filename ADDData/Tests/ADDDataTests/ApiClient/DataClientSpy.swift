//
//  DataClientSpy.swift
//  ADDemoTests
//
//  Created by Sergio Ramirez on 5/08/24.
//

import Foundation
@testable import ADDData

final class DataClientSpy: APIClient {
    var clientGotCalled: Bool = false
    
    func request<T>(endpoint: APIEndpoint) async throws -> T where T : Decodable, T : Encodable {
        clientGotCalled = true
        let response: T = TestConstants.articlesResponse as! T
        return response
    }
}
