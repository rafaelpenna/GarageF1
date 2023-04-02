//
//  RecoverPasswordVC.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 02/04/23.
//

import UIKit

class RecoverPasswordVC: UIViewController {
    
    var recoverPasswordScreen: RecoverPasswordScreen = RecoverPasswordScreen()
    
    override func loadView() {
        view = recoverPasswordScreen
        recoverPasswordScreen.delegate(delegate: self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
    }

}

extension RecoverPasswordVC: RecoverPasswordScreenProtocol {
    func actionSendEmailButton() {
        let alert = UIAlertController(title: "GarageF1", message: "Um e-mail foi enviado, siga as instruções para recuperar sua senha.", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { action in
            print("Botão ok pressionado")
        }))
        
        present(alert, animated: true)
    }
    
    func actionBackButton() {
        self.navigationController?.popToRootViewController(animated: true)
    }
}
