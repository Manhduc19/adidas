//
//  ProfileViewController.swift
//  AdidasApp
//
//  Created by Thanh Nguyên Trần on 08/12/2021.
//

import UIKit
import Firebase
import ProgressHUD

class ProfileViewController: UIViewController {

    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var dateTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var uidTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let user = Auth.auth().currentUser {
            let db = Firestore.firestore()
            let collection = db.collection("User")
            let document = collection.document(user.uid)
            document.getDocument { (snapshot, err) in
                if let data = snapshot?.data() {
                    if let name = data["Display Name"]
                    {
                        self.nameTextField.text = "\(name)"
                    }
                    if let date = data["Date"]
                    {
                        self.dateTextField.text = "\(date)"
                    }
                    if let address = data["Address"]
                    {
                        self.addressTextField.text = "\(address)"
                    }
                }
            }
            uidTextField.text = user.uid
            emailTextField.text = user.email
            
        }
    }
    
    @IBAction func changePwButtonDidTap(_ sender: Any) {
        let vc = ChangePasswordViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func paymentMethodButtonDidTap(_ sender: Any) {
        let vc = PaymentViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func saveButtonDidTap(_ sender: Any) {
        ProgressHUD.show()
        let changeRequest = Auth.auth().currentUser?.createProfileChangeRequest()
        changeRequest?.commitChanges { error in
            // update display name
            guard let user = Auth.auth().currentUser else {return}
            ProgressHUD.dismiss()
            let db = Firestore.firestore()
            let collection = db.collection("User")
            let document = collection.document(user.uid)
            document.updateData(["Display Name":self.nameTextField.text!, "Date": self.dateTextField.text!, "Address": self.addressTextField.text!  ])

        }
        
    }
    
    @IBAction func logoutButtonDidTap(_ sender: Any) {
        try? Auth.auth().signOut()
        let sceneDelegate =   self.view.window?.windowScene?.delegate as? SceneDelegate
        sceneDelegate?.setRootViewController()
    }
}
