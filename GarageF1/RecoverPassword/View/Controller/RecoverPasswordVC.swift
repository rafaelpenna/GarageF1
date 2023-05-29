//
//  RecoverPasswordVC.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 02/04/23.
//

import UIKit

class RecoverPasswordVC: UIViewController {
    
    var recoverPasswordScreen: RecoverPasswordScreen = RecoverPasswordScreen()
    var recoverPasswordViewModel: RecoverPasswordViewModel = RecoverPasswordViewModel()
    var alert: Alert?
    
    override func loadView() {
        view = recoverPasswordScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        recoverPasswordViewModel.delegate(delegate: self)
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

extension RecoverPasswordVC: RecoverPasswordViewModelProtocol {
    func error() {
        let garageF1 = RecoverPasswordViewModel.Warnings.garageF1
        let unexpectedProblem = RecoverPasswordViewModel.Warnings.unexpectedProblem
        let ok = RecoverPasswordViewModel.Warnings.ok
        
        let alert = UIAlertController(title: garageF1.getDescription(), message: unexpectedProblem.getDescription(), preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: ok.getDescription(), style: .default, handler: nil))
        present(alert, animated: true)
        recoverPasswordScreen.emailTextField.text = ""
    }
    
    func success() {
        let garageF1 = RecoverPasswordViewModel.Warnings.garageF1
        let recoverPassword = RecoverPasswordViewModel.Warnings.recoverEmail
        let ok = RecoverPasswordViewModel.Warnings.ok
        
        let alert = UIAlertController(title: garageF1.getDescription(), message: recoverPassword.getDescription(), preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: ok.getDescription(), style: .default, handler: nil))
        present(alert, animated: true)
        recoverPasswordScreen.emailTextField.text = ""
    }
}

extension RecoverPasswordVC: RecoverPasswordScreenProtocol {
    func actionSendEmailButton() {
        let garageF1 = RecoverPasswordViewModel.Warnings.garageF1
        let tapEmail = RecoverPasswordViewModel.Warnings.tapEmail
        
        if let emailTextField = recoverPasswordScreen.emailTextField.text, !emailTextField.isEmpty {
            self.recoverPasswordViewModel.recoverPassword(email: self.recoverPasswordScreen.emailTextField.text ?? "")
        } else {
            self.alert?.getAlert(titulo: garageF1.getDescription(), message: tapEmail.getDescription())
        }
    }
    
    func actionBackButton() {
        self.navigationController?.popToRootViewController(animated: true)
    }
}
