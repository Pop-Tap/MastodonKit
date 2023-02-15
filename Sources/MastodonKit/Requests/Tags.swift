//
//  File.swift
//  
//
//  Created by Luo Sheng on 2023/2/15.
//

import Foundation

/// `Favourites` requests.
public enum Tags {
  public static func followed() -> Request<[Tag]> {
    let method = HTTPMethod.get(.empty)
    return Request<[Tag]>(path: "/api/v1/followed_tags", method: method)
  }
}
