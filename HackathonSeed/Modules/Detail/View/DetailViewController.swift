//
//  DetailDetailViewController.swift
//  HackathonSeed
//
//  Created by Alcala, Jose Luis on 04/11/2017.
//  Copyright 2017 TestCompany. All rights reserved.
//

import UIKit
import RxSwift


final class DetailViewController: UIViewController{

	var viewModel:DetailViewModelType?;

	static public func instantiate( vm: DetailViewModelType = ViewModelsFactory.detail.instantiate() ) -> DetailViewController {
        let vc = Storyboard.Main.instantiate(DetailViewController.self)
        vc.viewModel = vm
        return vc
    }

	override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        bindUI()
    }
	
	override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    private func bindUI(){
    
    }
	

}
