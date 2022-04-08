//
//  SignupSecondViewController.swift
//  Instagram
//
//  Created by Sojin Lee on 2022/04/07.
//

import UIKit

class SignupSecondViewController: UIViewController {
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var noticeLabel: UILabel!
    @IBOutlet weak var passwordTextField: UITextField!
    var userName : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
       configUI()
        self.passwordTextField.addTarget(self, action: #selector(self.passwordTextFieldDidChange(_:)), for: .editingChanged)
    }
    
    func configUI(){
        noticeLabel.text = "비밀번호를 저장할 수 있으므로 iCloud 기기에서 로그인 \n정보를 입력하지 않아도 됩니다."
        nextButton.isEnabled = false
    }
    
    @IBAction func nextButtonTap(_ sender: Any) {
        guard let nextViewController = self.storyboard?.instantiateViewController(withIdentifier: "SuccessViewController") as? SuccessViewController else { return }
        
        nextViewController.userName = userName
        self.present(nextViewController, animated: true, completion: nil)
    }

    @objc func passwordTextFieldDidChange(_ sender: Any?) {
        nextButton.isEnabled = true
    }
}
