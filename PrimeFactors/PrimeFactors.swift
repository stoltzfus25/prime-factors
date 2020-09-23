//
//  PrimeFactors.swift
//  PrimeFactors
//
//  Created by Samuel Stoltzfus on 9/23/20.
//

import Foundation

public class PrimeFactors {
    public init() { }
    
    public func getPrimes(from number: Int) -> [Int] {
        if number < 2 { return [] }
        if number < 4 { return [number] }
        
        for i in 2...Int(sqrt(Double(number))) {
            if number % i == 0 {
                return [i] + getPrimes(from: number / i)
            }
        }
        
        return [number]
    }
}
