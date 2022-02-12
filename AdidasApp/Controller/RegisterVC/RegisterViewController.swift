//
//  RegisterViewController.swift
//  AdidasApp
//
//  Created by Thanh Nguyên Trần on 04/12/2021.
//

import UIKit
import Firebase
import ProgressHUD


class RegisterViewController: UIViewController {

    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var RepasswordTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        errorLabel.isHidden = true
    }


    @IBAction func backButtonDidTap(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func RegisterButtonDidTap(_ sender: Any) {
        if isValidInformantion(){
            ProgressHUD.show()
            Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!) { authResult, error in
                ProgressHUD.dismiss()
                if error != nil {
                    self.errorLabel.text = error?.localizedDescription
                    }
                else{
                    
                    if let user = authResult?.user {
                        let vc = MainTabbarViewController()
                        self.navigationController?.pushViewController(vc, animated: true)
                        
                        self.addNewUserToFireStore(user: user)
                    }
                }
            }
            
        }
    }
    
    func addNewUserToFireStore(user: User) {
        let db = Firestore.firestore()
        let collection = db.collection("User")
        let document = collection.document(user.uid)
        document.setData(["UID" : user.uid ,"Display Name":"", "Email" : user.email ?? "","Date": "" , "Address": ""  ])
    }
    private func isValidInformantion() -> Bool {
        if emailTextField.text!.isEmpty || passwordTextField.text!.isEmpty || RepasswordTextField.text!.isEmpty {
            errorLabel.isHidden = false
            errorLabel.text = "Please type email & password"
            return false
        }
        else if passwordTextField.text != RepasswordTextField.text
        {
            errorLabel.isHidden = false
            errorLabel.text = "Please confirm password"
            return false
        }
        return true
    }
    
}
