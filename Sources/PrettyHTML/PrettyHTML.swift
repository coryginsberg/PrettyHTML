//
// Copyright (c) 2023 - Present Cory Ginsberg
// Licensed under Apache License 2.0
//

import CxxStdlib
import html2md
import SwiftSoup

public struct PrettyHTML {
//  let baseFontSize: CGFloat = 16
//  html2md.
  public init(fromHTML html: inout std.string) {
    let boolPointer = UnsafeMutablePointer<Bool>(bitPattern: 0)
    html2md.Convert(&html, boolPointer)
  }

//  public mutating func attributedString(from string: String) -> NSAttributedString {
//    let attributedString = NSMutableAttributedString(string: string)
//    return attributedString
//  }
}
