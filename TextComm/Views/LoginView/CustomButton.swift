//
//  CustomButton.swift
//  TextComm
//
//  Created by Thang Hoang on 31/10/24.
//

import UIKit

class CustomButton: UIButton {
    
    enum FontSize {
        case regular
        case light
        case medium
        case bold
    }
    
    
    init(title: String, hasBackground: Bool = false, fontSize: FontSize) {
        super.init(frame: .zero)
        self.setTitle(title, for: .normal)
        self.layer.cornerRadius = 12
        self.layer.masksToBounds = true
        
        self.backgroundColor = hasBackground ? .systemBlue: .clear
        
        let titleColor: UIColor = hasBackground ? .white: .systemBlue
        
        self.setTitleColor(titleColor, for: .normal)
        
        switch fontSize {
        case .regular:
            self.titleLabel?.font = MyFonts.customFont(name: MyFonts.satoshiRegular, size: 20)
        case .light:
            self.titleLabel?.font = MyFonts.customFont(name: MyFonts.satoshiLight, size: 20)
        case .medium:
            titleLabel?.font = MyFonts.customFont(name: MyFonts.satoshiMedium, size: 20)
        case .bold:
            titleLabel?.font = MyFonts.customFont(name: MyFonts.satoshiBold, size: 20)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
