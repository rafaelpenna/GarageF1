//
//  EmailLoginVC.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 26/12/22.
//

import UIKit
import Firebase

class LoginVC: UIViewController {
    
    var loginViewModel: LoginViewModel? = LoginViewModel()
    var loginScreen: LoginScreen? = LoginScreen()
    var recoverPasswordVC: RecoverPasswordVC? = RecoverPasswordVC()
    var alert: Alert?
    var auth: Auth?
    
    override func loadView() {
        view = loginScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configProtocolsAlertAuth()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: false)
        configEmptyTextFields()
        
    }
    
    private func configProtocolsAlertAuth() {
        loginScreen?.delegate(delegate: self)
        loginScreen?.configTextFieldDelegate(delegate: self)
        loginViewModel?.delegate(delegate: self)
        alert = Alert(controller: self)
        auth = Auth.auth()
    }
    
    private func configEmptyTextFields() {
        let emptyTextField = LoginViewModel.Strings.emptyString
        let invisibleButton = LoginViewModel.Strings.invisibleButton
        
        loginScreen?.emailTextField.text = emptyTextField.getDescription()
        loginScreen?.passwordTextField.text = emptyTextField.getDescription()
        
        loginScreen?.visibleInvisibleButton.setImage(UIImage(systemName: invisibleButton.getDescription()), for: .normal)
        loginScreen?.passwordTextField.isSecureTextEntry = true
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

extension LoginVC: LoginViewModelProtocol {
    
    func unexpectedProblem() {
        let atention = LoginViewModel.Strings.atention
        let unexpectedProblem = LoginViewModel.Strings.unexpectedProblem
        
        self.alert?.getAlert(titulo: atention.getDescription(), message: unexpectedProblem.getDescription())
    }
    
    func success() {
        let loadingVC: LoadingVC = LoadingVC()
        let tabBarHome: TabBarVC = TabBarVC()
        
        loadingVC.modalPresentationStyle = .fullScreen
        self.present(loadingVC, animated: true)
        self.navigationController?.pushViewController(tabBarHome, animated: true)
    }
    
    func errorLogin() {
        let atention = LoginViewModel.Strings.atention
        let wrongData = LoginViewModel.Strings.wrongData
        
        self.alert?.getAlert(titulo: atention.getDescription(), message: wrongData.getDescription())
    }
}

extension LoginVC: LoginScreenProtocol {
    
    func actionVisibleInvisibleButton() {
        
        let invisibleButton = LoginViewModel.Strings.invisibleButton
        let visibleButton = LoginViewModel.Strings.visibleButton
        
        if loginScreen?.passwordTextField.isSecureTextEntry == true {
            loginScreen?.visibleInvisibleButton.setImage(UIImage(systemName: visibleButton.getDescription()), for: .normal)
            loginScreen?.passwordTextField.isSecureTextEntry = false
        } else {
            loginScreen?.visibleInvisibleButton.setImage(UIImage(systemName: invisibleButton.getDescription()), for: .normal)
            loginScreen?.passwordTextField.isSecureTextEntry = true
        }
    }

    func actionLoginButton() {
        loginViewModel?.login(email: loginScreen?.emailTextField.text ?? "", password: loginScreen?.passwordTextField.text ?? "")
    }
    
    func actionRegisterButton() {
        let emailLoginVC: EmailLoginVC = EmailLoginVC()
        navigationController?.pushViewController(emailLoginVC, animated: true)
    }
    
    func actionBackButton() {
        navigationController?.popToRootViewController(animated: true)
    }
    
    func actionForgotThePassword() {
        guard let recoverVC = recoverPasswordVC else { return }
        self.navigationController?.pushViewController(recoverVC, animated: true)
    }
}
