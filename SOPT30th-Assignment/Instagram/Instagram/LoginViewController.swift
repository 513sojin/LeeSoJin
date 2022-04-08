//
//  LoginViewController.swift
//  Instagram
//
//  Created by Sojin Lee on 2022/04/06.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var forgotPassword: UILabel!
    @IBOutlet weak var noAccount: UILabel!
    @IBOutlet weak var goToSignup: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configUI()
    }
    
    func configUI(){
        imageView.image = UIImage(named: "insta_logo")
        
        emailTextField.borderStyle = .roundedRect
         passwordTextField.borderStyle = .roundedRect
        //TODO : textField의 크기를 지정해주고 싶다 !
        
        forgotPassword.text = "비밀번호를 잊으셨나요?"
        forgotPassword.font = UIFont.systemFont(ofSize: 11, weight: .bold)
    }
    
    @IBAction func loginButtonClicked(_ sender: Any) {
        //TODO : sender에는 어떤 것이 들어가는지 공부하기 / 함수명은 어떤식으로 정하는지
        guard let nextViewController = self.storyboard?.instantiateViewController(withIdentifier: "SuccessViewController") as? SuccessViewController else { return }
        
        nextViewController.userName = emailTextField.text
        self.present(nextViewController, animated: true, completion: nil)
    }
    
    @IBAction func signupButtonTap(_ sender: Any) {
        guard let nextViewController = self.storyboard?.instantiateViewController(withIdentifier: "SignupFirstViewController") as? SignupFirstViewController else { return }
        self.navigationController?.pushViewController(nextViewController, animated: true)
    }
    
}
