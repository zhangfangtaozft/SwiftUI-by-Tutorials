//
//  ContentView.swift
//  MatchedGeometryEffectBootcamp
//
//  Created by 张芳涛 on 2023/7/5.
//

import SwiftUI

struct ContentView: View {
    @State private var isClicked: Bool = false
    @Namespace private var nameSpace
    var body: some View {
        VStack {
            if !isClicked {
//                RoundedRectangle(cornerRadius: 25.0)
                Circle()
                    .matchedGeometryEffect(id: "rectangle", in: nameSpace)
                    .frame(width: 100, height: 100)
                    
            }
            
            Spacer()
            
            if isClicked {
//                RoundedRectangle(cornerRadius: 25.0)
                Circle()
                    .matchedGeometryEffect(id: "rectangle", in: nameSpace)
                    .frame(width: 300, height: 200)
                    
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.red)
        .onTapGesture {
            withAnimation(.easeInOut) {
                isClicked.toggle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
//        ContentView()
        MatchgGeometryEffectExample2()
    }
}

struct MatchgGeometryEffectExample2: View {
    let categories: [String] = ["Home", "Popular", "Saved"]
    @State private var selected: String = ""
    @Namespace private var namespace2
    
    var body: some View {
        HStack {
            ForEach(categories, id: \.self) { category in
                ZStack(alignment: .bottom) {
                    if selected == category {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.red)
                            .matchedGeometryEffect(id: "category_background", in: namespace2)
                            .frame(width: 35, height: 2)
                            .offset(y: 10)
                    }
                    Text(category)
                        .foregroundColor(selected == category ? .red : .black)
                }
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .onTapGesture {
                    withAnimation(.spring()) {
                        selected = category
                    }
                }
            }
        }
        .padding()
    }
}
