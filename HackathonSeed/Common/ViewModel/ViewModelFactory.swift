//
//  ViewModelFactory.swift
//  HackathonSeed
//
//  Created by Alcala, Jose Luis on 11/4/17.
//  Copyright © 2017 Alcala, Jose Luis. All rights reserved.
//

import UIKit

public enum ViewModelsFactory {
    
    case home
    
    public func instantiate<T>() -> T {
        switch self {
        case .home:
            let domain:GreetingsInput = DomainFactory.gretings.instantiate()
            return HomeViewModel(domain: domain) as! T
        }
    }
    
}
