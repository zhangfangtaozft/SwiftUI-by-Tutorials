//
//  ContentView.swift
//  AdvancedCombineBootcamp
//
//  Created by 张芳涛 on 2023/7/13.
//

import SwiftUI
import Combine

class AdvancedCombineDataService {
    
//    @Published var basicPublisher: String = "First Publish"
    
//    let currentValuePublisher = CurrentValueSubject<Int, Error>("First Publish")
    let passThroughPublisher = PassthroughSubject<Int, Error>()
    let boolPublisher = PassthroughSubject<Bool, Error>()
    let initPublisher = PassthroughSubject<Int, Error>()
    
    init() {
       publishFakeData()
    }
    
    private func publishFakeData() {
        let items: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
//        DispatchQueue.main.asyncAfter(deadline: .now() + 0) {
//            self.passThroughPublisher.send(1)
//        }
//
//        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
//            self.passThroughPublisher.send(2)
//        }
//
//        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
//            self.passThroughPublisher.send(3)
//        }
        for x in items.indices {
            DispatchQueue.main.asyncAfter(deadline: .now() + Double(x)) {
                self.passThroughPublisher.send(items[x])
                
                if (x > 4 && x < 8) {
                    self.boolPublisher.send(true)
                    self.initPublisher.send(999)
                } else {
                    self.boolPublisher.send(false)
                }
                
                if x == items.indices.last {
                    self.passThroughPublisher.send(completion: .finished)
                }
            }
        }
    }
}

class AdvancedCombineBootcampViewModel: ObservableObject {
    @Published var data: [String] = []
    @Published var dataBools: [Bool] = []
    @Published var error: String = ""
    let dataService = AdvancedCombineDataService()
    var cancellables = Set<AnyCancellable>()
    let multiCastPbulisher = PassthroughSubject<Int, Error>()
    
    init() {
        addSubscribers()
    }
    
    private func addSubscribers() {
//        dataService.passThroughPublisher
        // Sequence Operations
        /*
//            .tryFirst(where: { int in
//                if int == 3 {
//                    throw URLError(.badServerResponse)
//                }
//                return int > 1
//            })
//            .tryLast(where: { int in
//                if int == 13 {
//                    throw URLError(.badServerResponse)
//                }
//                return int > 1
//            })
//            .dropFirst(3)
//            .drop(while: { $0 < 5 })
//            .tryDrop(while: { int in
//                if int == 15 {
//                    throw URLError(.badServerResponse)
//                }
//                return int < 6
//            })
        
//            .prefix(4)
//            .prefix(while: { $0 < 5 })
//            .output(at: 1)
//            .output(in: 2..<4)
        
   */
        // Mathmatic operation
        /*
//            .max()
//            .max(by: { int1, int2 in
//                return int1 < int2
//            })
//            .min()
            
//            .map({ String($0) })
//            .tryMap({ int in
//                if int == 5 {
//                    throw URLError(.badServerResponse)
//                }
//                return String(int)
//            })
//            .compactMap({ int in
//                if int == 5 {
//                    return nil
//                }
//                return "\(int)"
//            })
         */
        // Filter / Reducing Operations
        /*
//            .filter({ ($0 > 3) && ($0 < 7) })
//            .removeDuplicates()
//            .removeDuplicates(by: { int1, int2 in
//                return int1 == int2
//            })
//            .replaceNil(with: 100)
        
//            .replaceEmpty(with: [100])
//            .tryMap({ int in
//                if int == 5 {
//                    throw URLError(.badServerResponse)
//                }
//                return String(int)
//            })
//            .replaceError(with: "DEFAULT ERROR")
//            .scan(0, { existingValue, newValue in
//                return existingValue + newValue
//            })
//            .scan(0, { $0 + $1 })
//            .scan(0, +)
//            .reduce(0, { existongValue, newValue in
//                return existongValue + newValue
//            })
//            .reduce(0, +)

//            .map({ String($0) })
//            .collect()
//            .collect(3)
        
//            .allSatisfy({ $0 < 50 })
//            .tryAllSatisfy()
        */
        
        // Timing Operations
        /*
//            .debounce(for: 0.75, scheduler: DispatchQueue.main)
        
//            .delay(for: 2, scheduler: DispatchQueue.main)
//            .measureInterval(using: DispatchQueue.main)
//            .map({ stride in
//                return "\(stride.timeInterval)"
//            })
        
//            .throttle(for: 5, scheduler: DispatchQueue.main, latest: false)
//            .retry(3)
//            .timeout(0.75, scheduler: DispatchQueue.main)
         */
        // Multiple publishers / Subscribers
        /*
//            .combineLatest(dataService.boolPublisher, dataService.initPublisher)
//            .compactMap({ (int, bool) in
//                if bool {
//                    return String(int)
//                }
//                return nil
//            })
//            .compactMap({ $1 ? String($0) : "n/a" })
        
//            .removeDuplicates()
//            .map({ String($0) })
//            .compactMap({ (int1, bool, int2) in
//                if bool {
//                    return String(int1)
//                }
//                return "n/a"
//            })
//            .merge(with: dataService.initPublisher)
//            .zip(dataService.boolPublisher, dataService.initPublisher)
//            .map({ tuple in
//                return String(tuple.0) + tuple.1.description + String(tuple.2)
//            })
//            .tryMap({ int in
//                if int == 5 {
//                    throw URLError(.badServerResponse)
//                }
//                return int
//            })
//            .catch({ error in
//                return self.dataService.initPublisher
//            })
         */
        
        let sharedPublisher = dataService.passThroughPublisher
//            .dropFirst(3)
            .share()
//            .multicast {
//                PassthroughSubject<Int, Error>()
//
//            }
            .multicast(subject: multiCastPbulisher)
        
        dataService.passThroughPublisher
            .map({ String($0) })
            .sink { completion in
                switch completion {
                case .finished:
                    break
                case .failure(let error):
                    self.error = "ERROR: \(error.localizedDescription)"
                }
            } receiveValue: { [weak self] returnedValue in
                self?.data.append(returnedValue)
            }
            .store(in: &cancellables)
        
        dataService.passThroughPublisher
            .map({ $0 > 5 ? true : false })
            .sink { completion in
                switch completion {
                case .finished:
                    break
                case .failure(let error):
                    self.error = "ERROR: \(error.localizedDescription)"
                }
            } receiveValue: { [weak self] returnedValue in
                self?.dataBools.append(returnedValue)
            }
            .store(in: &cancellables)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            sharedPublisher
                .connect()
                .store(in: &self.cancellables)
        }
    }
    
}

struct ContentView: View {
    
    @StateObject private var vm = AdvancedCombineBootcampViewModel()
    
    var body: some View {
        ScrollView {
            HStack {
                VStack {
                    ForEach(vm.data, id: \.self) {
                        Text($0)
                            .font(.largeTitle)
                            .fontWeight(.black)
                    }
                    if !vm.error.isEmpty {
                        Text(vm.error)
                    }
                }
                
                VStack {
                    ForEach(vm.dataBools, id: \.self) {
                        Text($0.description)
                            .font(.largeTitle)
                            .fontWeight(.black)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
