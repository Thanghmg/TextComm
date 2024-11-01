//
//  Fonts.swift
//  TextComm
//
//  Created by Thang Hoang on 31/10/24.
//

import UIKit

    struct MyFonts {
        
        // Satoshi Fonts
        static let satoshiRegular = "SatoshiVariable-Bold_Regular"
        static let satoshiLight = "SatoshiVariable-Bold_Light"
        static let satoshiMedium = "SatoshiVariable-Bold_Medium"
        static let satoshiBold = "SatoshiVariable-Bold_Bold"
        
        // Switzer Fonts
        static let switzerRegular = "SwitzerVariable-Regular"
        static let switzerLight = "SwitzerVariable-Regular_Thin"
        static let switzerMedium = "SwitzerVariable-Regular_Medium"
        static let switzerSemiBold = "SwitzerVariable-Regular_SemiBold"
        static let switzerBold = "SwitzerVariable-Regular_Bold"
        static let switzerExtaBold = "SwitzerVariable-Regular_ExtraBold"
        static let switzerBlack = "SwitzerVariable-Regular_Black"
        
        // Nunito Fonts
        static let nunitoRegular = "NunitoVariable-Bold_Regular"
        static let nunitoExtraLight = "NunitoVariable-Bold_ExtraLight"
        static let nunitoLight = "NunitoVariable-Bold_Light"
        static let nunitoMedium = "NunitoVariable-Bold_Medium"
        static let nunitoSemiBold = "NunitoVariable-Bold_SemiBold"
        static let nunitoBold = "NunitoVariable-Bold"
        static let nunitoExtraBold = "NunitoVariable-Bold_ExtraBold"
        static let nunitoBlack = "NunitoVariable-Bold_Black"
        
        static func customFont(name: String, size: CGFloat) -> UIFont? {
                return UIFont(name: name, size: size)
            }
        

}
