//
//  KWNumberFormatter.swift
//
//
//  Created by anna.bae on 2023/02/15.
//  Copyright © 2023 anna.bae. All rights reserved.
//

import Foundation

public final class KWFormatter {
    public init() { }
    
    /// 숫자(Double, Float, Decimal 지원), 천 단위 구분자 사용 여부, 소수점 플레이스홀더 필요 여부, 소수점 자리수를 순서대로 입력
    private func styledString(number: Any, comma: Bool, fillZero: Bool, maxDigit: Int) -> String? {
        
        let formatter = NumberFormatter()
        formatter.numberStyle = comma ? .decimal : .none
        formatter.maximumFractionDigits = maxDigit
        if fillZero {
            formatter.minimumFractionDigits = maxDigit
        }
        
        if let doubleValue = number as? Double {
            let resultString = formatter.string(from: doubleValue as NSNumber)
            return resultString
        } else if let decimalValue = number as? Decimal {
            // Decimal 타입으로 처리
            let resultString = formatter.string(from: decimalValue as NSNumber)
            return resultString
        } else {
            // 지원하지 않는 타입 처리
            return nil
        }
    }
    
    func roundNumber(_ number: Decimal, decimalPlaces: Int, roundingMode: NSDecimalNumber.RoundingMode) -> Decimal {
        var decimal = abs(number)
        var rounded = Decimal()
        NSDecimalRound(&rounded, &decimal, decimalPlaces, roundingMode)
        let sign: Decimal = number >= 0 ? 1 : -1
        return (rounded * sign)
    }
    
    public func format(number: Any, comma: Bool, roundMode: KWRoundMode, fillZero: Bool, maxDigit: Int) -> String? {
        if let doubleValue = number as? Double {
            // Double 타입을 Decimal로
            let decimalNumber = Decimal(doubleValue)
            switch roundMode {
            case .round:
                let num = roundNumber(decimalNumber, decimalPlaces: maxDigit, roundingMode: .plain)
                return styledString(number: num, comma: comma, fillZero: fillZero, maxDigit: maxDigit)
            case .ceil:
                let num = roundNumber(decimalNumber, decimalPlaces: maxDigit, roundingMode: .up)
                return styledString(number: num, comma: comma, fillZero: fillZero, maxDigit: maxDigit)
            case .floor:
                let num = roundNumber(decimalNumber, decimalPlaces: maxDigit, roundingMode: .down)
                return styledString(number: num, comma: comma, fillZero: fillZero, maxDigit: maxDigit)
            }
            
        } else if let floatValue = number as? Float {
            let decimalNumber = Decimal(Double(floatValue))
            // Float 타입으로 처리
            switch roundMode {
            case .round:
                let num = roundNumber(decimalNumber,
                                      decimalPlaces: maxDigit,
                                      roundingMode: .plain)
                return styledString(number: num,
                                    comma: comma,
                                    fillZero: fillZero,
                                    maxDigit: maxDigit)
            case .ceil:
                let num = roundNumber(decimalNumber,
                                      decimalPlaces: maxDigit,
                                      roundingMode: .up)
                return styledString(number: num,
                                    comma: comma,
                                    fillZero: fillZero,
                                    maxDigit: maxDigit)
            case .floor:
                let num = roundNumber(decimalNumber,
                                      decimalPlaces: maxDigit,
                                      roundingMode: .down)
                return styledString(number: num,
                                    comma: comma,
                                    fillZero: fillZero,
                                    maxDigit: maxDigit)
            }
            
        } else if let decimalValue = number as? Decimal {
            // Decimal 타입으로 처리
            switch roundMode {
            case .round:
                let num = roundNumber(decimalValue,
                                      decimalPlaces: maxDigit,
                                      roundingMode: .plain)
                return styledString(number: num,
                                    comma: comma,
                                    fillZero: fillZero,
                                    maxDigit: maxDigit)
            case .ceil:
                let num = roundNumber(decimalValue,
                                      decimalPlaces: maxDigit,
                                      roundingMode: .up)
                return styledString(number: num,
                                    comma: comma,
                                    fillZero: fillZero,
                                    maxDigit: maxDigit)
            case .floor:
                let num = roundNumber(decimalValue,
                                      decimalPlaces: maxDigit,
                                      roundingMode: .down)
                return styledString(number: num,
                                    comma: comma,
                                    fillZero: fillZero,
                                    maxDigit: maxDigit)
            }
            
        } else {
            return nil
        }
    }

    public enum KWRoundMode {
        /// 반올림, 음수의 경우 반내림, it works like awayFromZero.
        case round
        /// 올림
        case ceil
        /// 내림
        case floor
    }
}
 
