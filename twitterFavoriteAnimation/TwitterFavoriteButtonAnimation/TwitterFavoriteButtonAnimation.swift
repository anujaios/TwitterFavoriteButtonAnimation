//
//  TwitterFavoriteButtonAnimation.swift
//  twitterFavoriteAnimation
//
//  Created by Mac on 03/09/24.
//

import UIKit

class TwitterFavoriteButtonAnimation: UIView {
    
    var heartSpriteImagesArray : [UIImage] = []
    
    private let imageView : UIImageView = {
        let favoriteButton = UIImageView()
        favoriteButton.isUserInteractionEnabled = true
        favoriteButton.image = UIImage(named: "tile00")
        favoriteButton.translatesAutoresizingMaskIntoConstraints = false
        return favoriteButton
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        print("init called")
        configurationForImage()
    }
    
    required init?(coder: NSCoder) {
        print("required init called")
        super.init(coder: coder)
        configurationForImage()
    }
    
    private func configurationForImage(){
        addSubview(imageView)
        
        for item in 0..<29{
            heartSpriteImagesArray.append(UIImage(named: "tile0\(item)")!)
        }
        imageView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.animate)))
    }
    
    @objc private func animate(){
        print("animation called")
        imageView.animationImages = heartSpriteImagesArray
        imageView.animationDuration = 1.0
        imageView.animationRepeatCount = 1
        imageView.startAnimating()
    }
}


