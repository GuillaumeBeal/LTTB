# LTTB

[![CI Status](http://img.shields.io/travis/Guillaume Béal/LTTB.svg?style=flat)](https://travis-ci.org/Guillaume Béal/LTTB)
[![Version](https://img.shields.io/cocoapods/v/LTTB.svg?style=flat)](http://cocoapods.org/pods/LTTB)
[![License](https://img.shields.io/cocoapods/l/LTTB.svg?style=flat)](http://cocoapods.org/pods/LTTB)
[![Platform](https://img.shields.io/cocoapods/p/LTTB.svg?style=flat)](http://cocoapods.org/pods/LTTB)

## Largest Triangle Three Buckets 

Largest Triangle Three Buckets downsampling algorithm in Swift.


>The visualization isn’t meant to give you access to the individual values of tens of thousands of data points on a line, it’s meant to show you how that data looks and is trending over time."(http://blackops.io/blog/2014/05/time-series-graphs-and-downsampling/)

This algorithm shrinks a timeserie and keeps the visual apsect of the serie.

Pre-process your time serie with LTTB in order to display a thousands of points on a Graph.

Works well with Charts API https://github.com/danielgindi/Charts

## Example

To run the LTTB downsampler, clone the repo, and run `pod install` from the LTTB directory first.


## Installation

LTTB is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "LTTB"
```

## Usage
In case you installed LTTB via CocoaPods you need to import it (add this somewhere at the top of your source code file):

```swift
import LTTB
```

* Dataset: The array (of tuples) to downsample
* threshold: The number of element to keep

```swift
let lttb = LTTB()
let result = lttb.downSample(dataSet: [(x: Double,y: Double)], threshold: Int)
```

In any cases the function will return an array of tuples (x: Double,y: Double):
```swift
[(x: Double,y: Double)]
```


## Bibliography
* [Downsampling Time Series for Visual Representation](http://skemman.is/en/item/view/1946/15343)
by Sveinn Steinarsson.


## License

LTTB is available under the MIT license. See the LICENSE file for more info.

## Author

Guillaume Béal

Original version by Sveinn Steinarsson(https://github.com/sveinn-steinarsson/highcharts-downsample)

