//
//  URLComponents.swift
//  MastodonKit
//
//  Created by Ornithologist Coder on 4/22/17.
//  Copyright © 2017 MastodonKit. All rights reserved.
//

import Foundation

extension URLComponents {
  init?<A>(baseURL: String, request: Request<A>) {
    guard
      let realBaseURL = URL(string: baseURL),
      let encodedPath = request.path.addingPercentEncoding(withAllowedCharacters: .urlFragmentAllowed),
      let completeURL = URL(string: encodedPath, relativeTo: realBaseURL)
    else {
      return nil
    }

    self.init(url: completeURL, resolvingAgainstBaseURL: true)

    path = request.path
    queryItems = request.method.queryItems
  }
}
