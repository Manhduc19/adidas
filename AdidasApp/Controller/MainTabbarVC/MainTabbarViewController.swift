//
//  MainTabbarViewController.swift
//  AdidasApp
//
//  Created by Thanh Nguyên Trần on 04/12/2021.
//

import UIKit
import Firebase
import ProgressHUD

class MainTabbarViewController: UIViewController {
    
    let profileVC = ProfileViewController()
    let homeVC = HomeViewController()
    let favoriteVC = FavoriteViewController()
    let cartbagVC = CartBagViewController()
    
    @IBOutlet weak var contentView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

       activeProfile()
    }

    @IBAction func cartbagButtonDidTap(_ sender: Any) {
        activeCartBag()
    }
    
    @IBAction func favoriteButtonDidTap(_ sender: Any) {
        activeFavorite()
    }
    
    @IBAction func homeButtonDidTap(_ sender: Any) {
        activeHome()
    }
    
    @IBAction func profileButtonDidTap(_ sender: Any) {
        activeProfile()
    }
    private func activeProfile() {
        removeHome()
        removeFavorite()
        removeCartBag()
        addChild(profileVC)
        contentView.addSubview(profileVC.view)
        profileVC.view.fitSuperviewConstraint()
    }
    
    private func activeHome(){
        removeProfile()
        removeFavorite()
        removeCartBag()
        addChild(homeVC)
        contentView.addSubview(homeVC.view)
        homeVC.view.fitSuperviewConstraint()
    }
    private func activeCartBag(){
        removeProfile()
        removeHome()
        removeFavorite()
        addChild(cartbagVC)
        contentView.addSubview(cartbagVC.view)
        cartbagVC.view.fitSuperviewConstraint()
    }
    private func activeFavorite(){
        removeProfile()
        removeHome()
        removeCartBag()
        addChild(favoriteVC)
        contentView.addSubview(favoriteVC.view)
        favoriteVC.view.fitSuperviewConstraint()
    }
    
    private func removeProfile() {
        profileVC.removeFromParent()
        profileVC.view.removeFromSuperview()
    }
    
    private func removeHome() {
        homeVC.removeFromParent()
        homeVC.view.removeFromSuperview()
    }
    private func removeFavorite() {
        favoriteVC.removeFromParent()
        favoriteVC.view.removeFromSuperview()
    }
    private func removeCartBag() {
        cartbagVC.removeFromParent()
        cartbagVC.view.removeFromSuperview()
    }
    
    
}
extension UIView {
    func fitSuperviewConstraint(edgeInset: UIEdgeInsets = .zero) {
        self.translatesAutoresizingMaskIntoConstraints = false
        let superview = self.superview!
        self.topAnchor.constraint(equalTo: superview.topAnchor, constant: edgeInset.top).isActive = true
        self.leadingAnchor.constraint(equalTo: superview.leadingAnchor, constant: edgeInset.left).isActive = true
        self.trailingAnchor.constraint(equalTo: superview.trailingAnchor, constant: -edgeInset.right).isActive = true
        self.bottomAnchor.constraint(equalTo: superview.bottomAnchor, constant: -edgeInset.bottom).isActive = true
    }
}
