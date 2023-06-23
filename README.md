# KWNumberFormatter

[![CI Status](https://img.shields.io/travis/anna.bae/KWNumberFormatter.svg?style=flat)](https://travis-ci.org/anna.bae/KWNumberFormatter)
[![Version](https://img.shields.io/cocoapods/v/KWNumberFormatter.svg?style=flat)](https://cocoapods.org/pods/KWNumberFormatter)
[![License](https://img.shields.io/cocoapods/l/KWNumberFormatter.svg?style=flat)](https://cocoapods.org/pods/KWNumberFormatter)
[![Platform](https://img.shields.io/cocoapods/p/KWNumberFormatter.svg?style=flat)](https://cocoapods.org/pods/KWNumberFormatter)

## Introduction

To run the example project, clone the repo, and run `pod install` from the Example directory first.

KWNumberFormatter is a library that facilitates easy handling of the decimal part of Double, Float, and Decimal types. It allows you to limit the number of decimal places or fill the decimal part with zeros. For the integer part, you can insert or remove commas as needed.

## Requirements

## Installation

KWNumberFormatter is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'KWNumberFormatter'
```

## How to use

1. import KWNumberFormatter
2. make formatter instance by initializing KWFormatter
3. change shape of number using function format() 
```
import KWNumberFormatter

let formatter = KWFormatter()
let decimal: Decimal = 23423524.12334
let decStr = formatter.format(number: decimal, comma: true, roundMode: .ceil, fillZero: true, maxDigit: 9) //  returns "23,423,524.123340000"

```

## About roundMode

The RoundMode in KWNumberFormatter is used for the decimal part of the number. For example, if you choose the "ceil" mode and specify the maximum number of decimal digits, the remaining decimal digits will be removed and the last digit will be rounded up.
The "round" mode works like 'awayFromZero' of 'FloatingPointRoundingRule'

## Author

anna.bae, annabae.dev@gmail.com

## License

KWNumberFormatter is available under the MIT license. See the LICENSE file for more info.
