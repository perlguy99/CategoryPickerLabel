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


@IBDesignable
class CategoryPickerLabelView: UIView {

    var delegate: CategoryPickerLabelViewDelegate?
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var leadingImageView: UIImageView!
    @IBOutlet weak var trailingImageView: UIImageView!
    @IBOutlet weak var categoryLabel: UILabel!
    
    @IBInspectable var containerBackgroundColor: UIColor! {
        didSet {
            containerView.backgroundColor = containerBackgroundColor
        }
    }
    
    @IBInspectable var labelText: String! {
        didSet {
            categoryLabel.text = labelText
        }
    }
    
    
    @IBOutlet var tapGestureRecognizer: UITapGestureRecognizer!
    
    
    @IBAction func viewTapped(_ sender: Any) {
        
        print("\nTapped!\n")
    }
    
    
    let defaultImage: UIImage = UIImage.fontAwesomeIcon(name: .angrycreative, style: .regular, textColor: .black, size: CGSize(width: 40, height: 40))

    
    
}



extension CategoryPickerLabelView {
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        
        leadingImageView.image  = defaultImage
        trailingImageView.image = defaultImage
        
    }
    
}
