//
//  NewMockDataSertvice.swift
//  UnitTestingBootcampView
//
//  Created by 张芳涛 on 2023/7/12.
//

import Foundation
import SwiftUI
import Combine

protocol NewDataServiceProtocol {
   func downloadItemWithEscaping(completion: @escaping (_ items: [String]) -> ())
    func downloadItemsWithCombine() -> AnyPublisher<[String], Error>
}

class NewMockDataService:NewDataServiceProtocol {
    let items: [String]
    init(items: [String]?) {
        self.items = items ?? ["ONE", "TWO", "THREE"]
    }
    
    func downloadItemWithEscaping(completion: @escaping (_ items: [String]) -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            completion(self.items)
        }
    }
    
    func downloadItemsWithCombine() -> AnyPublisher<[String], Error> {
        Just(items)
            .tryMap({ publishedItems in
                guard !publishedItems.isEmpty else {
                    throw URLError(.badServerResponse)
                }
                return publishedItems
            })
            .eraseToAnyPublisher()
    }
}
