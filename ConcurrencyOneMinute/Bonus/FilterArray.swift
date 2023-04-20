//
//  FilterArray.swift
//  ConcurrencyOneMinute
//
//  Created by Papon Supamongkonchai on 21/4/2566 BE.
//

import Foundation

func filterArray() {
    let array1 = [1, 2, 3, 4, 5]
    let array2 = [3, 4, 5, 6, 7]

    var filteredArray: [Int] = []
    
    for number1 in array1 {
        for number2 in array2 {
            if number1 == number2 {
                filteredArray.append(number1)
                break
            }
        }
    }
}

