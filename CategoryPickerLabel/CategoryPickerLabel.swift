//
//  CategoryPickerLabel.swift
//  CategoryPickerLabel
//
//  Created by Brent Michalski on 1/16/19.
//  Copyright © 2019 Perlguy, Inc. All rights reserved.
//

import UIKit
import FontAwesome_swift

protocol CategoryPickerLabelDelegate {
    func setCategoryPickerBackgroundColor(_ categoryPickerLabelView: CategoryPickerLabel, color: UIColor)
    func setCategoryPickerLeadingImage(_ categoryPickerLabelView: CategoryPickerLabel, image: UIImage)
    func setCategoryPickerTrailingImage(_ categoryPickerLabelView: CategoryPickerLabel, image: UIImage)
    func setCategoryPickerLabelText(_ categoryPickerLabelView: CategoryPickerLabel, text: String)
    func setCategoryPickerLabelFont(_ categoryPickerLabelView: CategoryPickerLabel, font: UIFont)
}


@IBDesignable
public class CategoryPickerLabel: UIView {

    var delegate: CategoryPickerLabelDelegate?
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var leadingImageView: UIImageView!
    @IBOutlet weak var trailingImageView: UIImageView!
    @IBOutlet weak var categoryLabel: UILabel!
    
    @IBInspectable var containerBackgroundColor: UIColor? {
        didSet {
            containerView.backgroundColor = containerBackgroundColor
        }
    }
    
    @IBInspectable var labelText: String? {
        didSet {
            categoryLabel.text = labelText
        }
    }
    
    
    @IBOutlet var tapGestureRecognizer: UITapGestureRecognizer!
    
    @IBAction func viewTapped(_ sender: Any) {
        
    }
    
    
    let defaultImage: UIImage = UIImage.fontAwesomeIcon(name: .angrycreative, style: .regular, textColor: .black, size: CGSize(width: 40, height: 40))

    override public func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        
        leadingImageView.image  = defaultImage
        trailingImageView.image = defaultImage
        
    }
    
    
    override public func layoutSubviews() {
        super.layoutSubviews()
        
        containerView.backgroundColor = containerBackgroundColor
        categoryLabel.text            = labelText

        leadingImageView.image  = defaultImage
        trailingImageView.image = defaultImage
    }
    
    
}


