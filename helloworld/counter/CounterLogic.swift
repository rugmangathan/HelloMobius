//
//  CounterLogic.swift
//  helloworld
//
//  Created by Captain America on 19/03/19.
//  Copyright © 2019 Captain America. All rights reserved.
//

import MobiusCore

func update(model: Int, event: CounterEvent) -> Next<Int, CounterEffect> {
  switch event {
  case .increment:
    return Next.next(model + 1)
  case .decrement:
    return model > 0
      ? Next.next(model - 1)
      : Next.dispatchEffects([CounterEffect.cannotGoBelowZeroEffect])
  }
}
