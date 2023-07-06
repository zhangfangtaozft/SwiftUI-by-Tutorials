//
//  GeometryPerferenceKeyBootcamp.swift
//  PreferenceKeyBootcamp
//
//  Created by 张芳涛 on 2023/7/6.
//

import SwiftUI

struct GeometryPerferenceKeyBootcamp: View {
    @State private var rectSize: CGSize = .zero
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .frame(width: rectSize.width, height: rectSize.height)
                .background(.blue)
            Spacer()
            HStack {
                Rectangle()
                GeometryReader { geo in
                    Rectangle()
                        .updateRectangleGeoSize(geo.size)
                }
                Rectangle()
            }
            .frame(height: 55)
        }
        .onPreferenceChange(RectangleGeometrypreferenceKey.self) { value in
            self.rectSize = value
        }
    }
}

struct GeometryPerferenceKeyBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GeometryPerferenceKeyBootcamp()
    }
}

extension View {
    func updateRectangleGeoSize(_ size: CGSize) -> some View {
        preference(key: RectangleGeometrypreferenceKey.self, value: size)
    }
}

struct RectangleGeometrypreferenceKey: PreferenceKey {
    static var defaultValue: CGSize = .zero
    static func reduce(value: inout CGSize, nextValue: () -> CGSize) {
        value = nextValue()
    }
}
