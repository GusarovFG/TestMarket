//
//  SingInViewController.swift
//  TestMarket
//
//  Created by Фаддей Гусаров on 3/16/23.
//

import SnapKit
import UIKit

class SingInViewController: UIViewController {

    private var mainLabel: UILabel?
    private var firstNameTextField: UITextField?
    private var lastNameTextField: UITextField?
    private var emailTextField: UITextField?
    private var signInButton: UIButton?
    private var alredyLabel: UILabel?
    private var logInButton: UIButton?
    private var googleButton: UIButton?
    private var appleButton: UIButton?
   

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
        self.signInButton?.layer.cornerRadius = 14

    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        self.setupConstraints()
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
        
        self.signInButton = UIButton(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        self.signInButton?.backgroundColor = #colorLiteral(red: 0.3058823529, green: 0.3333333333, blue: 0.8431372549, alpha: 1)
        self.signInButton?.setTitle("Sign In", for: .normal)
        self.signInButton?.tintColor = .white
        self.signInButton?.addTarget(self, action: #selector(signInButtonPressed), for: .touchUpInside)
        
        self.alredyLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        self.alredyLabel?.text = "Already have an account?"
        self.alredyLabel?.textColor = #colorLiteral(red: 0.5019607843, green: 0.5019607843, blue: 0.5019607843, alpha: 1)
        self.alredyLabel?.font = UIFont.systemFont(ofSize: 10)
        
        self.logInButton = UIButton(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        self.logInButton?.setTitle("Log in", for: .normal)
        self.logInButton?.setTitleColor(#colorLiteral(red: 0.1450980392, green: 0.3098039216, blue: 0.9019607843, alpha: 1), for: .normal)
        self.logInButton?.titleLabel?.font = UIFont.systemFont(ofSize: 11)
        self.logInButton?.addTarget(self, action: #selector(LogInButtonPressed), for: .touchUpInside)
        
        self.googleButton = UIButton(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        self.googleButton?.setImage(UIImage(named: "google"), for: .normal)
        self.googleButton?.setTitle("Sign in with Google", for: .normal)
        self.googleButton?.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        self.googleButton?.setTitleColor(.black, for: .normal)
        
        var signButtonConfig = UIButton.Configuration.filled()
        signButtonConfig.imagePadding = 15
        signButtonConfig.baseBackgroundColor = self.view.backgroundColor
        self.googleButton?.configuration = signButtonConfig
        
        self.appleButton = UIButton(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        self.appleButton?.setImage(UIImage(named: "apple"), for: .normal)
        self.appleButton?.setTitle("Sign in with Apple", for: .normal)
        self.appleButton?.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        self.appleButton?.setTitleColor(.black, for: .normal)
        self.appleButton?.configuration = signButtonConfig
        
        
        
        
            
    }
    
    private func setupConstraints() {
        
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
        
        self.view.addSubview(self.signInButton ?? UIButton(frame: CGRect(x: 0, y: 0, width: 0, height: 0)))
        
        self.signInButton?.snp.makeConstraints({ make in
            make.top.equalTo(self.emailTextField?.snp.bottom ?? 0).offset(35)
            make.left.equalToSuperview().offset(43)
            make.right.equalToSuperview().inset(43)
            make.height.equalTo(46)
        })
        
        self.view.addSubview(self.alredyLabel ?? UILabel(frame: CGRect(x: 0, y: 0, width: 0, height: 0)))
        
        self.alredyLabel?.snp.makeConstraints({ make in
            make.left.equalToSuperview().offset(42)
            make.top.equalTo(self.signInButton?.snp.bottom ?? 0).offset(17.58)
            make.height.equalTo(9.4)
        })
        
        self.view.addSubview(self.logInButton ?? UIButton(frame: CGRect(x: 0, y: 0, width: 0, height: 0)))
        
        self.logInButton?.snp.makeConstraints({ make in
            make.left.equalTo(self.alredyLabel?.snp.right ?? 0).offset(8.7)
            make.top.equalTo(self.signInButton?.snp.bottom ?? 0).offset(17.43)
            make.height.equalTo(9.57)
            
        })
        
        self.view.addSubview(self.googleButton ?? UIButton(frame: CGRect(x: 0, y: 0, width: 0, height: 0)))
        
        self.googleButton?.snp.makeConstraints({ make in
            make.left.equalToSuperview().offset(80)
            make.top.equalTo(self.alredyLabel?.snp.bottom ?? 0).offset(100)
            make.height.equalTo(25)
        })
        
        self.view.addSubview(self.appleButton ?? UIButton(frame: CGRect(x: 0, y: 0, width: 0, height: 0)))
        
        self.appleButton?.snp.makeConstraints({ make in
            make.left.equalToSuperview().offset(80)
            make.top.equalTo(self.googleButton?.snp.bottom ?? 0).offset(50)
            make.height.equalTo(25)
        })
    }

    @objc private func signInButtonPressed() {
        print("sing in")
    }
    
    @objc private func LogInButtonPressed() {
        let loginVC = MainViewController()
        loginVC.modalPresentationStyle = .fullScreen
        self.navigationController?.present(loginVC, animated: true)
        print("log in")
    }
}

