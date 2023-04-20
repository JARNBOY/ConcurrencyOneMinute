//
//  Fibonacci.swift
//  ConcurrencyOneMinute
//
//  Created by Papon Supamongkonchai on 21/4/2566 BE.
//

import Foundation

func fibonacci(of length: Int) -> [Int] {
    if length == 0 {
        return []
    } else if length == 1 {
        return [0]
    } else if length == 2 {
        return [0, 1]
    } else {
        var sequence = fibonacci(of: length - 1)
        sequence.append(sequence[length - 2] + sequence[length - 3])
        return sequence
    }
}
