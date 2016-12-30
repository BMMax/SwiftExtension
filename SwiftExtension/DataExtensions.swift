//
//  DataExtensions.swift
//  SwiftExtension
//
//  Created by user on 16/12/30.
//  Copyright © 2016年 mobin. All rights reserved.
//

import UIKit

// MARK: - Properties
public extension Data {
    
    /// NSAttributedString from HTMLText Data  (if applicable).
    var attributedString: NSAttributedString? {
        // http://stackoverflow.com/questions/39248092/nsattributedstring-extension-in-swift-3
        do {
            return try NSAttributedString(data: self, options: [
                NSDocumentTypeDocumentAttribute : NSHTMLTextDocumentType,
                NSCharacterEncodingDocumentAttribute: String.Encoding.utf8.rawValue], documentAttributes: nil)
            
            
        } catch _ {
            return nil
        }
    }
}

