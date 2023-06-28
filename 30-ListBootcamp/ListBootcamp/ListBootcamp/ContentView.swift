//
//  ContentView.swift
//  ListBootcamp
//
//  Created by 张芳涛 on 2023/6/29.
//

import SwiftUI

struct ContentView: View {
    @State var fruits = [
    "apple",
    "orange",
    "banana",
    "peach"
    ]
    
    @State var veggies = [
        "tomato",
        "potato",
        "carrot"
    ]
    
    var body: some View {
        NavigationView {
            List {
                Section(header: HStack {
                    Text("Fruit Section")
                    Image(systemName: "flame.fill")
                }
                    .font(.title)
//                    .background(.cyan)
                    .foregroundColor(.orange)
                ) {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                            .font(.caption)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .background(.pink)
                            .padding(.vertical)
                    }
                    .onDelete (perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.brown)
                }
                Section(header: Text("Veggies Section")) {
                    ForEach(veggies, id: \.self) { veggie in
                        Text(veggie.capitalized)
                    }
                    .onDelete (perform: delete)
                    .onMove(perform: move)
                    
                }
            }
            .accentColor(.purple)
//            .listStyle(.insetGrouped)
            .navigationTitle("Grocery List")
            .navigationBarItems(
                leading: EditButton(),
                trailing: addButton
            )
        }
    }
    
    var addButton: some View {
        Button("Add", action: {
            add()
        })
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(source: IndexSet, destination: Int) {
        fruits.move(fromOffsets: source, toOffset: destination)
    }
    
    func add() {
        fruits.append("Coconut")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
