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
    
    func test_one_returnsNoPrimes() {
        XCTAssertEqual([], sut.getPrimes(from: 1))
    }
    
    func test_two_returnsTwo() {
        XCTAssertEqual([2], sut.getPrimes(from: 2))
    }
    
    func test_three_returnsThree() {
        XCTAssertEqual([3], sut.getPrimes(from: 3))
    }
    
    func test_four_returnsTwoAndTwo() {
        XCTAssertEqual([2, 2], sut.getPrimes(from: 4))
    }
    
    func test_five_returnsFive() {
        XCTAssertEqual([5], sut.getPrimes(from: 5))
    }
    
    func test_six_returnsTwoAndThree() {
        XCTAssertEqual([2, 3], sut.getPrimes(from: 6))
    }
}
