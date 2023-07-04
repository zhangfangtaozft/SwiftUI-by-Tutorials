//
//  ContentView.swift
//  AnyTransitionBootcamp
//
//  Created by 张芳涛 on 2023/7/5.
//

import SwiftUI

struct RotateViewModifier: ViewModifier {
    let rotation: Double
    
    func body(content: Content) -> some View {
        content
            .rotationEffect(Angle(degrees: rotation))
            .offset(
                x: rotation != 0 ? UIScreen.main.bounds.width : 0,
                y: rotation != 0 ? UIScreen.main.bounds.height : 0
            )
    }
}

extension AnyTransition {
    static var rotating: AnyTransition {
        return AnyTransition.modifier(
            active: RotateViewModifier(rotation: 180),
            identity: RotateViewModifier(rotation: 0))
    }
    
    static func rotating(rotation: Double) -> AnyTransition {
        return AnyTransition.modifier(
            active: RotateViewModifier(rotation: rotation),
            identity: RotateViewModifier(rotation: 0))
    }
    
    static var rotateOn: AnyTransition {
        return AnyTransition.asymmetric(insertion: .rotating, removal: .move(edge: .leading))
    }
}

struct ContentView: View {
    @State private var showRectangle: Bool = false
    
    var body: some View {
        VStack {
            Spacer()
            if showRectangle {
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 250, height: 350)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .transition(.rotateOn)
//                    .transition(.rotating(rotation: 1080))
//                    .transition(AnyTransition.rotating.animation(.easeInOut))
            }
            
            Spacer()
            
            Text("Click Me")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(10)
                .onTapGesture {
                    withAnimation(.easeInOut) {
                        showRectangle.toggle()
                    }
                }
            
                .padding(.horizontal, 40)
                
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
