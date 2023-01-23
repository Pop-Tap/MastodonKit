//
//  File.swift
//
//
//  Created by Luo Sheng on 2023/1/23.
//

import Foundation

public struct FilterResult: Codable {
  public let filter: Filter
  public let keywordMatches: [String]?
  public let statusMatches: [String]?
}
