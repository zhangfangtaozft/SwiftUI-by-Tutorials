//
//  ContentView.swift
//  FutureBootcamp
//
//  Created by 张芳涛 on 2023/7/14.
//

import SwiftUI
import Combine

// download with Combine
// download with @escaping closure
// convert @escaping closure to Combine

class FuturesBootcampViewModel: ObservableObject {
    @Published var title: String = "Starting title"
    let url = URL(string: "https://www.bing.com/")!
    var cancellables = Set<AnyCancellable>()
    
    init() {
       download()
    }
    
    func download() {
//        getCombinePublisher()
//            .sink { _ in
//
//            } receiveValue: { [weak self] returnedValue in
//                self?.title = returnedValue
//            }
//            .store(in: &cancellables)
        
//        getEscapnigClosure { [weak self] returnedValue, error in
//            self?.title = returnedValue
//        }
        getFuturePublisher()
            .sink { _ in
                
            } receiveValue: { [weak self] returnedValue in
                self?.title = returnedValue
            }
            .store(in: &cancellables)

        
    }
    
    func getCombinePublisher() -> AnyPublisher<String, URLError> {
        URLSession.shared.dataTaskPublisher(for: url)
            .timeout(1, scheduler: DispatchQueue.main)
            .map({ _ in
                return "New value"
            })
            .eraseToAnyPublisher()
    }
    
    func getEscapnigClosure(completionHandler: @escaping (_ value: String, _ error: Error?) -> ()) {
        URLSession.shared.dataTask(with: url) { data, response, error in
            completionHandler("New Value 2", nil)
        }
        .resume()
    }
    
    func getFuturePublisher() -> Future<String, Error> {
        return Future { promise in
            self.getEscapnigClosure { returnedValue, error in
                if let error = error {
                    promise(.failure(error))
                } else {
                    promise(.success(returnedValue))
                }
            }
        }
    }
    
    func doSomething(completion: @escaping (_ value: String) -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
            completion("NEW STRING")
        }
    }
    
    func doSomethinginTheFuture() -> Future<String, Never> {
        Future { promise in
            self.doSomething { value in
                promise(.success(value))
            }
        }
    }
}

struct ContentView: View {
    @StateObject private var vm = FuturesBootcampViewModel()
    var body: some View {
        Text(vm.title)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
