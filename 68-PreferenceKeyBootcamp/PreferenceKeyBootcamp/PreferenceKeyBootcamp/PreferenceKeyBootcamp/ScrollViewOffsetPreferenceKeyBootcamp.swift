//
//  ScrollViewOffsetPreferenceKeyBootcamp.swift
//  PreferenceKeyBootcamp
//
//  Created by 张芳涛 on 2023/7/7.
//

import SwiftUI

struct ScrollviewOffSetPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    
    static func reduce(value: inout Value, nextValue: () -> Value) {
        value = nextValue()
    }
}

extension View {
    func onScrollViewOffsetChanged(action: @escaping (_ offset: CGFloat) -> Void) -> some View {
        self
            .background(
                GeometryReader(content: { geo in
                    Text("")
                        .preference(key: ScrollviewOffSetPreferenceKey.self, value: geo.frame(in: .global).minY)
                })
            )
            .onPreferenceChange(ScrollviewOffSetPreferenceKey.self) { value in
                action(value)
            }
    }
}


struct ScrollViewOffsetPreferenceKeyBootcamp: View {
    
    let title: String = "New title here!!!!"
    @State private var scrollViewOffset: CGFloat = 0
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    titleLayer
                        .opacity(Double(scrollViewOffset) / 63.0)
                        .onScrollViewOffsetChanged { offset in
                            self.scrollViewOffset = offset
                        }
                    contentLayer
                }
                .padding()
            }
            .overlay(Text("\(scrollViewOffset)"))
            .overlay(navBarlabel.opacity(scrollViewOffset < 40 ? 1.0 : 0.0), alignment: .top)
        }
    }
}

struct ScrollViewOffsetPreferenceKeyBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewOffsetPreferenceKeyBootcamp()
    }
}

extension ScrollViewOffsetPreferenceKeyBootcamp {
    private var titleLayer: some View {
        Text(title)
            .font(.largeTitle)
            .fontWeight(.semibold)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    private var contentLayer: some View {
        ForEach((0..<30)) { _ in
            RoundedRectangle(cornerRadius: 10)
                .fill(.red.opacity(0.3))
                .frame(width: 300, height: 200)
        }
    }
    
    private var navBarlabel: some View {
        Text(title)
        .font(.headline)
        .frame(maxWidth: .infinity)
        .frame(height: 55)
        .background(.blue)
    }
}
