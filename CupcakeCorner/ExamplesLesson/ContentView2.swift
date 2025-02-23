//
//  ContentView2.swift
//  CupcakeCorner
//
//  Created by Андрей Завадский on 20.02.2025.
//

import SwiftUI

struct ContentView2: View {
    @State private var results = [Result]()
    
    var body: some View {
        AsyncImage(url: URL(string: "https://hws.dev/img/logo.png")) { phase in
            if let image = phase.image {
                image
                    .resizable()
                    .scaledToFit()
            } else if phase.error != nil {
                Text("There was an error loading the image.")
            } else {
                ProgressView()
            }
        }
        .frame(width: 200, height: 200)
    }
    
    
    
    
}

#Preview {
    ContentView2()
}
