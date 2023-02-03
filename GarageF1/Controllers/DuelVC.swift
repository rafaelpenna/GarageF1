//
//  DuelVC.swift
//  GarageF1
//
//  Created by Rafael Penna on 02/02/23.
//

import UIKit

class DuelVC: UIViewController {
    
    var dataDriversLeft: [Duel] = [Duel(name: "Michael", lastName: "Schumascher", birthDate: "03/01/1969", age: "(53 anos)",birthPlace: "Hurth-Hermullheim", country: "Alemanha", championships: "7 (1994, 1995, 2000, 2002, 2003 e 2004)", races: "308", podiums: "155", points: "1566", wins: "91")]
    var dataDriversRight: [Duel] = [Duel(name: "Max", lastName: "Verstappen", birthDate: "30/09/1997", age: "(24 anos)",birthPlace: "Hasselt", country: "Bélgica",championships: "2 (2021 e 2022)", races: "163", podiums: "77", points: "2011", wins: "35")]
    
    var duelScreen: DuelScreen? = DuelScreen()

    override func loadView() {
        self.view = duelScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    lazy var backButton: UIButton = {
        let button: UIButton = duelScreen?.backButton ?? UIButton()
        button.isSelected = true
        button.addTarget(self, action: #selector(backScreen), for: .touchUpInside)
        return button
    }()

    @objc func backScreen() {
        let vc = HomeVC()
        navigationController?.popToViewController(vc, animated: true)
    }
}
