//
//  PhotoCell.swift
//  Photomanic
//
//  Created by Trương Quang on 7/16/19.
//  Copyright © 2019 truongquang. All rights reserved.
//

import UIKit

protocol PhotoCellDelegate: class {
    func delete(cell: PhotoCell)
}

class PhotoCell: UICollectionViewCell {
    
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var deleteButtonBackgroundView: UIVisualEffectView!
    
    weak var delegate: PhotoCellDelegate?
    
    var imageName: String! {
        didSet {
            photoImageView.image = UIImage(named: imageName)
            deleteButtonBackgroundView.layer.cornerRadius = deleteButtonBackgroundView.bounds.width / 2.0
            deleteButtonBackgroundView.layer.masksToBounds = true
            deleteButtonBackgroundView.isHidden = !isEditing
        }
    }
    var isEditing: Bool = false {
        didSet {
            deleteButtonBackgroundView.isHidden = !isEditing
        }
    }
    
    @IBAction func deleteButtonDidTap(_ sender: Any) {
        delegate?.delete(cell: self)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
//        deleteButtonBackgroundView.isHidden = !isEditing
    }
    
}



