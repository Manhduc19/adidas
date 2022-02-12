//
//  LoginViewController.swift
//  AdidasApp
//
//  Created by Thanh Nguyên Trần on 04/12/2021.
//

import UIKit
import Firebase
import ProgressHUD

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func LoginButtonDidTap(_ sender: Any) {
        let vc = LoginVCViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func RegisterButtonDidTap(_ sender: Any) {
        let vc = RegisterViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
}
