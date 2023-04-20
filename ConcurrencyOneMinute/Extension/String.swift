//
//  String.swift
//  ConcurrencyOneMinute
//
//  Created by Papon Supamongkonchai on 21/4/2566 BE.
//

import Foundation

extension String {
    func convertNemericStringToDouble() -> Double {
        let strWithoutComma = self.replacingOccurrences(of: ",", with: "")
        return Double(strWithoutComma) ?? 0.0

    }
}
