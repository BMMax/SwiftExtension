//
//  StringExtensions.swift
//  SwiftExtension
//
//  Created by user on 17/1/3.
//  Copyright © 2017年 mobin. All rights reserved.
//

import Foundation
public extension String{

    
    /// fisrt character of string
    public var fistrtCharacter: String?{
    
        return Array(characters).map({String($0)}).first
    
    }

    /// last character of string
    public var lastCharacter: String?{
    
        guard let last = characters.last else {
            return nil
        }
        return String(last)
    }
    
    /// check if string contains one or more letters 
    public var hasLetters: Bool {
    
        return rangeOfCharacter(from: .letters, options: .numeric, range: nil) != nil
    }
    
    
    /// check if string contain one or more numbers
    public var hasNumber: Bool {
    
        return rangeOfCharacter(from: .decimalDigits, options: .literal, range: nil) != nil
    }
    
    /// check if string contains only letters
    public var isAlphabetic: Bool {
    
        return hasLetters && !hasNumber
    }
    
    /// Check if string contains at least one letter and one number.
    public var isAlphaNumber: Bool{
    
        return components(separatedBy: .alphanumerics).joined(separator: "").characters.count == 0 && hasNumber
    }
    
    /// Check if string contains only numbers
    public var isNumber: Bool{
    
        return hasNumber && !hasLetters
    }
    
    
    /// cheack if string is valid email format
    /// http://stackoverflow.com/questions/25471114/how-to-validate-an-e-mail-address-in-swift
    public var isEmail: Bool{
        
        let emailPattern = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailPro = NSPredicate(format: "SELF MATCHS %@", emailPattern)
        return emailPro.evaluate(with: self)
        
    }
    
    /// array of string separated bu new lines
    public var lines: [String] {
    
        var result: [String] = []
        enumerateLines { (line, stop) in
            result.append(line)
        }
        return result
    }
    
    
    /// reversed string
    public var reversed: String {
    
        return String(characters.reversed())
    }

    
    
}
