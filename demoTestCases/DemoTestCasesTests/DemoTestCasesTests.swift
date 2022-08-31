//
//  DemoTestCasesTests.swift
//  DemoTestCasesTests
//
//  Created by Jay Shah on 31/08/22.
//

import XCTest
@testable import DemoTestCases

class DemoTestCasesTests: XCTestCase {
    
    //Mark :- Variables
    var viewModel : ViewModel!
    
    override func setUpWithError() throws {
        viewModel = ViewModel()
    }

    override func tearDownWithError() throws {
        try super.tearDownWithError()
        viewModel = nil
    }

    func test_Name_Empty() throws {
        XCTAssertTrue(viewModel.validation(userModel: UserModel(firstName: "", email: "jay@gmail.com", password: "Jay123")),"FirstName is Empty")
        
        
    }
    func test_Email_Empty() throws {
        XCTAssertTrue(viewModel.validation(userModel: UserModel(firstName: "JayShah", email: "", password: "123456")),"Email is Empty")
        
        
    }
    func test_Password_Empty() throws {
        XCTAssertTrue(viewModel.validation(userModel: UserModel(firstName: "JayShah", email: "jay@gmail.com", password: "")),"Password is Empty")
        
        
    }
    func test_Valid_Email() throws {
        XCTAssertTrue(viewModel.validation(userModel: UserModel(firstName: "JayShah", email: "abcxyz", password: "Jay456")),"Email is Not Valid")
        
        
    }
    func test_Success() throws {
        XCTAssertTrue(viewModel.validation(userModel: UserModel(firstName: "JayShah", email: "Jay123@gmail.com", password: "JayShah123")),"Test Case Success")
        
        
    }

  
}
