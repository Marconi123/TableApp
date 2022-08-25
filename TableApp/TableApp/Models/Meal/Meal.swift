//
//  Models.swift
//  TableApp
//
//  Created by Владислав on 24.08.22.
//

import UIKit

struct Meal {
    let name: String
    let price: Double
    let image: UIImage?

    var feedbacks: [Feedback] = []

    var ratingBar: String {
        if let rating = rating {
            return String(repeating: "⭐️", count: Int(rating.rounded(.up)))
        } else {
            return "There are no reviews yet"
        }
}

        // MARK: - Private

        private var rating: Double? {
            if feedbacks.isEmpty {
                return nil
            } else {
                var sum: Double = 0
                for review in feedbacks {
                    sum += review.mark
                }
                return sum / Double(feedbacks.count)
            }
        }
    }
