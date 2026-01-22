//
//  FruitDetailView.swift
//  FruityApp
//
//  Created by Cem Aksoy on 22.01.2026.
//

import SwiftUI

struct FruitDetailView: View {
  let fruit: Fruit
  
    var body: some View {
      VStack(alignment: .leading) {
        
      }
    }
}

#Preview {
  let nutrition = Nutrition(calories: 120, fat: 3.5, sugar: 12.6, carbohydrates: 39.8, protein: 15)
  let fruit = Fruit(name: "Strawberry", id: 12, family: "Berry", order: "Berry", genus: "Berry", nutritions: nutrition)
    FruitDetailView(fruit: fruit)
}
