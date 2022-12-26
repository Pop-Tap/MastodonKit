//
//  File.swift
//  
//
//  Created by Luo Sheng on 2022/12/26.
//

import Foundation

public struct Poll: Codable {
  
  public struct Option: Codable {
    let title: String
    let votesCount: Int
    
    private enum CodingKeys: String, CodingKey {
      case title
      case votesCount = "votes_count"
    }
  }
  
  let id: String
  let expiredAt: Date
  let expired: Bool
  let multiple: Bool
  let votesCount: Int
  let votersCount: Int
  let options: [Option]
  let emojis: [Emoji]
  let votes: Bool?
  let ownVotes: [Int]?
  
  private enum CodingKeys: String, CodingKey {
    case id
    case expiredAt = "expired_at"
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
