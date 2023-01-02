//
//  File.swift
//
//
//  Created by Luo Sheng on 2023/1/2.
//

import Foundation

extension KeyedDecodingContainer {
  func decode(_ type: URL.Type, forKey key: K) throws -> URL {
    let urlString = try decode(String.self, forKey: key)
    guard let encodedUrlString = urlString.addingPercentEncoding(withAllowedCharacters: .urlFragmentAllowed),
          let url = URL(string: encodedUrlString)
    else {
      throw DecodingError.dataCorrupted(.init(codingPath: codingPath, debugDescription: "The stringvalue for the key \(key) couldn't be converted into a URL value: \(urlString)"))
    }
    return url
  }

  // decoding an optional URL
  func decodeIfPresent(_ type: URL.Type, forKey key: K) throws -> URL? {
    guard let urlString = try? decode(String.self, forKey: key),
          let encodedUrlString = urlString.addingPercentEncoding(withAllowedCharacters: .urlFragmentAllowed),
          let url = URL(string: encodedUrlString)
    else {
      return nil
    }
    return url
  }
}
