//
//  Storyboard.swift
//  HackathonSeed
//
//  Created by Alcala, Jose Luis on 11/4/17.
//  Copyright © 2017 Alcala, Jose Luis. All rights reserved.
//

import UIKit

enum Storyboard:String {
    case Main
    
    public func instantiate<VC: UIViewController>(_ viewController: VC.Type,
                                                  inBundle bundle: Bundle = .main) -> VC {
        guard
            let vc = UIStoryboard(name: self.rawValue, bundle: bundle)
                .instantiateViewController(withIdentifier: VC.storyboardIdentifier) as? VC
            else { fatalError("Couldn't instantiate \(VC.storyboardIdentifier) from \(self.rawValue)") }
        return vc
    }
}
