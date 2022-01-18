//
//  AnimalsScreenViewController.swift
//  AnimalsBook
//
//  Created by Esin Karan on 13.01.2022.
//

import UIKit

class AnimalsScreenViewController: UIViewController {

    
    @IBOutlet weak var animalImageView: UIImageView!
    @IBOutlet weak var animalLabel: UILabel!
    
//  Variables
    
    var animalImage = UIImage()
    var animalName = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animalImageView.image = animalImage
        animalLabel.text = animalName



    }
    

}
