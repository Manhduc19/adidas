//
//  ChangePasswordViewController.swift
//  AdidasApp
//
//  Created by Thanh Nguyên Trần on 08/12/2021.
//

import UIKit
import Firebase
import ProgressHUD

class ChangePasswordViewController: UIViewController {

    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var reNewPwTextField: UITextField!
    @IBOutlet weak var newPwTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        errorLabel.isHidden = true
       
    }


    
    @IBAction func saveButtonDidTap(_ sender: Any) {
        
        if newPwTextField.text! != reNewPwTextField.text!
        {
            errorLabel.isHidden = false
            errorLabel.text = "Please confirm password"
        }else{
            ProgressHUD.show()
            Auth.auth().currentUser?.updatePassword(to: newPwTextField.text!) { error in
              let vc = ProfileViewController()
                self.navigationController?.pushViewController(vc, animated: true)
            }
            ProgressHUD.dismiss()
        }
    }
    
}
