//
//  ViewController.swift
//  BlueIntentControllerTransitioning
//
//  Created by qiuzhifei on 06/15/2021.
//  Copyright (c) 2021 qiuzhifei. All rights reserved.
//

import UIKit
import BlueIntent

class ViewController: BaseViewController {
  struct TableViewCellSource {
    let title: String
    let handler: () -> Void
  }
  
  var sources: [TableViewCellSource] = []
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let tableView = UITableView(frame: .zero, style: .plain)
    view.addSubview(tableView)
    tableView.bi.pinEdgeToSuperview()
    
    tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    tableView.delegate = self
    tableView.dataSource = self
    
    sources.append(
      TableViewCellSource(title: "present, pop to dismiss", handler: { [weak self] () in
        guard let `self` = self else { return }
        let vc = DetailViewController()
        vc.bi.transitioningData = .present
        self.present(vc, animated: true, completion: nil)
      }))
    
    sources.append(
      TableViewCellSource(title: "present, pull to dismiss", handler: { [weak self] () in
        guard let `self` = self else { return }
        let vc = DetailViewController()
        vc.bi.transitioningData = .present.bi.var({ data in
          var data = data
          data.edgeTypes = [.topToBottom]
          return data
        })
        self.present(vc, animated: true, completion: nil)
      }))
    
    sources.append(
      TableViewCellSource(title: "custom, pop&pop to dismiss", handler: { [weak self] () in
        guard let `self` = self else { return }
        let vc = DetailViewController()
        vc.bi.transitioningData = .present.bi.var({ data in
          var data = data
          data.edgeTypes = [.leftToRight, .topToBottom]
          data.maskColor = UIColor.black.withAlphaComponent(0.15)
          data.transitionDuration = 0.5
          return data
        })
        self.present(vc, animated: true, completion: nil)
      }))
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return sources.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
    
    let source = sources[indexPath.row]
    cell.textLabel?.text = source.title
    
    return cell
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    tableView.deselectRow(at: indexPath, animated: true)
    let source = sources[indexPath.row]
    source.handler()
  }
}
