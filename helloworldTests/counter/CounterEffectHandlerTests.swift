//
//  CounterEffectHandlerTests.swift
//  helloworldTests
//
//  Created by Captain America on 20/03/19.
//  Copyright © 2019 Captain America. All rights reserved.
//

@testable import helloworld
import XCTest

class CounterEffectHandlerTests: XCTestCase {
  func test_shows_bummer_when_effect_is_cannot_go_below_zero() {
    // Setup
    let effectHandler = CounterEffectHandler()
    let counterViewActions = MockCounterViewActions()
    effectHandler.counterViewActions = counterViewActions

    // Act
    effectHandler.handle(CounterEffect.cannotGoBelowZeroEffect)

    // Assert
    XCTAssertEqual(counterViewActions.showAlert, true)
  }
}
