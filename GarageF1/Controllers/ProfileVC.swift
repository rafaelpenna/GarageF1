//
//  ProfileVC.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 01/04/23.
//

import UIKit

class ProfileVC: UIViewController {
    
    var profileScreen: ProfileScreen = ProfileScreen()
    
    override func loadView() {
        view = profileScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        profileScreen.delegate(delegate: self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
    }
}

extension ProfileVC: ProfileScreenProtocol {
    func actionLogOutButton() {
        let alert = UIAlertController(title: "Atenção!", message: "Deseja realmente sair do GarageF1?", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Sair", style: .destructive, handler: { action in
            print("Botão sair pressionado")
            self.tabBarController?.navigationController?.popToRootViewController(animated: true)
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        
        present(alert, animated: true)
    }
}
