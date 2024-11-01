//
//  CustomTextField.swift
//  TextComm
//
//  Created by Thang Hoang on 31/10/24.
//

import UIKit

class CustomTextField: UITextField {
    
    enum CustomTextFieldType {
        case username
        case email
        case password
    }
    
    private let authFieldType: CustomTextFieldType
    
    init(fieldType: CustomTextFieldType) {
        self.authFieldType = fieldType
        super.init(frame: .zero)
        self.backgroundColor = .secondarySystemBackground
        self.layer.cornerRadius = 10
        
        self.returnKeyType = .done
        self.autocorrectionType = .no
        self.autocapitalizationType = .none
        
        self.leftViewMode = .always
        self.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: self.frame.size.height))
        
        switch fieldType {
        case .username:
            self.placeholder = "Username"
        case .email:
            self.placeholder = "Email"
            self.keyboardType = .emailAddress
        case .password:
            self.placeholder = "Password"
            self.textContentType = .password
            self.isSecureTextEntry = true
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
