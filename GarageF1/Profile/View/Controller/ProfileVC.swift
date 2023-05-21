//
//  ProfileVC.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 01/04/23.
//

import UIKit

class ProfileVC: UIViewController {
    
    var profileScreen: ProfileScreen = ProfileScreen()
    var alert: Alert?
    
    override func loadView() {
        view = profileScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configProtocolAndAlert()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
    }
    
    private func configProtocolAndAlert() {
        profileScreen.delegate(delegate: self)
        alert = Alert(controller: self)
    }
}

extension ProfileVC: ProfileScreenProtocol {
    func actionSaveButton() {
        
        let garageF1 = ProfileViewModel.namesAndWarnings.garageF1
        let savedChanges = ProfileViewModel.namesAndWarnings.savedChanges
        
        self.alert?.getAlert(titulo: garageF1.getDescription(), message: savedChanges.getDescription())
    }
    
    func actionLogOutButton() {
        let logoutVC: LogoutVC = LogoutVC()
        let atention = ProfileViewModel.namesAndWarnings.atention
        let outGarageF1 = ProfileViewModel.namesAndWarnings.outGarageF1
        let out = ProfileViewModel.namesAndWarnings.out
        let cancel = ProfileViewModel.namesAndWarnings.cancel
        
        let alert = UIAlertController(title: atention.getDescription(), message: outGarageF1.getDescription(), preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: out.getDescription(), style: .destructive, handler: { action in
            
            logoutVC.modalPresentationStyle = .fullScreen
            self.present(logoutVC, animated: true)
            
            self.tabBarController?.navigationController?.popToRootViewController(animated: true)
            
        }))
        
        alert.addAction(UIAlertAction(title: cancel.getDescription(), style: .cancel))
        
        present(alert, animated: true)
    }
}
