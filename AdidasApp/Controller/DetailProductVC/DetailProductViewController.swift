//
//  DetailProductViewController.swift
//  AdidasApp
//
//  Created by Thanh Nguyên Trần on 27/12/2021.
//

import UIKit

class DetailProductViewController: UIViewController {
    var index: Int
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    init() {
        self.index = 0
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
}
