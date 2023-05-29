//
//  RecoverPasswordViewModel.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 21/05/23.
//

import UIKit
import FirebaseAuth

protocol RecoverPasswordViewModelProtocol: AnyObject {
    func success()
    func error()
}

class RecoverPasswordViewModel: NSObject {
    
    private var recoverPasswordScreen: RecoverPasswordScreen = RecoverPasswordScreen()
    private var auth = Auth.auth()
    private var delegate: RecoverPasswordViewModelProtocol?
    public func delegate(delegate: RecoverPasswordViewModelProtocol?) {
        self.delegate = delegate
    }
    
    public func recoverPassword(email: String) {
        auth.sendPasswordReset(withEmail: email) { error in
            if error != nil {
                self.delegate?.error()
            } else {
                self.delegate?.success()
            }
        }
    }
    
    public enum Warnings {
        case ok
        case garageF1
        case tapEmail
        case recoverEmail
        case unexpectedProblem
        case other(String)
        
        public func getDescription() -> String {
            switch self {
            case .ok:
                return "Ok"
            case .garageF1:
                return "GarageF1"
            case .recoverEmail:
                return "Um e-mail de recuperação foi enviado, siga as instruções para redefinir sua senha."
            case .tapEmail:
                return "Digite um e-mail válido!"
            case .unexpectedProblem:
                return "Ocorreu um erro inesperado, tente novamente mais tarde"
            case .other(let description):
                return description
            }
        }
    }
}
