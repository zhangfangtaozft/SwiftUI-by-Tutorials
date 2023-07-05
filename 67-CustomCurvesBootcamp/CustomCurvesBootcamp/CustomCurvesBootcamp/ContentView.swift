//
//  ContentView.swift
//  CustomCurvesBootcamp
//
//  Created by 张芳涛 on 2023/7/5.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
//            ArcSample()
//            ShapeWithArc()
//            Quadsample()
            WaterShap()
                .fill(LinearGradient(gradient: Gradient(colors: [.red, .yellow, .blue]), startPoint: .topLeading, endPoint: .bottomTrailing))
                .ignoresSafeArea()
//                .frame(width: 200, height: 200)
//                .rotationEffect(Angle(degrees: 90))
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ArcSample: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: rect.midX, y: rect.midY))
            path.addArc(
                center: CGPoint(x: rect.midX, y: rect.midY),
                radius: rect.height / 2,
                startAngle: Angle(degrees: -20),
                endAngle: Angle(degrees: 20),
                clockwise: true)
        }
    }
}

struct ShapeWithArc: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            // top left
            path.move(to: CGPoint(x: rect.minX, y: rect.minY))
            // top right
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
            // mid right
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY))
            // bottom
//            path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY))
            path.addArc(
                center: CGPoint(x: rect.midX, y: rect.midY),
                radius: rect.height / 2,
                startAngle: Angle(degrees: 0),
                endAngle: Angle(degrees: 180),
                clockwise: false)
            
            // mid left
            path.addLine(to: CGPoint(x: rect.minX, y: rect.midY))
        }
    }
}

struct Quadsample: Shape {
    func path(in rect: CGRect) -> Path {
        Path {path in
            path.move(to: .zero)
            path.addQuadCurve(
                to: CGPoint(x: rect.midX, y: rect.midY),
                control: CGPoint(x: rect.maxX - 50, y: rect.minY - 100))
        }
    }
}

struct WaterShap: Shape {
    func path(in rect: CGRect) -> Path {
        Path {path in
            path.move(to: CGPoint(x: rect.minX, y: rect.midY))
            
            path.addQuadCurve(
                to: CGPoint(x: rect.midX, y: rect.midY),
                control: CGPoint(x: rect.width * 0.25, y: rect.height * 0.40))
            
            path.addQuadCurve(
                to: CGPoint(x: rect.maxX, y: rect.midY),
                control: CGPoint(x: rect.width * 0.75, y: rect.height * 0.60))
            
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        }
    }
}
