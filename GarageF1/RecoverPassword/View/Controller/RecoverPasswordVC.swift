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
    
    override func loadView() {
        view = recoverPasswordScreen
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        configDelegate()
        auth = Auth.auth()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
        self.recoverPasswordScreen.sendEmailButton.isEnabled = false
    }
    
    private func configDelegate() {
        recoverPasswordScreen.delegate(delegate: self)
        recoverPasswordScreen.configTextFieldDelegate(delegate: self)
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
        
        if let emailTextField = recoverPasswordScreen.emailTextField.text, !emailTextField.isEmpty {
            let alert = UIAlertController(title: "GarageF1", message: "Um e-mail de recuperação foi enviado, siga as instruções para redefinir sua senha.", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { action in
                self.auth.sendPasswordReset(withEmail: emailTextField)
            }))
            
            present(alert, animated: true)
        } else {
            let alert = UIAlertController(title: "GarageF1", message: "Digite um e-mail válido!", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Ok", style: .default))
            present(alert, animated: true)
        }
        self.recoverPasswordScreen.emailTextField.text = ""
    }
    
    func actionBackButton() {
        self.navigationController?.popToRootViewController(animated: true)
    }
}
