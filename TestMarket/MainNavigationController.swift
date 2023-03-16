//
//  MainNavigationController.swift
//  TestMarket
//
//  Created by Фаддей Гусаров on 3/16/23.
//

import UIKit

class MainNavigationController: UINavigationController {
    
    let signVC = SingInViewController(nibName: nil, bundle: nil)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.viewControllers = [self.signVC]
        
        
        
    }
    

    

}
