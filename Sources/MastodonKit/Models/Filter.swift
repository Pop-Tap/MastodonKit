//
//  File.swift
//
//
//  Created by Luo Sheng on 2023/1/23.
//

import Foundation

public enum FilterContext: String, Codable {
  case home
  case notifications
  case `public`
  case thread
  case account
}

public enum FilterAction: String, Codable {
  case warn
  case hide
}

public struct Filter: Codable {
  public let id: String
  public let title: String
  public let context: [FilterContext]
  public let expiresAt: Date?
  public let filterAction: FilterAction
  public let keywords: [FilterKeyword]?
  public let statuses: [FilterStatus]?
}
