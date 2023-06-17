//
//  ContentView.swift
//  Shap
//
//  Created by 张芳涛 on 2023/6/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //        Circle()
        //            .fill(Color.blue)
        //            .foregroundColor(.red)
        //            .stroke(Color.yellow, lineWidth: 30.0)
        //            .stroke(Color.orange, style: StrokeStyle(lineWidth: 10,lineCap: .round,dash: [30]))
        //
        //            .frame(width: 200, height: 200, alignment: .leading)
        //
        //    }
//        Capsule(style: .circular)
//            .fill(Color.yellow)
//            .stroke(Color.blue, lineWidth: 30)
//            .frame(width: 200, height: 100)
//        Rectangle()
//            .frame(width: 200, height: 100)
        RoundedRectangle(cornerRadius: 50.0)
            .trim(from: 0.1, to: 1.0)
            .frame(width: 300, height: 100)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
