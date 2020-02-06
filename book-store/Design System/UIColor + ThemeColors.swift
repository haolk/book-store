//
//  UIColor + ThemeColors.swift
//  book-store
//
//  Created by Максим Спиридонов on 06.02.2020.
//  Copyright © 2020 Максим Спиридонов. All rights reserved.
//


import UIKit.UIColor



protocol YellowColors {
    static var primary: UIColor { get }
}


protocol BlackColors {
    static var primary: UIColor { get }
    static var gray: UIColor { get }
    static var light: UIColor { get }
}

protocol RedColors {
    static var primary: UIColor { get }
}

protocol BlueColors {
    static var primary: UIColor { get }
}







protocol PrimaryColor {
    static var primary: UIColor { get }
    static var light: UIColor { get }
    
}






//MARK: - UIColor Theme
extension UIColor {
    
    enum Primary: PrimaryColor {
        static let primary = UIColor(hexValue: "#00D6D8", alpha: 1.0)!
        static let light = UIColor(hexValue: "#E5FBFB", alpha: 1.0)!
    }
    
    
    // garbage
    
    enum Yellow: YellowColors {
        static let primary = UIColor(hexValue: "#FFBF00", alpha: 1.0)!
    }
    
    enum Black: BlackColors {
        static let primary: UIColor = UIColor(hexValue: "#19191C", alpha: 1.0)!
        
        static let gray: UIColor = UIColor(hexValue: "#88888C", alpha: 1.0)!
        
        static let light: UIColor = UIColor(hexValue: "#BABABC", alpha: 1.0)!
    }
    
    enum Red: RedColors {
        static var primary: UIColor = UIColor(hexValue: "#DC3A42", alpha: 1.0)!
    }
    
    enum Blue: BlueColors {
        static var primary: UIColor = UIColor(hexValue: "#3017C2", alpha: 1.0)!
    }
    
}
