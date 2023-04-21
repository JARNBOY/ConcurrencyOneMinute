//
//  ValidatePinCode.swift
//  ConcurrencyOneMinute
//
//  Created by Papon Supamongkonchai on 21/4/2566 BE.
//

import Foundation

//REGEX
/*
"^(?!.*([0-9])\\1{2})[0-9]{6,}$" : 6 or more digits only, no more than 2 duplicates
 "^(?!.*([0-9])\\1{2})(?!.*([0-9])([0-9])\\2{1})(?=.*[0-9])[0-9]{6,}$" // 6 or more digits only, no more than 2 duplicates, no more than 2 consecutive digits
 "^(?!.*([0-9])\\1{2})(?!.*([0-9])([0-9])\\2{2})(?=.*[0-9])[0-9]{6,}$" // 6 or more digits only, no more than 2 duplicates, no more than 3 consecutive digits
 */
func validatePinCodeRegex(pinCode: String) -> Bool {
    let pinRegex = "^(?!.*([0-9])\\1{2})(?!.*([0-9])([0-9])\\2{2})(?=.*[0-9])[0-9]{6,}$"
    
    
    let pinTest = NSPredicate(format: "SELF MATCHES %@", pinRegex)
    return pinTest.evaluate(with: pinCode)
}

////Normal
//func validatePincode(_ pincode: String) -> Bool {
//    // check if pincode is at least 6 characters long
//    guard pincode.count >= 6 else { return false }
//
//    let pincodeChars = Array(pincode)
//    var prevChar: Character?
//    var consecutiveCount = 0
//    var duplicateCount = 0
//
//    for char in pincodeChars {
//        // check for consecutive numbers
//        if let prev = prevChar, prev.isNumber && char.isNumber {
//            consecutiveCount += 1
//            if consecutiveCount > 2 {
//                return false
//            }
//        } else {
//            consecutiveCount = 0
//        }
//
//        // check for duplicate numbers
//        if let prev = prevChar, prev == char {
//            duplicateCount += 1
//            if duplicateCount > 2 {
//                return false
//            }
//        } else {
//            duplicateCount = 0
//        }
//
//        // check for more than 2 duplicates in a row
//        if duplicateCount == 2 && (prevChar == nil || prevChar != char) {
//            return false
//        }
//
//        prevChar = char
//    }
//
//    return true
//}

