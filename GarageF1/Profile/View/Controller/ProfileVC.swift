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
        profileScreen.delegate(delegate: self)
        alert = Alert(controller: self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
    }
}

extension ProfileVC: ProfileScreenProtocol {
    func actionSaveButton() {
        
        self.alert?.getAlert(titulo: "GarageF1", message: "Alterações salvas com sucesso!")
    }
    
    func actionLogOutButton() {
        let logoutVC: LogoutVC = LogoutVC()
        
        let alert = UIAlertController(title: "Atenção!", message: "Deseja realmente sair do GarageF1?", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Sair", style: .destructive, handler: { action in
            
            logoutVC.modalPresentationStyle = .fullScreen
            self.present(logoutVC, animated: true)
            
            self.tabBarController?.navigationController?.popToRootViewController(animated: true)
            
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        
        present(alert, animated: true)
    }
}
