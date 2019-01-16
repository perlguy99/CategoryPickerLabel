//
//  CategoryPickerLabelView.swift
//  CategoryPickerLabel
//
//  Created by Brent Michalski on 1/16/19.
//  Copyright © 2019 Perlguy, Inc. All rights reserved.
//

import UIKit
import FontAwesome_swift

protocol CategoryPickerLabelViewDelegate {
    func setCategoryPickerBackgroundColor(_ categoryPickerLabelView: CategoryPickerLabelView, color: UIColor)
    func setCategoryPickerLeadingImage(_ categoryPickerLabelView: CategoryPickerLabelView, image: UIImage)
    func setCategoryPickerTrailingImage(_ categoryPickerLabelView: CategoryPickerLabelView, image: UIImage)
    func setCategoryPickerLabelText(_ categoryPickerLabelView: CategoryPickerLabelView, text: String)
    func setCategoryPickerLabelFont(_ categoryPickerLabelView: CategoryPickerLabelView, font: UIFont)
}


class CategoryPickerLabelView: UIView {

    var delegate: CategoryPickerLabelViewDelegate?
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var leadingImageView: UIImageView!
    @IBOutlet weak var trailingImageView: UIImageView!
    @IBOutlet weak var categoryLabel: UILabel!
    
    @IBOutlet var tapGestureRecognizer: UITapGestureRecognizer!
    
    
    @IBAction func viewTapped(_ sender: Any) {
        
        print("\nTapped!\n")
    }
    
    
    
}
