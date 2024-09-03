//
//  ViewController.swift
//  twitterFavoriteAnimation
//
//  Created by Mac on 30/08/24.
//

import UIKit

class ViewController: UIViewController {
    
    private let heartTwitterImage = TwitterFavoriteButtonAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(heartTwitterImage)
        heartTwitterImage.heightAnchor.constraint(equalToConstant: 75).isActive = true
        heartTwitterImage.widthAnchor.constraint(equalToConstant: 75).isActive = true
        heartTwitterImage.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        heartTwitterImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        heartTwitterImage.translatesAutoresizingMaskIntoConstraints = false
       
    }
    
    

}

