//
//  PrimeFactorsTests.swift
//  PrimeFactorsTests
//
//  Created by Samuel Stoltzfus on 9/23/20.
//

import XCTest
import PrimeFactors

class PrimeFactorsTests: XCTestCase {
    var sut: PrimeFactors!
    
    override func setUp() {
        super.setUp()
        sut = PrimeFactors()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_one_noPrimes() {
        XCTAssertEqual([], sut.getPrimes(from: 1))
    }
}
