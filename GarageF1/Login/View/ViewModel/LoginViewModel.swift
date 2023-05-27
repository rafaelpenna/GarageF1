//
//  LoginViewModel.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 21/05/23.
//

import UIKit
import FirebaseAuth

protocol LoginViewModelProtocol: AnyObject {
    func success()
    func errorLogin()
    func unexpectedProblem()
}

class LoginViewModel {
    
    private var auth = Auth.auth()
    private var delegate: LoginViewModelProtocol?
    public func delegate(delegate: LoginViewModelProtocol?) {
        self.delegate = delegate
    }
    
    public enum Strings {
         case emptyString
         case visibleButton
         case invisibleButton
         case atention
         case wrongData
         case unexpectedProblem
         case other(String)
         
        public func getDescription() -> String {
             switch self {
             case .emptyString:
                 return ""
             case .visibleButton:
                 return "eye"
             case .invisibleButton:
                 return "eye.slash"
             case .atention:
                 return "Atenção!"
             case .wrongData:
                 return "Dados incorretos, verifique e tente novamente"
             case .unexpectedProblem:
                 return "Tivemos um problema inesperado, tente novamente mais tarde"
             case .other(let description):
                 return description
             }
         }
     }
    
    public func login(email: String, password: String) {
        auth.signIn(withEmail: email, password: password) { usuario, error in
            if error != nil {
                self.delegate?.errorLogin()
            } else {
                if usuario == nil {
                    self.delegate?.unexpectedProblem()
                } else {
                    self.delegate?.success()
                }
            }
        }
    }
}
