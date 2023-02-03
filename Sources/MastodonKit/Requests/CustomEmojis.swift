//
//  File.swift
//
//
//  Created by Luo Sheng on 2023/2/3.
//

import Foundation

public enum CustomEmojis {
  public static func all() -> Request<[Emoji]> {
    let method = HTTPMethod.get(.empty)

    return Request<[Emoji]>(path: "/api/v1/custom_emojis", method: method)
  }
}
