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
        emailLoginScreen?.delegate(delegate: self)
        emailLoginScreen?.configTextFieldDelegate(delegate: self)
        auth = Auth.auth()
        alert = Alert(controller: self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: false)
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
        if emailLoginScreen?.passwordTextField.isSecureTextEntry == true {
            emailLoginScreen?.visibleInvisibleButton.setImage(UIImage(systemName: "eye"), for: .normal)
            emailLoginScreen?.passwordTextField.isSecureTextEntry = false
        } else {
            emailLoginScreen?.visibleInvisibleButton.setImage(UIImage(systemName: "eye.slash"), for: .normal)
            emailLoginScreen?.passwordTextField.isSecureTextEntry = true
        }
    }
    
    func actionBackButton() {
        
        navigationController?.popViewController(animated: true)
    }
    
    func actionRegisterButton() {
        
        guard let register = emailLoginScreen else {return}
        
        auth?.createUser(withEmail: register.getEmail(), password: register.getPassword(), completion: { (result, error) in
            if error != nil {
                self.alert?.getAlert(titulo: "Atenção", message: "Erro ao cadastrar, verifique e tente novamente!")
            } else {
                self.alert?.getAlert(titulo: "Parabéns", message: "Usuário cadastrado com sucesso", completion: {
                    self.navigationController?.popViewController(animated: true)
                })
            }
        })
    }
}

