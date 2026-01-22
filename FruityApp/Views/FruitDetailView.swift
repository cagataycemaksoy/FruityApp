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
        Text(fruit.name)
          .font(.largeTitle.bold())

        Text("Family: \(fruit.family)")
          .font(.subheadline.italic())
        
        Rectangle()
          .fill(.gray.opacity(0.5))
          .frame(height: 1)
          .padding(.bottom)
        
        Group {
          Text("Calories: \(fruit.nutritions.calories) kcal")
          Text("Fat: \(fruit.nutritions.fat.formatted()) g")
          Text("Carbonhydrates: \(fruit.nutritions.carbohydrates.formatted()) g")
          Text("Protein: \(fruit.nutritions.protein.formatted()) g")
        }
        .font(.title3)
        
        Spacer()
      }
      .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
      .padding(.horizontal)
    }
}

#Preview {
  let nutrition = Nutrition(calories: 120, fat: 3.5, sugar: 12.6, carbohydrates: 39.8, protein: 15)
  let fruit = Fruit(name: "Strawberry", id: 12, family: "Berry", order: "Berry", genus: "Berry", nutritions: nutrition)
    FruitDetailView(fruit: fruit)
}
