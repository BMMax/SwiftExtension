//
//  ArrayExtensions.swift
//  SwiftExtension
//
//  Created by user on 16/12/28.
//  Copyright © 2016年 mobin. All rights reserved.
//

import Foundation

 //MARK: - Properties
public extension Array{

    
    /// Random iten from array
    
    public var randomItem: Element {
        
        let index = Int(arc4random_uniform(UInt32(self.count)))
        
        return self[index]
    }

    
    /// shuffled array (for 10)
    public var shuffled: [Element] {
    
        var arr = self
        
        for _ in 0..<10 {
            arr.sort { (_,_) in arc4random() < arc4random() }
        }
        return arr
    
    }
    
}



// MARK: - sum of all elements in interger array
public extension Array where Element : Integer {

    
    /// sum
    public var sum: Element{
    
        return reduce(0, +)
    }
    
}


// MARK: - average of all elements in interger array 
public extension Collection where Iterator.Element == Int, Index == Int {


    public var average: Double {
    
        return isEmpty ? 0 : Double(reduce(0, +)) / Double(endIndex - startIndex)
    }
    
}


 //MARK: - Properties (FloatingPoint)
public extension Array where Element: FloatingPoint {

    
    /// average
    public var average: Element {
    
        return isEmpty ? 0 : reduce(0, +) / Element(count)
    }
    
    /// sum
    public var sum: Element {
    
        return reduce(0, +)
    }

}


 //MARK: - Properties (Equatable)
public extension Array where Element: Equatable {

    
    /// Array with all duplicates removed from it
    public var whithoutDuplicates: [Element] {
        
        /// $0 计算结果类型, $1 数组元素类型
        return reduce([]){ ($0 as [Element]).contains($1) ? $0 : $0 + [$1] }
        
    }
    
}


 //MARK: - Methods 
public extension Array {

    
    /// Element at the given index if it exists
    ///
    /// - Parameter index: index of element
    /// - Returns: optional element (if exists)
    public func item(at index: Int) -> Element? {
    
        guard index >= 0 && index < count else { return nil }
        
        return self[index]
    
    }
    
    
    
    /// First index of a given item in an array
    ///
    /// - Parameter item: item to check
    /// - Returns: index of check item in array
    public func firstIndex<Item: Equatable> (of item: Item) ->Int? {
    
        if item is Element {
            for (index,value) in self.lazy.enumerated() {
            
                if value as! Item == item{
                
                    return index
                }
            }
            
            return nil
        }
        
        return nil
    }
    
    
    
    /// Last index of a given item in an array
    ///
    /// - Parameter item: item to check
    /// - Returns: index of check item in array
    public func lastIndex<Item: Equatable>(of item: Item) -> Int? {
    
        if item is Element {
        
            for (index,value) in self.reversed().lazy.enumerated(){
            
                if value as!Item == item{
                
                    return count - 1 - index
                }
            }
            return nil
        }
        return nil
    }

    
    
    /// Remove last element from array and retun it
    /// http://www.jianshu.com/p/14cc9d30770a mutating 说明
    /// - Returns: last element in array
    
    /// discardableResult no use return value of the method  clearning⚠️
    @discardableResult public mutating func popItem() -> Element? {
    
        guard count > 0 else{ return nil }
        
        return removeLast()
    }
    
    
    
    /// Insert new element from array and return it
    ///
    /// - Parameter nemElement: elemment to insert
    public mutating func prepend(_ newElement: Element) {
    
        insert(newElement, at: 0)
    }
    
    
    
    /// inset an element at the end of array
    ///
    /// - Parameter newElement: element to append
    public  mutating func push(_ newElement: Element){
    
        append(newElement)
    }
    
}



 //MARK: - Methods(Equatable)
public extension Array where Element: Equatable {
    
    
    /// check if array contains an array of elements
    ///
    /// - Parameter elements: array of elemensts to check
    /// - Returns: true if array contains all elements
    public func contains(_ elements: [Element]) -> Bool {
        
        guard !elements.isEmpty else { return false }
        
        var found = true
        
        for element in elements {
        
            if !contains(element) { found = false }
        }
        
        return found
    }

    
    
    
    /// all indexes of check item
    ///
    /// - Parameter item: specified item
    /// - Returns: an array with all indexed of the given item
    public func indexs(of item: Element) -> [Int] {
    
    
        var indexes: [Int] = []
        for index in 0..<self.count{
        
            if self[index] == item {
                indexes.append(index)
            }
        }
        
        return indexes
    }
    
    
    
    /// remove all instances of an item from array
    ///
    /// - Parameter item: item to remove
    public mutating func removeAll(_ item: Element){
    
        self = self.filter{ $0 != item }
    }

    
    
    /// remove all duplicates from array
    public mutating func removeDuplicates(){
    
    
        self = reduce([]){ $0.contains($1) ? $0 : $0 + [$1]}
    
        
    }
}

