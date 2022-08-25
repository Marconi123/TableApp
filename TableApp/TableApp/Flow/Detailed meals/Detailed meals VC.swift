//
//  Detailed meals VC.swift
//  TableApp
//
//  Created by Владислав on 25.08.22.
//

import UIKit

final class Detailed_meals_VC: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var imageViewDetail: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var ratingLbl: UILabel!
    @IBOutlet weak var priceLbl: UILabel!
    @IBOutlet weak var openReviews: UIButton!
    @IBOutlet weak var observeReviews: UIButton!
    // MARK: - Properties
    
    var meal: Meal?
    
    // MARK: - Lifycycle
    
    override func viewDidLoad() {
        setupUI()
    }
    
    // MARK: Functions
    
    func setupUI() {
        imageViewDetail.image = meal?.image
        nameLbl.text = meal?.name
        ratingLbl.text = meal?.ratingBar
        priceLbl?.text = String(meal!.price) + " " + "BYN"
    }
}
