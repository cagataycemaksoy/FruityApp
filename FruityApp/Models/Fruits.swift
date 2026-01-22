//
//  Fruits.swift
//  FruityApp
//
//  Created by Cem Aksoy on 18.01.2026.
//

import Foundation

@Observable
class Fruits {
  
  let urlString = "https://www.fruityvice.com/api/fruit/all"
  var fruits: [Fruit] = []
  
  func getData() async {
    guard let url = URL(string: urlString) else {
      print("Failed to convert the string to URL!")
      return
    }
    do {
      let (data, _) = try await URLSession.shared.data(from: url)
      guard let fruits = try? JSONDecoder().decode([Fruit].self, from: data) else {
        print("Failed to decode the response data.")
        return
      }
      self.fruits = fruits
    } catch {
      print("Failed to fetch the data.")
    }
  }
}
