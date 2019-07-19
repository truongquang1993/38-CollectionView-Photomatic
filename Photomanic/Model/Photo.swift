//
//  Photo.swift
//  Photomanic
//
//  Created by Trương Quang on 7/16/19.
//  Copyright © 2019 truongquang. All rights reserved.
//

import Foundation

struct PhotoCategory {
    var categoryImageName: String
    var title: String
    var imageNames: [String]
    
//    func getPhotoCategoryDetail() -> String {
//        return ""
//    }
}

//let category = PhotoCategory(..)
//category.getPhotocategory..()

class PhotosLibrary {
    class func fetchPhotos() -> [PhotoCategory] {
        var categories = [PhotoCategory]()
        let photosData = PhotosLibrary.downloadPhotosData()
        print("\(photosData)\n\n")
        
        for (categoryTitle, dict) in photosData {
            if let dict = dict as? [String : Any] {
                
                print(dict)
                print(categoryTitle)
                
                let categoryImageName = dict["categoryImageName"] as! String
                if let imageNames = dict["imageNames"] as? [String] {
                    let newCategory = PhotoCategory(categoryImageName: categoryImageName, title: categoryTitle, imageNames: imageNames)
                    print(newCategory)
                    categories.append(newCategory)
                }
            }
        }
        return categories
    }
    
    class func downloadPhotosData() -> [String : Any] {
        return [
            "Travels" : [
                "categoryImageName" : "travels",
                "imageNames" : PhotosLibrary.generateImage(categoryPrefix: "travel-", numberOfImages: 26),
            ],
            "Girls" : [
                "categoryImageName" : "girls",
                "imageNames" : PhotosLibrary.generateImage(categoryPrefix: "girl-", numberOfImages: 20),
            ],
            "Foods" : [
                "categoryImageName" : "foods",
                "imageNames" : PhotosLibrary.generateImage(categoryPrefix: "food-", numberOfImages: 21),
            ]
        ]
    }
    
    private class func generateImage(categoryPrefix: String, numberOfImages: Int) -> [String] {
        var imageNames = [String]()
        for i in 1...numberOfImages {
            imageNames.append("\(categoryPrefix)\(i).jpg")
        }
        return imageNames
    }
}
