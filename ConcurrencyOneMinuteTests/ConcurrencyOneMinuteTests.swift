//
//  ConcurrencyOneMinuteTests.swift
//  ConcurrencyOneMinuteTests
//
//  Created by Papon Supamongkonchai on 21/4/2566 BE.
//

import XCTest
@testable import ConcurrencyOneMinute

final class when_calculating_after_input_number_btc: XCTestCase {

    func test_should_calculate_plus_number_successfully() {
        let currencyRatePerBTC = CurrencyRatePerBTC(rateCoinPerBTC: 28488.2626, nameCoin: "USD")
        let numberResultBTC = Calculator.RatePerBTC(currencyRatePerBTC: currencyRatePerBTC, numberBTC: 2)
        XCTAssertEqual("56976.53", numberResultBTC.resultCalcutor.toCurrencyString())
    }
}
