//
//  DetailViewController.swift
//  Photomanic
//
//  Created by Trương Quang on 7/16/19.
//  Copyright © 2019 truongquang. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    var image: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = image
        navigationItem.title = "Photo"
    }
    
    
}
