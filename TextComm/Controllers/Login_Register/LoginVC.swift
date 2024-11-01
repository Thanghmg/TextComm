//
//  LoginVC.swift
//  TextComm
//
//  Created by Thang Hoang on 30/10/24.
//

import UIKit

class LoginVC: UIViewController {
       
    // MARK: - UI Components
    private let headerView = LoginHead(title: "Log in to TextComm", subtitle: "Sign in to your account")
    
    private let usernameField = CustomTextField(fieldType: .username)
    private let passwordField = CustomTextField(fieldType: .password)
    private let signInButton = CustomButton(title: "Sign in", hasBackground: true, fontSize: .bold)
    private let newUserButton = CustomButton(title: "Create Account", hasBackground: false, fontSize: .bold)
    private let forgotPassButton = CustomButton(title: "Forgot Password?", hasBackground: false, fontSize: .medium)
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        
        self.signInButton.addTarget(self, action: #selector(didTapSignIn), for: .touchUpInside)
        self.newUserButton.addTarget(self, action: #selector(didTapCreateAcc), for: .touchUpInside)
        //self.signInButton.addTarget(self, action: #selector(didTapForgot), for: .touchUpInside)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
    }
    
    // MARK: - UI Setup
    private func setupUI() {
        self.view.backgroundColor = .systemBackground
        self.view.addSubview(headerView)
        self.view.addSubview(usernameField)
        self.view.addSubview(passwordField)
        self.view.addSubview(signInButton)
        self.view.addSubview(newUserButton)
        self.view.addSubview(forgotPassButton)
        
        headerView.translatesAutoresizingMaskIntoConstraints = false
        usernameField.translatesAutoresizingMaskIntoConstraints = false
        passwordField.translatesAutoresizingMaskIntoConstraints = false
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        newUserButton.translatesAutoresizingMaskIntoConstraints = false
        forgotPassButton.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            self.headerView.topAnchor.constraint(equalTo: self.view.layoutMarginsGuide.topAnchor),
            self.headerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            self.headerView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            self.headerView.heightAnchor.constraint(equalToConstant: 250),
            
            // Username Field Enter Constraints
            self.usernameField.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: 20),
            self.usernameField.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
            self.usernameField.heightAnchor.constraint(equalToConstant: 50),
            self.usernameField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85),
            
            // Password Field Constraints
            self.passwordField.topAnchor.constraint(equalTo: usernameField.bottomAnchor, constant: 20),
            self.passwordField.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
            self.passwordField.heightAnchor.constraint(equalToConstant: 50),
            self.passwordField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85),
            
            // Sign In Button Constraints
            self.signInButton.topAnchor.constraint(equalTo: passwordField.bottomAnchor, constant: 20),
            self.signInButton.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
            self.signInButton.heightAnchor.constraint(equalToConstant: 50),
            self.signInButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85),
            
            // Create Account Constraints
            self.newUserButton.topAnchor.constraint(equalTo: signInButton.bottomAnchor, constant: 18),
            self.newUserButton.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
            self.newUserButton.heightAnchor.constraint(equalToConstant: 30),
            self.newUserButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85),
            
            // Forgot Password Button Constraint
            self.forgotPassButton.topAnchor.constraint(equalTo: newUserButton.bottomAnchor, constant: 14),
            self.forgotPassButton.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
            self.forgotPassButton.heightAnchor.constraint(equalToConstant: 30),
            self.forgotPassButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85),
        ])
    }
    

    
    // MARK: - Button functional

    @objc private func didTapSignIn() {
        // Set the login status to true
                UserDefaults.standard.set(true, forKey: "isLoggedIn")
                
                // Transition to HomeChatVC within UINavigationController
                if let sceneDelegate = view.window?.windowScene?.delegate as? SceneDelegate {
                    let homeChatVC = HomeChatVC()
                    let navController = UINavigationController(rootViewController: homeChatVC)
                    navController.modalPresentationStyle = .fullScreen
                    sceneDelegate.window?.rootViewController = navController
                    sceneDelegate.window?.makeKeyAndVisible()
                }
    }

    @objc private func didTapCreateAcc() {
        let vc = RegisterVC()
        self.navigationController?.pushViewController(vc, animated: true)
    }

//    @objc private func didTapForgot() {
//        let vc =
//    }
}
