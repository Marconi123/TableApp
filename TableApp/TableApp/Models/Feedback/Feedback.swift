//
//  Feedback.swift
//  TableApp
//
//  Created by Владислав on 24.08.22.
//

import UIKit

struct Feedback {
    private let date = Date()
    
    let text: String
    let mark: Double
    
    var ratingBar:  String {
        String(repeating: "⭐️", count: Int(mark.rounded(.up)))
    }

    var dateString: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .short
        dateFormatter.locale = Locale(identifier: "ru_Ru")
        return dateFormatter.string(from: date)
    }
}
