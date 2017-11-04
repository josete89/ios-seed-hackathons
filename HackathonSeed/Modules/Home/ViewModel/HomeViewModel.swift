//
//  HomeViewModel.swift
//  HackathonSeed
//
//  Created by Alcala, Jose Luis on 11/4/17.
//  Copyright © 2017 Alcala, Jose Luis. All rights reserved.
//

import Foundation
import RxSwift

public protocol HomeViewModelInput {
    func greetsPressed()
}

public protocol HomeViewModelOutput {
    var greets: PublishSubject<String> { get }
}

public protocol HomeViewModelType {
    var input:HomeViewModelInput { get }
    var output: HomeViewModelOutput { get }
}


internal final class HomeViewModel: HomeViewModelType,HomeViewModelInput,HomeViewModelOutput {
    
    let domain:GreetingsInput
    let dispose = DisposeBag()
    
    public var input: HomeViewModelInput { return self }
    public var output: HomeViewModelOutput { return self }
    
    public var greets: PublishSubject<String>
    
    public init(domain:GreetingsInput) {
        self.domain = domain
        self.greets = PublishSubject()
    }
    
    public func greetsPressed() {
        domain.sayHi().subscribe {[weak self] (event) in
            guard let str = event.element else { return; }
            self?.greets.onNext(str)
        }.disposed(by: dispose)
    }
    
}
