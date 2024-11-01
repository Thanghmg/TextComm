//
//  LoginHead.swift
//  TextComm
//
//  Created by Thang Hoang on 31/10/24.
//

import UIKit

class LoginHead:UIView {
    

    // MARK: - UI Components
    
    private let logoImgView: UIImageView = {
        let logo = UIImageView()
        logo.image = UIImage(named: "chatLogo")
        logo.contentMode = .scaleAspectFit
        logo.backgroundColor = .white
        logo.layer.cornerRadius = 30
        return logo
    }()
    
    private let titleLabel: UILabel = {
        let firstTitle = UILabel()
        firstTitle.textColor = .label
        firstTitle.textAlignment = .center
        firstTitle.font = MyFonts.customFont(name: MyFonts.satoshiBold, size: 20)
        firstTitle.text = "Title"
        return firstTitle
    }()
    
    private let subTitleLabel: UILabel = {
        let secondTitle = UILabel()
        secondTitle.textColor = .label
        secondTitle.textAlignment = .center
        secondTitle.font = MyFonts.customFont(name: MyFonts.satoshiMedium, size: 16)
        secondTitle.text = "Subtitle"
        return secondTitle
    }()
    

    
    // MARK: - Lifecycle
    init(title: String, subtitle: String) {
        super.init(frame: .zero)
        self.titleLabel.text = title
        self.subTitleLabel.text = subtitle
        self.setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - UI Setup
    private func setupUI() {
        self.addSubview(logoImgView)
        self.addSubview(titleLabel)
        self.addSubview(subTitleLabel)
        
        logoImgView.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        subTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            // Logo Imgae Constraints
            self.logoImgView.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            self.logoImgView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.logoImgView.widthAnchor.constraint(equalToConstant: 120),
            self.logoImgView.heightAnchor.constraint(equalToConstant: 120),
            
            // Firts Title Constraints
            self.titleLabel.topAnchor.constraint(equalTo: logoImgView.bottomAnchor, constant: (18)),
            self.titleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            // Second Label Constraints
            self.subTitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: (18)),
            self.subTitleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
        ])
    }
}
