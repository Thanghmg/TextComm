//
//  ChatListView.swift
//  TextComm
//
//  Created by Thang Hoang on 1/11/24.
//

import UIKit

class ChatListView: UIView {
    
    private let tableView: UITableView = {
            let chatTableView = UITableView()
            chatTableView.backgroundColor = .white
            chatTableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
            chatTableView.separatorColor = .black
            chatTableView.allowsSelection = true
            return chatTableView
        }()
        
        // MARK: - Initializer
        override init(frame: CGRect) {
            super.init(frame: frame)
        }
        
        required init?(coder: NSCoder) {
            super.init(coder: coder)
            setupUI()
        }
        
        // MARK: - Setup UI
        private func setupUI() {
            addSubview(tableView)
            tableView.backgroundColor = .white
            tableView.translatesAutoresizingMaskIntoConstraints = false
            
            // Set up constraints to cover the full view
            NSLayoutConstraint.activate([
                tableView.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor, constant: 20),
                tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
                tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
                tableView.bottomAnchor.constraint(equalTo: bottomAnchor)
            ])
        }
}
