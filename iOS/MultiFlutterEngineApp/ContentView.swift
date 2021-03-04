//
//  ContentView.swift
//  MultiFlutterEngineApp
//
//  Created by Tatsuya Tanaka on 2021/03/04.
//

import SwiftUI

struct ContentView: View {
    private let entrypoints = ["main", "mainGreen", "mainPink", "mainYellow"]
    
    var body: some View {
        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())]) {
            ForEach(0..<5) { i in
                VStack {
                    Image(systemName: "swift")
                    Text("SwiftUI")
                }
                .frame(width: 100, height: 100)
                FlutterView(entrypoint: entrypoints[i % entrypoints.count])
                    .frame(width: 100, height: 100)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
