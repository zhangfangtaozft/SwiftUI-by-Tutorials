//
//  EnvironmentViewModel.swift
//  EnvironmentObjectBootcamp
//
//  Created by 张芳涛 on 2023/7/3.
//

import SwiftUI
class EnvironmentViewModel: ObservableObject {
    @Published var dataArray: [String] = []
    
    init() {
        getData()
    }
    
    func getData() {
        self.dataArray.append(contentsOf: ["iPhone", "iPad", "iMac", "Apple Watch"])
    }
}
