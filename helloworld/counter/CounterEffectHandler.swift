//
//  CounterEffectHandler.swift
//  helloworld
//
//  Created by Captain America on 19/03/19.
//  Copyright © 2019 Captain America. All rights reserved.
//

import MobiusExtras

class CounterEffectHandler: ConnectableClass<CounterEffect, CounterEvent> {
  let counterViewActions: CounterViewActions

  init(_ counterViewActions: CounterViewActions) {
    self.counterViewActions = counterViewActions
  }

  override func handle(_ input: CounterEffect) {
    switch input {
      case .cannotGoBelowZeroEffect:
        counterViewActions.showCannotGoBelowZeroAlert()
    }
  }
}
