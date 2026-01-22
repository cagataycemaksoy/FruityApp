//
//  FruitsGridView.swift
//  FruityApp
//
//  Created by Cem Aksoy on 18.01.2026.
//

import SwiftUI

struct FruitsGridView: View {
  @State private var fruits = Fruits()
  
  var body: some View {
    NavigationStack {
      ScrollView {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 105), spacing: 12)], spacing: 10) {
          ForEach(fruits.fruits, id: \.self) { fruit in
            NavigationLink {
              Text(fruit.name)
            } label: {
              ZStack{
                RoundedRectangle(cornerRadius: 15)
                  .fill(Color("background2"))
                
                Text(fruit.name)
                  .font(.title3.bold())
                  .foregroundStyle(.black)
                  .frame(maxWidth: .infinity, maxHeight: .infinity)
                  .overlay(alignment: .bottomTrailing) {
                    Image(systemName: "chevron.right")
                      .foregroundStyle(.black.opacity(0.2))
                      .padding(6)
                  }
              }
              .frame(minHeight: 130)
            }
            
          }
        }
      }
      .padding()
      .navigationTitle("Fruits")
      .task {
        await fruits.getData()
      }
    }
  }
}

#Preview {
    FruitsGridView()
}
