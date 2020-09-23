//
//  PrimeFactors.swift
//  PrimeFactors
//
//  Created by Samuel Stoltzfus on 9/23/20.
//

public class PrimeFactors {
    public init() { }
    
    public func getPrimes(from number: Int) -> [Int] {
        guard number > 1 else { return [] }
        guard number > 3 else { return [number] }
        
        var n = number
        var divisor = 2
        var factors = [Int]()
        
        while n > 3 {
            if n % divisor == 0 {
                n /= divisor
                factors.append(divisor)
            } else {
                divisor += 1
            }
        }
        
        factors.append(n)
        
        return factors
    }
}
