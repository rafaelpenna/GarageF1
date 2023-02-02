//
//  DuelVC.swift
//  GarageF1
//
//  Created by Rafael Penna on 02/02/23.
//

import UIKit

class DuelVC: UIViewController {
    
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
