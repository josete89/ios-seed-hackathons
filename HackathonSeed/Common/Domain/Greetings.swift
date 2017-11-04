//
//  Greetings.swift
//  HackathonSeed
//
//  Created by Alcala, Jose Luis on 11/4/17.
//  Copyright © 2017 Alcala, Jose Luis. All rights reserved.
//

import Foundation
import RxSwift

public protocol GreetingsInput {
    func sayHi() -> Observable<String>
}

final class Grettings:GreetingsInput {
    public func sayHi() -> Observable<String> {
        return Observable.just("Hi")
    }
}
