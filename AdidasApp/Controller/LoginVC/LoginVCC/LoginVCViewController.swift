//
//  LoginVCViewController.swift
//  AdidasApp
//
//  Created by Thanh Nguyên Trần on 08/12/2021.
//

import UIKit
import ProgressHUD
import Firebase

class LoginVCViewController: UIViewController {

    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        errorLabel.isHidden = true
    }

    @IBAction func loginButtonDidTap(_ sender: Any) {
        ProgressHUD.show()
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) { authResult, error in
            if error != nil{
                self.errorLabel.isHidden = false
                self.errorLabel.textColor = .red
                self.errorLabel.text = error?.localizedDescription
            }else{
               
                    let vc = MainTabbarViewController()
                    self.navigationController?.pushViewController(vc, animated: true)
                
            }
        }
        ProgressHUD.dismiss()
    }
    
    

}
