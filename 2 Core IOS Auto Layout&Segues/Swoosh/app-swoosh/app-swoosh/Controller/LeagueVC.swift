//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Yasin on 11/19/18.
//  Copyright © 2018 Yasin. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player: Player!
    
    
    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }
    @IBAction func onNextTapped(_ sender: Any) {
        
        performSegue(withIdentifier: "skillVCSegue", sender: self)
        
        
    }
    
    // Button actions
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")

    }
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")

    }
    
    // specific functions
    
    func selectLeague(leagueType: String) {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // as? -> we use it because destination is a UIViewController object
        if let skillVC = segue.destination as? SkillVC { // try and run if let
            skillVC.player = player
        }
    }
    



}
