//
//  ContentView.swift
//  FruityApp
//
//  Created by Cem Aksoy on 18.01.2026.
//

import SwiftUI

struct ContentView: View {
  @State private var fruits = Fruits()
  
    var body: some View {
      NavigationStack {
        List(fruits.fruits, id: \.self) { fruit in
          Text(fruit.name)
        }
        .listStyle(.plain)
        .navigationTitle("Fruits")
        .task {
          await fruits.getData()
        }
      }
    }
}

#Preview {
    ContentView()
}
