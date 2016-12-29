//
//  BoolExtensions.swift
//  SwiftExtension
//
//  Created by user on 16/12/29.
//  Copyright © 2016年 mobin. All rights reserved.
//

import Foundation


// MARK: - Propeties()
public extension Bool {

    
    /// Return 1 if true or 0 if false
    public var int: Int {
    
        return self ? 1 : 0
    }
    
    
    
    /// Return "true" string if
    public var string: String {
    
        return self ? "true" : "false"
    
    }

    
    
    /// Return inversed value of bool
    public var toggled: Bool {
    
        return !self
    }
}


 //MARK: - Methods
public extension Bool {

    
    /// toggled value for value
    ///
    /// - Returns: inversed value of  bool
    @discardableResult public mutating func toggle() -> Bool {
        self = !self
        return self
    }
}
