//
//  LeagueVC.swift
//  LayoutPractice
//
//  Created by Horvath, Mate on 2018. 10. 10..
//  Copyright © 2018. Finastra. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
}
