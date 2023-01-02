//
//  File.swift
//  
//
//  Created by Luo Sheng on 2022/12/26.
//

import Foundation

public struct Poll: Codable {
  
  public struct Option: Codable {
    public let title: String
    public let votesCount: Int
  }
  
  public let id: String
  public let expiresAt: Date
  public let expired: Bool
  public let multiple: Bool
  public let votesCount: Int
  public let votersCount: Int
  public let options: [Option]
  public let emojis: [Emoji]
  public let voted: Bool?
  public let ownVotes: [Int]?
}
