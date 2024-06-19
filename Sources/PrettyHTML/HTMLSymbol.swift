//
// Copyright (c) 2023 - Present Cory Ginsberg
// Licensed under Apache License 2.0
//

struct HTMLSymbol {
  enum Kind: String, CaseIterable {
    case paragraph = "<p>"
    case italic = "<i>"
    case code = "<code>"
  }

  let kind: Kind
  var string: String
}

extension HTMLSymbol {
  static func paragraph(_ string: String) -> HTMLSymbol {
    return HTMLSymbol(kind: .paragraph, string: string)
  }

  static func italic(_ string: String) -> HTMLSymbol {
    return HTMLSymbol(kind: .italic, string: string)
  }

  static func code(_ string: String) -> HTMLSymbol {
    return HTMLSymbol(kind: .code, string: string)
  }

  var allKinds: [Kind] {
//    Kind.allCases.
    return [.paragraph, .italic, .code]
  }
}
