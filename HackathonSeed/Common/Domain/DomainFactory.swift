//
//  DomainFactory.swift
//  HackathonSeed
//
//  Created by Alcala, Jose Luis on 11/4/17.
//  Copyright © 2017 Alcala, Jose Luis. All rights reserved.
//

import Foundation

public enum DomainFactory {
    
    case gretings
    
    public func instantiate<T>() -> T {
        switch self {
        case .gretings:
            return Grettings() as! T
        }
    }
    
}
