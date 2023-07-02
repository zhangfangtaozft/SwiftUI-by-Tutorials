//
//  FruitViewModel.swift
//  ViewModelBootcamp
//
//  Created by 张芳涛 on 2023/7/3.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

class FruitViewModel: ObservableObject {
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init() {
        getFruit()
    }
    func getFruit() {
        isLoading = true
        let fruit0 =  FruitModel(name: "Apples", count: 5)
        let fruit1 = FruitModel(name: "Orange", count: 1)
        let fruit2 = FruitModel(name: "banana", count: 2)
        let fruit3 = FruitModel(name: "Watermelon", count: 88)
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) { [self] in
            self.fruitArray.append(contentsOf: [fruit0, fruit1, fruit2, fruit3])
            self.isLoading = false
        }
    }
    
    func deleteFruit(indexSet: IndexSet) {
        fruitArray.remove(atOffsets: indexSet)
    }
}
