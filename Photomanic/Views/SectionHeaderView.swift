//
//  SectionHeaderView.swift
//  Photomanic
//
//  Created by Trương Quang on 7/16/19.
//  Copyright © 2019 truongquang. All rights reserved.
//

import UIKit

class SectionHeaderView: UICollectionReusableView {
        
    @IBOutlet weak var categoryTitleLabel: UILabel!
    @IBOutlet weak var categoryImageView: UIImageView!
    
    var photoCategory: PhotoCategory! {
        didSet {
            categoryTitleLabel.text = photoCategory.title
            categoryImageView.image = UIImage(named: "\(photoCategory.categoryImageName).jpg")
        }
    }
}
