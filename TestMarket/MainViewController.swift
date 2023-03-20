//
//  MainViewController.swift
//  TestMarket
//
//  Created by Фаддей Гусаров on 3/20/23.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white

        self.setupViewControllers()
    }
    
    private func setupViewControllers() {
        self.viewControllers = [
            self.createViewController(for: UIViewController(), title: "Trade by data",  image: UIImage(named: "home")!),
            self.createViewController(for: UIViewController(), title: "Favorites", image: UIImage(named: "favorites")!),
            self.createViewController(for: UIViewController(), title: "Basket", image: UIImage(named: "basket")!),
            self.createViewController(for: UIViewController(), title: "Chat", image: UIImage(named: "chat")!),
            self.createViewController(for: UIViewController(), title: "Profile", image: UIImage(named: "profile")!)
        ]
    }
    
    private func createViewController(for rootViewCotroller: UIViewController, title: String, image: UIImage) -> UIViewController {
        
        let navigationVC = UINavigationController(rootViewController: rootViewCotroller)
        navigationVC.tabBarItem.image = image
        
        if title == "Trade by data" {
            let naviTitle = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 20))
            
            let coloredTextAttribute = NSMutableAttributedString(string: title)
            coloredTextAttribute.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor(red: 78 / 255, green: 85 / 255, blue: 215 / 255, alpha: 1), range: NSRange(location: title.count - 4, length: 4))
            
            naviTitle.attributedText = coloredTextAttribute
            naviTitle.font = UIFont.boldSystemFont(ofSize: 24)
            
            rootViewCotroller.navigationItem.titleView = naviTitle
        } else {
            
            rootViewCotroller.navigationItem.title = title
        }
        
        return navigationVC
    }

}
