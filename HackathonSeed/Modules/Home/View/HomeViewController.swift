//
//  ViewController.swift
//  HackathonSeed
//
//  Created by Alcala, Jose Luis on 11/4/17.
//  Copyright © 2017 Alcala, Jose Luis. All rights reserved.
//

import UIKit

final class HomeViewController: UIViewController {

    var vm:HomeViewModelType?
    
    static public func instantiate( vm: HomeViewModelType = ViewModelsFactory.home.instantiate() ) -> HomeViewController {
        let vc = Storyboard.Main.instantiate(HomeViewController.self)
        vc.vm = vm
        return vc
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

