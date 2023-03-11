//
//  FirstDriverVC.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 11/03/23.
//

import UIKit

class FirstDriverVC: UIViewController {
    
    let firstDriverScreen: FirstDriverScreen = FirstDriverScreen()
    
    override func loadView() {
        view = firstDriverScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        firstDriverScreen.delegate(delegate: self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
}

extension FirstDriverVC: firstDriverScreenProtocol {
    func tappedBackButton() {
        self.navigationController?.popViewController(animated: true)
    }
}


