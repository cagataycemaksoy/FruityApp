//
//  Fruit.swift
//  FruityApp
//
//  Created by Cem Aksoy on 22.01.2026.
//

import Foundation

struct Fruit: Codable, Hashable {
  var name: String
  var id: Int
  var family: String
  var order: String
  var genus: String
  var nutritions: Nutrition
}
