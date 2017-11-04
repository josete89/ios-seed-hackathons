//
//  DetailDetailViewModelTests.swift
//  HackathonSeed
//
//  Created by Alcala, Jose Luis on 04/11/2017.
//  Copyright 2017 TestCompany. All rights reserved.
//

import XCTest
@testable import HackathonSeed

final class DetailViewModelTests: XCTestCase {

	fileprivate var viewModel:DetailViewModel?
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        self.viewModel = DetailViewModel()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        self.viewModel = nil
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        XCTAssert(self.viewModel != nil)
    }
    

    
}
