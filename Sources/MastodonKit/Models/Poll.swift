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
    
    private enum CodingKeys: String, CodingKey {
      case title
      case votesCount = "votes_count"
    }
  }
  
  public let id: String
  public let expiresdAt: Date
  public let expired: Bool
  public let multiple: Bool
  public let votesCount: Int
  public let votersCount: Int
  public let options: [Option]
  public let emojis: [Emoji]
  public let votes: Bool?
  public let ownVotes: [Int]?
  
  private enum CodingKeys: String, CodingKey {
    case id
    case expiresdAt = "expires_at"
    case expired
    case multiple
    case votesCount = "votes_count"
    case votersCount = "voters_count"
    case options
    case emojis
    case votes
    case ownVotes = "own_votes"
  }
}
