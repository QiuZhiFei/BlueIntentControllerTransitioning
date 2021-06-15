//
//  BaseViewController.swift
//  BlueIntentControllerTransitioning_Example
//
//  Created by zhifei qiu on 2021/6/15.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import Foundation
import UIKit

class BaseViewController: UIViewController {
  deinit {
    debugPrint("📕 self \(self) call \(#function)")
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    debugPrint("📘 self \(self) call \(#function)")
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    debugPrint("📘 self \(self) call \(#function)")
  }
  
  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    debugPrint("📘 self \(self) call \(#function)")
  }
  
  override func viewDidDisappear(_ animated: Bool) {
    super.viewDidDisappear(animated)
    debugPrint("📘 self \(self) call \(#function)")
  }
}
