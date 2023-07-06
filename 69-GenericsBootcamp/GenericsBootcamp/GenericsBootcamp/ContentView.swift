//
//  ContentView.swift
//  GenericsBootcamp
//
//  Created by 张芳涛 on 2023/7/6.
//

import SwiftUI

struct StringModel {
    
    let info: String?
    
    func removeInfo() -> StringModel {
        StringModel(info: nil)
    }
}

struct BoolModel {
    
    let info: Bool?
    func removeInfo() -> BoolModel {
        BoolModel(info: nil)
    }
}


struct GenericModel<T> {
    let info: T?
    func removeinfo() -> GenericModel {
        GenericModel(info: nil)
    }
}
class GenericsviewModel: ObservableObject {
    
    @Published var stringModel = StringModel(info: "---Hello world---")
    @Published var boolModel = BoolModel(info: true)
    @Published var genericStringModel = GenericModel(info: "Hwllo world genericModel!")
    @Published var genericBoolModel = GenericModel(info: true)
    
    func removeData() {
        stringModel = stringModel.removeInfo()
        boolModel = boolModel.removeInfo()
        genericStringModel = genericStringModel.removeinfo()
        genericBoolModel = genericBoolModel.removeinfo()
    }
}


struct GenericView<T: View>: View {
    let content: T
    let title: String
    
    var body: some View {
        VStack {
            Text(title)
            content
        }
    }
}

struct ContentView: View {
    
    @StateObject private var vm = GenericsviewModel()
    
    var body: some View {
        VStack {
            GenericView(content: Text("Custom content"), title: "New View!")
            Text(vm.stringModel.info ?? "no data")
            Text(vm.boolModel.info?.description ?? "no data!!!")
            Text(vm.genericStringModel.info?.description ?? "no data!")
            Text(vm.genericBoolModel.info?.description ?? "no data!!!")
        }
        .onTapGesture {
            vm.removeData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
