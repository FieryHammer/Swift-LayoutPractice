//
//  LeagueVC.swift
//  LayoutPractice
//
//  Created by Horvath, Mate on 2018. 10. 10..
//  Copyright © 2018. Finastra. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player: Player!
    
    @IBOutlet weak var nextButton: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player()

        // Do any additional setup after loading the view.
    }
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    func selectLeague(leagueType: String) {
        player.desiredLeague = leagueType
        nextButton.isEnabled = true
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }
    
}
