//
//  Double.swift
//  ConcurrencyOneMinute
//
//  Created by Papon Supamongkonchai on 21/4/2566 BE.
//

import Foundation

extension Double {
    func toCurrencyString() -> String {
        return String(format: "%.2f", self)
    }
}
