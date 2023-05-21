//
//  RegisterLoginVC.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 26/12/22.
//

import UIKit
import Firebase

class EmailLoginVC: UIViewController {
    
    let emailLoginScreen: EmailLoginScreen? = EmailLoginScreen()
    var auth: Auth?
    var alert: Alert?
    
    override func loadView() {
        view = emailLoginScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configProtocolsAuthAlert()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    private func configProtocolsAuthAlert() {
        emailLoginScreen?.delegate(delegate: self)
        emailLoginScreen?.configTextFieldDelegate(delegate: self)
        auth = Auth.auth()
        alert = Alert(controller: self)
    }
}

extension EmailLoginVC: UITextFieldDelegate {
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        emailLoginScreen?.validaTextFields()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

extension EmailLoginVC: EmailLoginScreenProtocol {
    
    func actionVisibleInvisibleButton() {
        
        let visibleButton = EmailViewModel.namesAndWarnings.visibleButton
        let invisibleButton = EmailViewModel.namesAndWarnings.invisibleButton
        
        if emailLoginScreen?.passwordTextField.isSecureTextEntry == true {
            emailLoginScreen?.visibleInvisibleButton.setImage(UIImage(systemName: visibleButton.getDescription()), for: .normal)
            emailLoginScreen?.passwordTextField.isSecureTextEntry = false
        } else {
            emailLoginScreen?.visibleInvisibleButton.setImage(UIImage(systemName: invisibleButton.getDescription()), for: .normal)
            emailLoginScreen?.passwordTextField.isSecureTextEntry = true
        }
    }
    
    func actionBackButton() {
        
        navigationController?.popViewController(animated: true)
    }
    
    func actionRegisterButton() {
        
        let atention = EmailViewModel.namesAndWarnings.atention
        let congratulations = EmailViewModel.namesAndWarnings.congratulations
        let erro = EmailViewModel.namesAndWarnings.tryAgain
        let registeredUser = EmailViewModel.namesAndWarnings.registeredUser
        
        guard let register = emailLoginScreen else {return}
        
        auth?.createUser(withEmail: register.getEmail(), password: register.getPassword(), completion: { (result, error) in
            if error != nil {
                self.alert?.getAlert(titulo: atention.getDescription(), message: erro.getDescription())
            } else {
                self.alert?.getAlert(titulo: congratulations.getDescription(), message: registeredUser.getDescription(), completion: {
                    self.navigationController?.popViewController(animated: true)
                })
            }
        })
    }
}

