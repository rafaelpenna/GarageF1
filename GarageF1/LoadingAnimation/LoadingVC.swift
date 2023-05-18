//
//  testeVC.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 10/05/23.
//

import UIKit

class LoadingVC: UIViewController {
    
    var loadingScreen: LoadingScreen = LoadingScreen()
    
    override func loadView() {
        view = loadingScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadingScreen.delegate(delegate: self)
    }
}

extension LoadingVC: LoadingScreenProtocol {
    func actionTimer() {
        dismiss(animated: true)
    }
}
