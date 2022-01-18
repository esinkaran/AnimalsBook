//
//  ViewController.swift
//  AnimalsBook
//
//  Created by Esin Karan on 13.01.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    

    @IBOutlet weak var tableView: UITableView!
//    Variables

    var animals = [String]()
    var animalsImages = [UIImage]()
    var animalName = ""
    var animalImage = UIImage()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
       
        animals.append("Cat")
        animals.append("Dog")
        animals.append("Cow")
        animals.append("Rabbit")
        animals.append("Lion")
        animals.append("Monkey")
        animals.append("Bird")
        
        animalsImages.append(UIImage(named: "cat.jpeg")!)
        animalsImages.append(UIImage(named: "dog.jpeg")!)
        animalsImages.append(UIImage(named: "cow.jpeg")!)
        animalsImages.append(UIImage(named: "rabbit.jpeg")!)
        animalsImages.append(UIImage(named: "lion.jpeg")!)
        animalsImages.append(UIImage(named: "monkey.jpeg")!)
        animalsImages.append(UIImage(named: "bird.jpeg")!)


        
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            
            animals.remove(at: indexPath.row)
            animalsImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        animalName = animals[indexPath.row]
        animalImage = animalsImages[indexPath.row]
        performSegue(withIdentifier: "toAnimalScreenVC", sender: self)
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        
        
        cell.textLabel?.text = animals[indexPath.row]
        
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toAnimalScreenVC"{
            
            let destinationVC = segue.destination as? AnimalsScreenViewController
            
            destinationVC?.animalName = animalName
            destinationVC?.animalImage = animalImage
            
        }
    }
    
}

