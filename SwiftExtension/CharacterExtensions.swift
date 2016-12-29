//
//  CharacterExtensions.swift
//  SwiftExtension
//
//  Created by user on 16/12/29.
//  Copyright © 2016年 mobin. All rights reserved.
//

import Foundation

public extension Character {

    
    /// Cheack if character is emoji
    public var isEmoji: Bool{
    
    // http://stackoverflow.com/questions/30757193/find-out-if-character-in-string-is-emoji
        
        /// http://www.jianshu.com/p/27b237d7843f unicodeScalars
        
        guard let scalarValue = String(self).unicodeScalars.first?.value else {
            
            return false
        }
        switch scalarValue {
        
        case 0x3030, 0x00AE, 0x00A9,// Special Characters
        0x1D000...0x1F77F, // Emoticons
        0x2100...0x27BF, // Misc symbols and Dingbats
        0xFE00...0xFE0F, // Variation Selectors
        0x1F900...0x1F9FF: // Supplemental Symbols and Pictographs
            return true
        default:
            return false
        }

    }
    
    
    /// Check if character is Number
    public var isNumber: Bool {
        
        return Int(String(self)) != nil
        
    }
    
    
    
    /// interger value from character
    public var int: Int? {
    
        return Int(String(self))
    
    }
    
    
    /// string from charcter
    public var string: String {
    
        return String(self)
    }
    

}

// MARK: - Operators
public extension Character {
    
    ///  Repeat character multiple times.
    ///
    /// - Parameters:
    ///   - lhs: character to repeat.
    ///   - rhs: number of times to repeat character.
    /// - Returns: string with character repeated n times.
    static public func * (lhs: Character, rhs: Int) -> String {
        var newString = ""
        for _ in 0 ..< rhs {
            newString += String(lhs)
        }
        return newString
    }
    
    ///  Repeat character multiple times.
    ///
    /// - Parameters:
    ///   - lhs: number of times to repeat character.
    ///   - rhs: character to repeat.
    /// - Returns: string with character repeated n times.
    
    static public func * (lhs: Int, rhs: Character) -> String {
        var newString = ""
        for _ in 0 ..< lhs {
            newString += String(rhs)
        }
        return newString
    }
    
}
