//
//  DetailDetailViewModel.swift
//  HackathonSeed
//
//  Created by Alcala, Jose Luis on 04/11/2017.
//  Copyright 2017 TestCompany. All rights reserved.
//

import Foundation
import RxSwift

public protocol DetailViewModelInput {
    
}

public protocol DetailViewModelOutput {
    
}

public protocol DetailViewModelType {

    var input: DetailViewModelInput { get }
    var output: DetailViewModelOutput { get }
}

final class DetailViewModel:DetailViewModelType,DetailViewModelInput,DetailViewModelOutput {

	private let dispose = DisposeBag()
	
    public var input: DetailViewModelInput { return self }
    public var output: DetailViewModelOutput { return self }

    public init() {

    }
	
}
