//
//  File.swift
//  
//
//  Created by Luo Sheng on 2023/1/2.
//

import Foundation

public enum Polls {
  
  public static func vote(id: String, choices: [Int]) -> Request<Poll> {
    let parameters = choices.map(toArrayOfParameters(withName: "choices"))
    let method = HTTPMethod.post(.parameters(parameters))
    
    return Request<Poll>(path: "/api/v1/polls/\(id)/votes", method: method)
  }
  
}
