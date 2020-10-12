//
//  CounterLogicTests.swift
//  helloworldTests
//
//  Created by Captain America on 19/03/19.
//  Copyright © 2019 Captain America. All rights reserved.
//

@testable import helloworld
import XCTest
import MobiusTest

class CounterLogicTests: XCTestCase {
  private let updateSpec = UpdateSpec<Int, CounterEvent, CounterEffect>(update)

  func test_user_can_increment_counter() {
    updateSpec
      .given(0)
      .when(.increment)
      .then(
        assertThatNext(hasModel(1), hasNoEffects())
    )
  }

  func test_user_can_decrement_counter() {
    updateSpec
      .given(2)
      .when(.decrement)
      .then(
        assertThatNext(hasModel(1), hasNoEffects())
    )
  }

  func test_user_cannot_decrement_below_zero() {
    updateSpec
      .given(0)
      .when(.decrement)
      .then(
        assertThatNext(hasNoModel(), hasEffects([CounterEffect.cannotGoBelowZeroEffect]))
    )
  }
}
