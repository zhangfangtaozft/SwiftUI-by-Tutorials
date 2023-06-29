//
//  ContentView.swift
//  PickerBootcamp
//
//  Created by 张芳涛 on 2023/6/30.
//

import SwiftUI

struct ContentView: View {
    
    @State var selection: String = "Most Recent"
    let filterOptiona: [String] = [
        "Most Recent",
        "Most Popular",
        "Most like"
    ]
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
        let attributes: [NSAttributedString.Key : Any] = [
            .foregroundColor : UIColor.white

        ]
//
//        UISegmentedControl.appearance().backgroundColor = UIColor.green
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    var body: some View {
        Picker(selection: $selection) {
            ForEach(filterOptiona.indices) { index in
                Text(filterOptiona[index])
                    .tag(filterOptiona[index])
            }
        } label: {
            Text("Picker")
        }
        .pickerStyle(.segmented)

        
        
//        VStack {
            
//            HStack {
//                Text("Filter:")
//                Text(selection)
//            }
//            .font(.headline)
//            .foregroundColor(.white)
//            .padding()
//            .padding(.horizontal)
//            .background(.blue)
//            .cornerRadius(10)
//            .shadow(color: Color.blue.opacity(0.3), radius: 10, x: 0, y: 10)
//
//            Picker(selection: $selection) {
//                ForEach(filterOptiona, id: \.self) { option in
//                    HStack {
//                        Text(option)
//                        Image(systemName: "heart.fill")
//                    }
//                    .tag(option)
//                }
                
                
//                ForEach(18..<100) { number in
//                    Text("\(number)")
//
//                        .tag("\(number)")
//                }
//                Text("1").tag("1")
//                Text("2").tag("2")
//                Text("3").tag("3")
//                Text("4").tag("4")
//                Text("5").tag("5")
//            } label: {
//                Text("Picker")
//            }
//            .pickerStyle(.menu)
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
