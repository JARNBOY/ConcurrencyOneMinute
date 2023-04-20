//
//  PrimeNumber.swift
//  ConcurrencyOneMinute
//
//  Created by Papon Supamongkonchai on 21/4/2566 BE.
//

import Foundation

func generatePrimes(upTo limit: Int) -> [Int] {
    guard limit > 1 else { return [] }
    var primes = [2]
    var number = 3
    
    while number <= limit {
        var isPrime = true
        for prime in primes {
            if prime > Int(Double(number).squareRoot()) {
                break
            }
            if number % prime == 0 {
                isPrime = false
                break
            }
        }
        if isPrime {
            primes.append(number)
        }
        number += 2
    }
    
    return primes
}
