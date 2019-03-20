//
//  MockCounterViewActions.swift
//  helloworldTests
//
//  Created by Captain America on 20/03/19.
//  Copyright © 2019 Captain America. All rights reserved.
//

@testable import helloworld

class MockCounterViewActions: CounterViewActions {
  var showAlert: Bool = false
  func showCannotGoBelowZeroAlert() {
    showAlert = true
  }
}
