//
//  Emoji.swift
//  MastodonKit
//
//  Created by Ornithologist Coder on 1/1/18.
//  Copyright © 2017 MastodonKit. All rights reserved.
//

import Foundation

public struct Emoji: Codable, Hashable {
  /// The shortcode of the emoji
  public let shortcode: String
  /// URL to the emoji static image
  public let staticUrl: URL
  /// URL to the emoji image
  public let url: URL

  public let visibleInPicker: Bool

  public let category: String
}
