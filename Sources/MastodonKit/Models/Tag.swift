//
//  Tag.swift
//  MastodonKit
//
//  Created by Ornithologist Coder on 4/9/17.
//  Copyright © 2017 MastodonKit. All rights reserved.
//

import Foundation

public struct Tag: Codable, Hashable, Identifiable {
  
  public struct History: Codable, Hashable {
    public let day: String
    public let accounts: String
    public let uses: String
  }
  
  /// The hashtag, not including the preceding #.
  public let name: String
  /// The URL of the hashtag.
  public let url: String

  public var id: String { name }
  
  public let history: [History]?
  
  public let following: Bool?
}
