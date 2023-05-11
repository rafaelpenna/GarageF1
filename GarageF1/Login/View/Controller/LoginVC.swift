//
//  EmailLoginVC.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 26/12/22.
//

import UIKit
import Firebase

class LoginVC: UIViewController {
    
    var loginScreen: LoginScreen? = LoginScreen()
    var recoverPasswordVC: RecoverPasswordVC = RecoverPasswordVC()
    var alert: Alert?
    var auth: Auth?
    
    
    override func loadView() {
        view = loginScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginScreen?.delegate(delegate: self)
        loginScreen?.configTextFieldDelegate(delegate: self)
        alert = Alert(controller: self)
        auth = Auth.auth()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: false)
        loginScreen?.emailTextField.text = ""
        loginScreen?.passwordTextField.text = ""
    }
}

extension LoginVC: UITextFieldDelegate {
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        loginScreen?.validaTextFields()
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        loginScreen?.emailTextField.becomeFirstResponder()
        loginScreen?.passwordTextField.becomeFirstResponder()
        textField.resignFirstResponder()
        return true
    }
}

extension LoginVC: LoginScreenProtocol {
    
    func actionVisibleInvisibleButton() {
        
        if loginScreen?.passwordTextField.isSecureTextEntry == true {
            loginScreen?.visibleInvisibleButton.setImage(UIImage(systemName: "eye"), for: .normal)
            loginScreen?.passwordTextField.isSecureTextEntry = false
        } else {
            loginScreen?.visibleInvisibleButton.setImage(UIImage(systemName: "eye.slash"), for: .normal)
            loginScreen?.passwordTextField.isSecureTextEntry = true
        }
    }

    func actionLoginButton() {
        
        let tabBarHome: TabBarVC = TabBarVC()
        let loadingVC: LoadingVC = LoadingVC()

        guard let login = loginScreen else { return }
        
        auth?.signIn(withEmail: login.getEmail(), password: login.getPassword(), completion: { (usuario, error) in
            if error != nil {
                self.alert?.getAlert(titulo: "Atenção!", message: "Dados incorretos, verifique e tente novamente!")
                
            } else {
                if usuario == nil {
                    self.alert?.getAlert(titulo: "Atenção", message: "Tivemos um problema inesperado, tente novamente mais tarde")
                } else {
                    loadingVC.modalPresentationStyle = .fullScreen
                    self.present(loadingVC, animated: true)
                    self.navigationController?.pushViewController(tabBarHome, animated: true)
                }
            }
        })
    }
    
    func actionRegisterButton() {
        let emailLoginVC: EmailLoginVC = EmailLoginVC()
        navigationController?.pushViewController(emailLoginVC, animated: true)
    }
    
    func actionBackButton() {
        navigationController?.popToRootViewController(animated: true)
    }
    
    func actionForgotThePassword() {
        self.navigationController?.pushViewController(self.recoverPasswordVC, animated: true)
    }
}
