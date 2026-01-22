//
//  Nutrition.swift
//  FruityApp
//
//  Created by Cem Aksoy on 22.01.2026.
//

import Foundation

struct Nutrition: Codable, Hashable {
  var calories: Int
  var fat: Double
  var sugar: Double
  var carbohydrates: Double
  var protein: Double
}
