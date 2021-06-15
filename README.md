# BlueIntentControllerTransitioning

[![CI Status](https://travis-ci.com/QiuZhiFei/BlueIntentControllerTransitioning.svg?branch=master)](https://travis-ci.com/qiuzhifei/BlueIntentControllerTransitioning)
[![Version](https://img.shields.io/cocoapods/v/BlueIntentControllerTransitioning.svg?style=flat)](https://cocoapods.org/pods/BlueIntentControllerTransitioning)
[![License](https://img.shields.io/cocoapods/l/BlueIntentControllerTransitioning.svg?style=flat)](https://cocoapods.org/pods/BlueIntentControllerTransitioning)
[![Platform](https://img.shields.io/cocoapods/p/BlueIntentControllerTransitioning.svg?style=flat)](https://cocoapods.org/pods/BlueIntentControllerTransitioning)

BlueIntentControllerTransitioning is a framework for drag to dismiss a modal controller.

present 页面支持右滑/下拉关闭.


![gif](https://raw.githubusercontent.com/QiuZhiFei/static/master/imgs/github/BlueIntentControllerTransitioning.gif)

## Requirements

## Installation

BlueIntentControllerTransitioning is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'BlueIntentControllerTransitioning'
```

## Usage
```
import BlueIntentControllerTransitioning
```
```
let vc = UIViewController()
vc.bi.transitioningData = .present
self.present(vc, animated: true, completion: nil)
```
Custom
```
let vc = UIViewController()
vc.bi.transitioningData = .present.bi.var({ data in
    var data = data
    data.edgeTypes = [.leftToRight, .topToBottom]
    data.maskColor = UIColor.black.withAlphaComponent(0.15)
    data.transitionDuration = 0.5
    return data
})
self.present(vc, animated: true, completion: nil)
```

## Manually
```
make
```

## Author

qiuzhifei, qiuzhifei521@gmail.com

## License

BlueIntentControllerTransitioning is available under the MIT license. See the LICENSE file for more info.





