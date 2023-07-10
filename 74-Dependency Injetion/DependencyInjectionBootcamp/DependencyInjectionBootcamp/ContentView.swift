//
//  ContentView.swift
//  DependencyInjectionBootcamp
//
//  Created by 张芳涛 on 2023/7/10.
//

import SwiftUI
import Combine
/*
 {
   "userId": 1,
   "id": 2,
   "title": "qui est esse",
   "body": "est rerum tempore vitae\nsequi sint nihil reprehenderit dolor beatae ea dolores neque\nfugiat blanditiis voluptate porro vel nihil molestiae ut reiciendis\nqui aperiam non debitis possimus qui neque nisi nulla"
 },
 */

// problems about singleton
// 1: Singleton's are global
// 2: Can't customize the init!
// 3: Can't swap our dependencies!

struct PostModel: Codable,Identifiable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}

protocol DataServiceProtocol {
    func getData() -> AnyPublisher<[PostModel], Error>
    
}

class ProductionDataService {
//    // singleton
//    static let instance = ProductionDataService()
//    
//    let url: URL = URL(string: "https://jsonplaceholder.typicode.com/posts")!
    let url: URL
    init(url: URL) {
        self.url = url
    }
    
    func getData() -> AnyPublisher<[PostModel], Error> {
        URLSession.shared.dataTaskPublisher(for: url)
            .map({ $0.data })
            .decode(type: [PostModel].self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}

class MockDataService: DataServiceProtocol {
    let testData: [PostModel]
    private let defaultData = [
            PostModel(userId: 1, id: 1, title: "One", body: "one"),
            PostModel(userId: 2, id: 2, title: "Two", body: "two")
    ]
    
    init(data: [PostModel]?) {
        self.testData = data ?? defaultData
    }
    
    func getData() -> AnyPublisher<[PostModel], Error> {
        Just(testData)
            .tryMap({ $0 })
            .eraseToAnyPublisher()
    }
}

//class Dependencies {
//    let dataService: DataServiceProtocol
//    init(dataService: DataServiceProtocol) {
//        self.dataService = dataService
//    }
//}

class DependencyInjectionViewModel: ObservableObject {
    @Published var dataArray: [PostModel] = []
    var cancellables = Set<AnyCancellable>()
    let dataService: DataServiceProtocol
    
    init(dataService: DataServiceProtocol) {
        
        self.dataService = dataService
        loadPosts()
    }
    
    private func loadPosts() {
        dataService.getData()
            .sink { _ in
                
            } receiveValue: { [weak self] returnedPosts in
                self?.dataArray = returnedPosts
            }
            .store(in: &cancellables)
    }
}

struct ContentView: View {
    @StateObject private var vm: DependencyInjectionViewModel
    
    init(dataService: DataServiceProtocol) {
        _vm = StateObject(wrappedValue: DependencyInjectionViewModel(dataService: dataService))
    }
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(vm.dataArray) { post in
                    Text(post.title)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
//    static let dataService = ProductionDataService(url: URL(string: "https://jsonplaceholder.typicode.com/posts")!)
//    static let dataService = MockDataService(data: nil)
    static let dataService = MockDataService(data: [
        PostModel(userId: 1, id: 1, title: "One", body: "one"),
        PostModel(userId: 3, id: 3, title: "Three", body: "three"),
        PostModel(userId: 5, id: 5, title: "Five", body: "Five")
    ])
    
    static var previews: some View {
        ContentView(dataService: dataService)
    }
}
