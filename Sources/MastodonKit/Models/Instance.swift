//
//  Instance.swift
//  MastodonKit
//
//  Created by Ornithologist Coder on 4/9/17.
//  Copyright © 2017 MastodonKit. All rights reserved.
//

import Foundation

public struct Instance: Codable {
  public struct Configuration: Codable {
    public struct Urls: Codable {
      public let streaming: URL
    }

    public struct Accounts: Codable {
      public let maxFeaturedTags: Int
    }

    public struct Statuses: Codable {
      public let maxCharacters: Int
      public let maxMediaAttachments: Int
      public let charactersReservedPerUrl: Int
    }

    public struct MediaAttachments: Codable {
      public let supportedMimeTypes: [String]
      public let imageSizeLimit: Int
      public let imageMatrixLimit: Int
      public let videoSizeLimit: Int
      public let videoFrameRateLimit: Int
      public let videoMatrixLimit: Int
    }

    public struct Polls: Codable {
      public let maxOptions: Int
      public let maxCharactersPerOption: Int
      public let minExpiration: Int
      public let maxExpiration: Int
    }

    public struct Translation: Codable {
      public let enabled: Bool
    }

    public let urls: Urls
    public let accounts: Accounts
    public let statuses: Statuses
    public let mediaAttachments: MediaAttachments
    public let polls: Polls
    public let translation: Translation
  }

  /// URI of the current instance.
  public let domain: String
  /// The instance's title.
  public let title: String
  /// A description for the instance.
  public let description: String
  /// The Mastodon version used by instance (as of version 1.3).
  public let version: String?
  
  public let configuration: Configuration?
}
