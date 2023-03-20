//
//  LoginViewController.swift
//  TestMarket
//
//  Created by Фаддей Гусаров on 3/20/23.
//

import UIKit

class LoginViewController: UINavigationController {
    
    private var mainLabel: UILabel?
    private var firstNameTextField: UITextField?
    private var passwordTextField: UITextField?
    private var loginButton: UIButton?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        self.setupUI()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        self.setupConstraints()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        self.firstNameTextField?.layer.cornerRadius = 14
        self.passwordTextField?.layer.cornerRadius = 14
        self.loginButton?.layer.cornerRadius = 14
    }
    
    private func setupUI() {
        
        self.mainLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        self.mainLabel?.text = "Welcome back"
        self.mainLabel?.textColor = .black
        self.mainLabel?.font = UIFont.boldSystemFont(ofSize: 32)
        self.mainLabel?.textAlignment = .center
        
        self.firstNameTextField = UITextField(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        self.firstNameTextField?.placeholder = "First name"
        self.firstNameTextField?.backgroundColor = #colorLiteral(red: 0.9098039216, green: 0.9098039216, blue: 0.9098039216, alpha: 1)
        self.firstNameTextField?.tintColor = #colorLiteral(red: 0.4823529412, green: 0.4823529412, blue: 0.4823529412, alpha: 1)
        self.firstNameTextField?.textAlignment = .center
        
        self.passwordTextField = UITextField(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        self.passwordTextField?.placeholder = "Password"
        self.passwordTextField?.backgroundColor = #colorLiteral(red: 0.9098039216, green: 0.9098039216, blue: 0.9098039216, alpha: 1)
        self.passwordTextField?.tintColor = #colorLiteral(red: 0.4823529412, green: 0.4823529412, blue: 0.4823529412, alpha: 1)
        self.passwordTextField?.textAlignment = .center
        
        self.loginButton = UIButton(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        self.loginButton?.backgroundColor = #colorLiteral(red: 0.3058823529, green: 0.3333333333, blue: 0.8431372549, alpha: 1)
        self.loginButton?.setTitle("Sign In", for: .normal)
        self.loginButton?.tintColor = .white
        self.loginButton?.addTarget(self, action: #selector(loginButtonButtonPressed), for: .touchUpInside)
    }
   
    private func setupConstraints() {
        
        self.view.addSubview(self.mainLabel ?? UILabel(frame: CGRect(x: 0, y: 0, width: 0, height: 0)))
        
        self.mainLabel?.snp.makeConstraints({ make in
            make.top.equalToSuperview().offset(155.93)
            make.centerX.equalToSuperview()
        })
        
        self.view.addSubview(self.firstNameTextField ?? UITextField(frame: CGRect(x: 0, y: 0, width: 0, height: 0)))
        
        self.firstNameTextField?.snp.makeConstraints({ make in
            make.top.equalTo(self.mainLabel?.snp.bottom ?? 0).offset(86.45)
            make.left.equalToSuperview().offset(44)
            make.right.equalToSuperview().inset(42)
            make.height.equalTo(29)
        })
        
        self.view.addSubview(self.passwordTextField ?? UITextField(frame: CGRect(x: 0, y: 0, width: 0, height: 0)))
        
        self.passwordTextField?.snp.makeConstraints({ make in
            make.top.equalTo(self.firstNameTextField?.snp.bottom ?? 0).offset(35)
            make.left.equalToSuperview().offset(44)
            make.right.equalToSuperview().inset(42)
            make.height.equalTo(29)
        })
        
        self.view.addSubview(self.loginButton ?? UIButton(frame: CGRect(x: 0, y: 0, width: 0, height: 0)))
        
        self.loginButton?.snp.makeConstraints({ make in
            make.top.equalTo(self.passwordTextField?.snp.bottom ?? 0).offset(99)
            make.left.equalToSuperview().offset(43)
            make.right.equalToSuperview().inset(43)
            make.height.equalTo(46)
        })
    }
    
    @objc private func loginButtonButtonPressed() {
        print("login")
    }
}
