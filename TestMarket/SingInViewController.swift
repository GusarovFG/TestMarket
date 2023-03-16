//
//  SingInViewController.swift
//  TestMarket
//
//  Created by Фаддей Гусаров on 3/16/23.
//

import SnapKit
import UIKit

class SingInViewController: UIViewController {
    
    var mainLabel: UILabel?
    var firstNameTextField: UITextField?
    var lastNameTextField: UITextField?
    var emailTextField: UITextField?
    var singInButton: UIButton?
    var alredyLabel: UILabel?
    var logInButton: UIButton?
    var googleButton: UIButton?
    var appleButton: UIButton?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        setupUI()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        self.firstNameTextField?.layer.cornerRadius = 14
        self.lastNameTextField?.layer.cornerRadius = 14
        self.emailTextField?.layer.cornerRadius = 14
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        self.view.addSubview(self.mainLabel ?? UILabel(frame: CGRect(x: 0, y: 0, width: 0, height: 0)))
        
        self.mainLabel?.snp.makeConstraints({ make in
            make.top.equalToSuperview().offset(155.93)
            make.left.equalToSuperview().offset(142.7)
            make.right.equalToSuperview().inset(144.78)
    
        })
        
        self.view.addSubview(self.firstNameTextField ?? UITextField(frame: CGRect(x: 0, y: 0, width: 0, height: 0)))
        
        self.firstNameTextField?.snp.makeConstraints({ make in
            make.top.equalTo(self.mainLabel?.snp.bottom ?? 0).offset(86.45)
            make.left.equalToSuperview().offset(44)
            make.right.equalToSuperview().inset(42)
            make.height.equalTo(29)
        })
        
        self.view.addSubview(self.lastNameTextField ?? UITextField(frame: CGRect(x: 0, y: 0, width: 0, height: 0)))
        
        self.lastNameTextField?.snp.makeConstraints({ make in
            make.top.equalTo(self.firstNameTextField?.snp.bottom ?? 0).offset(35)
            make.left.equalToSuperview().offset(44)
            make.right.equalToSuperview().inset(42)
            make.height.equalTo(29)
        })
        
        self.view.addSubview(self.emailTextField ?? UITextField(frame: CGRect(x: 0, y: 0, width: 0, height: 0)))
        
        self.emailTextField?.snp.makeConstraints({ make in
            make.top.equalTo(self.lastNameTextField?.snp.bottom ?? 0).offset(35)
            make.left.equalToSuperview().offset(44)
            make.right.equalToSuperview().inset(42)
            make.height.equalTo(29)
        })
        
    }
    
    private func setupUI() {
        
        self.mainLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        self.mainLabel?.text = "Sign in"
        self.mainLabel?.textColor = .black
        self.mainLabel?.font = UIFont.boldSystemFont(ofSize: 32)
        self.mainLabel?.textAlignment = .center
        
        self.firstNameTextField = UITextField(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        self.firstNameTextField?.placeholder = "First name"
        self.firstNameTextField?.backgroundColor = #colorLiteral(red: 0.9098039216, green: 0.9098039216, blue: 0.9098039216, alpha: 1)
        self.firstNameTextField?.tintColor = #colorLiteral(red: 0.4823529412, green: 0.4823529412, blue: 0.4823529412, alpha: 1)
        self.firstNameTextField?.textAlignment = .center
        
        self.lastNameTextField = UITextField(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        self.lastNameTextField?.placeholder = "Last name"
        self.lastNameTextField?.backgroundColor = #colorLiteral(red: 0.9098039216, green: 0.9098039216, blue: 0.9098039216, alpha: 1)
        self.lastNameTextField?.tintColor = #colorLiteral(red: 0.4823529412, green: 0.4823529412, blue: 0.4823529412, alpha: 1)
        self.lastNameTextField?.textAlignment = .center
        
        self.emailTextField = UITextField(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        self.emailTextField?.placeholder = "Email"
        self.emailTextField?.backgroundColor = #colorLiteral(red: 0.9098039216, green: 0.9098039216, blue: 0.9098039216, alpha: 1)
        self.emailTextField?.tintColor = #colorLiteral(red: 0.4823529412, green: 0.4823529412, blue: 0.4823529412, alpha: 1)
        self.emailTextField?.textAlignment = .center
    }


}

