//
//  ClientApplication.swift
//  MastodonKit
//
//  Created by Ornithologist Coder on 4/17/17.
//  Copyright © 2017 MastodonKit. All rights reserved.
//

import Foundation

public struct  ClientApplication: Codable, Hashable {
    /// The application ID.
    public let id: String
    /// Where the user should be redirected after authorization.
    public let redirectUri: String
    /// The application client ID.
    public let clientId: String
    /// The application client secret.
    public let clientSecret: String
}
