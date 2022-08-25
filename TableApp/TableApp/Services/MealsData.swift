//
//  DataManager.swift
//  TableApp
//
//  Created by Владислав on 24.08.22.
//

import UIKit

final class MealsData {
    
    var meals: [Meal]
    
    static let shared = MealsData()
    
    // MARK: - Lifecycle
    
    private init() {
        
        meals = [Meal(name: "Potato", price: 3.08, image:#imageLiteral(resourceName: "depositphotos_3120651-stock-photo-potatoes.jpeg")), Meal(name: "Burger", price: 5.01, image:#imageLiteral(resourceName: "1563632148_burger-kak-v-zakusochnoj-smehshburger.jpeg"))]
    }
}
