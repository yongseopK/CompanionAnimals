//
//  MakerViewController.swift
//  CompanionAnimals
//
//  Created by yongseopKim on 2022/11/11.
//

import UIKit

class MakerViewController: UIViewController {

    @IBOutlet weak var descriptionTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.descriptionTextView.text = """
        안녕하세요 김용섭입니다. 제 에플리케이션을 이용해주셔서 감사합니다.
        제 이메일 주소는 kk0@kakao.com입니다.
        안녕~
        """
    }
    
    @IBAction func touchUpInsideDismissButton(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
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
