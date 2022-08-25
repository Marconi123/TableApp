//
//  Detailed meals VC.swift
//  TableApp
//
//  Created by Владислав on 25.08.22.
//

import UIKit

final class Detailed_meals_VC: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var imageViewDetail: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var ratingLbl: UILabel!
    @IBOutlet weak var priceLbl: UILabel!
    @IBOutlet weak var observeReviews: UIButton!
    // MARK: - Properties
    
    var meal: Meal?
    
    // MARK: - Lifycycle
    
    override func viewDidLoad() {
        updateUI(with: view.bounds.size)
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        updateUI(with: size)
    }
    
    // MARK: Functions
    
    func updateUI(with size: CGSize) {
        let isVertical = size.width < size.height
        stackView.axis = isVertical ? .vertical : .horizontal
        
        title = meal?.name
        imageViewDetail.image = meal?.image
        nameLbl.text = meal?.name
        ratingLbl.text = meal?.ratingBar
        priceLbl?.text = String(meal!.price) + " " + "BYN"
        
        let showReview = "Посмотреть отзывы (\(meal!.feedbacks.count))"
        observeReviews.setTitle(showReview, for: .normal)
        observeReviews.isEnabled = meal?.feedbacks.count != 0
    }
}
