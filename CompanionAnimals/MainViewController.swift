//
//  MainViewController.swift
//  CompanionAnimals
//
//  Created by yongseopKim on 2022/11/11.
//

import UIKit

class MainViewController: UIViewController {

    //MARK: - Nested Type
    private enum ButtonTag: Int {
        case dog = 101
        case cat, rabbit, hedgehog
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //MARK: Privates
    private func animalInfo(for tag: ButtonTag) -> AnimalInfo? {
        let assetName: String
        
        switch tag {
        case ButtonTag.dog:
            assetName = "Dog"
        case ButtonTag.cat:
            assetName = "Cat"
        case ButtonTag.rabbit:
            assetName = "Rabbit"
        case ButtonTag.hedgehog:
            assetName = "Hedgehog"
        }
        return AnimalInfo.decode(from: assetName)
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let button: UIButton = sender as? UIButton else { return }
        
        guard let nextViewController: DescriptionViewController = segue.destination as? DescriptionViewController else { return }
        
        guard let tag: ButtonTag = ButtonTag(rawValue: button.tag) else {
            print("버튼의 태그를 enum으로 변경불가")
            return
        }
        
        guard let info: AnimalInfo = self.animalInfo(for: tag) else { return }
        
        nextViewController.animalInfo = info
    }

}
