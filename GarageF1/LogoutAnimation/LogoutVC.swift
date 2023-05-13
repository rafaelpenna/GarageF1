//
//  LogoutVC.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 10/05/23.
//

import UIKit

class LogoutVC: UIViewController {
    
    var logoutScreen: LogoutScreen = LogoutScreen()
    
    override func loadView() {
        view = logoutScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        logoutScreen.delegate(delegate: self)
    }

}

extension LogoutVC: LogoutScreenProtocol {
    func actionTimer() {
        dismiss(animated: true)
    }
}
