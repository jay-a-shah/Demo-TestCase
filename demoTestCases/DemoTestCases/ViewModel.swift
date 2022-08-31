//
//  ViewModel.swift
//  DemoTestCases
//
//  Created by Jay Shah on 30/08/22.
//

import Foundation

class ViewModel {
    
    func validation(userModel: UserModel) -> Bool {
        
        if (userModel.firstName.isEmpty) {
            return false
        } else if (userModel.email.isEmpty) {
            return false
        } else if (!isValidEmail(emailStr: userModel.email)){
            return false
        } else if (userModel.password.isEmpty){
            return false
        }
        return true
    }
    
    func isValidEmail(emailStr: String) -> Bool {

        print("validate emilId: \(emailStr)")
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        let result = emailTest.evaluate(with: emailStr)
        return result
    }
}
