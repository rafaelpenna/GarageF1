//
//  RecoverPasswordVC.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 02/04/23.
//

import UIKit
import Firebase

class RecoverPasswordVC: UIViewController {
    
    var recoverPasswordScreen: RecoverPasswordScreen = RecoverPasswordScreen()
    var auth = Auth.auth()
    var alert: Alert?
    
    override func loadView() {
        view = recoverPasswordScreen
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configDelegateAndAuth()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
        self.recoverPasswordScreen.sendEmailButton.isEnabled = false
    }
    
    private func configDelegateAndAuth() {
        recoverPasswordScreen.delegate(delegate: self)
        recoverPasswordScreen.configTextFieldDelegate(delegate: self)
        alert = Alert(controller: self)
        auth = Auth.auth()
    }
    
}

extension RecoverPasswordVC: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        recoverPasswordScreen.validaTextFields()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        recoverPasswordScreen.emailTextField.becomeFirstResponder()
        textField.resignFirstResponder()
        return true
    }
}

extension RecoverPasswordVC: RecoverPasswordScreenProtocol {
    func actionSendEmailButton() {
        
        let garageF1 = RecoverPasswordViewModel.Warnings.garageF1
        let recoverPassword = RecoverPasswordViewModel.Warnings.recoverEmail
        let tapEmail = RecoverPasswordViewModel.Warnings.tapEmail
        let ok = RecoverPasswordViewModel.Warnings.ok
        let emptyTF = RecoverPasswordViewModel.Warnings.emptyTF
        
        
        if let emailTextField = recoverPasswordScreen.emailTextField.text, !emailTextField.isEmpty {
            let alert = UIAlertController(title: garageF1.getDescription(), message: recoverPassword.getDescription(), preferredStyle: .alert)

            alert.addAction(UIAlertAction(title: ok.getDescription(), style: .default, handler: { action in
                self.auth.sendPasswordReset(withEmail: emailTextField)
            }))

            present(alert, animated: true)
        } else {
            self.alert?.getAlert(titulo: garageF1.getDescription(), message: tapEmail.getDescription())
        }
    }
    
    func actionBackButton() {
        self.navigationController?.popToRootViewController(animated: true)
    }
}
