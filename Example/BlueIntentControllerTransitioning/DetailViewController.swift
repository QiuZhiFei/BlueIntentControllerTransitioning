//
//  DetailViewController.swift
//  BlueIntentControllerTransitioning_Example
//
//  Created by zhifei qiu on 2021/6/15.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import Foundation
import UIKit
import BlueIntent
import SDCycleScrollView

class DetailViewController: BaseViewController {
  private var presentData: BlueIntent.ControllerTransitioning.Present.Data? {
    return self.bi.transitioningData as? BlueIntent.ControllerTransitioning.Present.Data
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = UIColor.bi.hex(0x9E8B22)
    
    view.addSubview(
      UILabel().bi.var { [weak self] it in
        it.frame = CGRect(x: 0, y: 80, width: UIScreen.main.bounds.width, height: 50)
        it.textColor = .white
        it.numberOfLines = 0
        
        var text = ""
        if let presentData = self?.presentData {
          if presentData.edgeTypes.contains(.leftToRight) {
            if text.count > 0 {
              text.append("\n")
            }
            text.append("# Pop gesture to dismiss modal view")
          }
          if presentData.edgeTypes.contains(.topToBottom) {
            if text.count > 0 {
              text.append("\n")
            }
            text.append("# Pull gesture to dismiss modal view")
          }
        }
        it.text = text
        
        return it
      }
    )
    
    view.addSubview(
      SDCycleScrollView().bi.var({ it in
        let width = UIScreen.main.bounds.width
        let height = width * 330 / 750
        it.frame = CGRect(x: 0, y: 160, width: width, height: height)
        it.autoScrollTimeInterval = 4
        it.imageURLStringsGroup = [
          "https://img2.doubanio.com/dae/niffler/niffler/images/20b582de-c845-11eb-8b85-36f7c4a3878e.jpg",
          "https://img9.doubanio.com/dae/niffler/niffler/images/1c673900-b30c-11eb-8997-42e1126aff54.jpg",
          "https://img2.doubanio.com/dae/niffler/niffler/images/ba3593ac-3486-11eb-9fb1-b6fea1a11a23.jpg",
        ]
        return it
      })
    )
  }
}
