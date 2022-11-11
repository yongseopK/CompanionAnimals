//
//  DescriptionViewController.swift
//  CompanionAnimals
//
//  Created by yongseopKim on 2022/11/11.
//

import UIKit

class DescriptionViewController: UIViewController {
    
    //MARK: - Properties
    var animalInfo: AnimalInfo!
    
    //MARK: - IBOutlets
    @IBOutlet weak var animalImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = self.animalInfo.name
        self.animalImageView.image = UIImage(named: self.animalInfo.imageName)
        self.nameLabel.text = self.animalInfo.name
        self.descriptionTextView.text = self.animalInfo.animalDescription
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
