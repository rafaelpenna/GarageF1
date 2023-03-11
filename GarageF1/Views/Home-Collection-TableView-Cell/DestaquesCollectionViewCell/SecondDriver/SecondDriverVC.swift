//
//  SecondDriverVC.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 11/03/23.
//

import UIKit

class SecondDriverVC: UIViewController {
    
    let secondDriverScreen: SecondDriverScreen = SecondDriverScreen()
    
    override func loadView() {
        view = secondDriverScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        secondDriverScreen.delegate(delegate: self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
}

extension SecondDriverVC: secondDriverScreenProtocol {
    func tappedBackButton() {
        self.navigationController?.popViewController(animated: true)
    }
}
