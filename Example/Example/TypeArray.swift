//
//  TypeArray.swift
//  Example
//
//  Created by 程庆春 on 2016/10/18.
//  Copyright © 2016年 qiuncheng.com. All rights reserved.
//

import FontAwesomeKit_Swift

struct Types {
    static let types: [FontAwesomeType] = FontAwesomeType.allCases
}

extension RawRepresentable where Self: Hashable {

  private static func iterateEnum<T: Hashable>(_: T.Type) -> AnyIterator<T> {
    var index = 0

    let closure: () -> T? = {
      let next = withUnsafePointer(to: &index) {
        $0.withMemoryRebound(to: T.self, capacity: 1) { $0.pointee }
      }
      guard next.hashValue == index else { return nil }
      index += 1
      return next
    }

    return AnyIterator(closure)
  }

  static var allValues: [Self.RawValue] {
    return iterateEnum(self).map { $0.rawValue }
  }

  static var allCases: [Self] {
    return iterateEnum(self).map { $0 }
  }
  
}

