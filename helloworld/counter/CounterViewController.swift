//
//  CounterViewController.swift
//  helloworld
//
//  Created by Captain America on 19/03/19.
//  Copyright © 2019 Captain America. All rights reserved.
//

import UIKit
import MobiusCore

class CounterViewController: UIViewController {
  private lazy var effectHandler: CounterEffectHandler = {
    CounterEffectHandler(self)
  }()

  private lazy var loop = {
    Mobius
      .loop(update: update, effectHandler: self.effectHandler)
      .start(from: 0)
  }()

  @IBOutlet weak var counterLabel: UILabel!

  override func viewDidLoad() {
    super.viewDidLoad()

    loop.addObserver { (model) in
      DispatchQueue.main.async {
        self.counterLabel.text = "\(model)"
      }
    }
  }

  override func viewDidDisappear(_ animated: Bool) {
    loop.dispose()
    super.viewDidDisappear(animated)
  }

  // MARK: IBActions
  @IBAction func incrementTap(_ sender: UIButton) {
    loop.dispatchEvent(.increment)
  }

  @IBAction func decrementTap(_ sender: UIButton) {
    loop.dispatchEvent(.decrement)
  }
}

extension CounterViewController: CounterViewActions {
  func showCannotGoBelowZeroAlert() {
    DispatchQueue.main.async {
      let alertView = UIAlertController
        .init(title: "Bummer", message: "Can't go below zero :(", preferredStyle: .alert)
      alertView.addAction(UIAlertAction(title: "OK", style: .default))
      self.present(alertView, animated: true)
    }
  }
}
