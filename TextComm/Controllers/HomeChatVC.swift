//
//  ViewController.swift
//  TextComm
//
//  Created by Thang Hoang on 30/10/24.
//

import UIKit

class HomeChatVC: UIViewController {

    // MARK: - UI Component
    private let chatList = ChatListView()
    
    // MARK: - Lifecycle of Main Home Chat
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = false
        self.title = "Home Chat"
        self.view.backgroundColor = .systemBlue
        setupUI()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.navigationController?.isNavigationBarHidden = false
    }
    
    
    // MARK: - UI Setup
    private func setupUI() {
        self.view.addSubview(chatList)
        chatList.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            chatList.topAnchor.constraint(equalTo: self.view.topAnchor),
            chatList.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            chatList.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
        ])
    }
    
    

}

