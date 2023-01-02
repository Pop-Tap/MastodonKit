//
//  File.swift
//
//
//  Created by Luo Sheng on 2023/1/2.
//

import Foundation

public struct Field: Codable, Hashable {
  public let name: String
  public let value: String
  public let verifiedAt: Date?
}
