//
//  LoginSettings.swift
//  MastodonKit
//
//  Created by Ornithologist Coder on 4/18/17.
//  Copyright © 2017 MastodonKit. All rights reserved.
//

import Foundation

public struct LoginSettings: Codable, Hashable {
    /// The user's access token.
    public let accessToken: String
    /// Access token type.
    public let tokenType: String
    /// Date when the access token was retrieved.
    public let createdAt: TimeInterval
    /// Access scope.
    private let scope: String
    /// Access scopes.
    public var scopes: [AccessScope] {
        return scope
            .components(separatedBy: .whitespaces)
            .compactMap(toAccessScope)
    }
}
