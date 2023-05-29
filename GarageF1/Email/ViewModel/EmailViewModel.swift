//
//  EmailViewModel.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 21/05/23.
//

import UIKit
import FirebaseAuth

protocol EmailViewModelProtocol: AnyObject {
    func error()
    func success()
}

class EmailViewModel: NSObject {
    
    private var auth = Auth.auth()
    private var delegate: EmailViewModelProtocol?
    public func delegate(delegate: EmailViewModelProtocol?) {
        self.delegate = delegate
    }
    
    public func createUser(email: String, password: String) {
        auth.createUser(withEmail: email, password: password) { result, error in
            if error != nil {
                self.delegate?.error()
            } else {
                self.delegate?.success()
            }
        }
    }
    
    public enum namesAndWarnings {
        case emptyString
        case visibleButton
        case invisibleButton
        case atention
        case congratulations
        case registeredUser
        case tryAgain
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
                return "Atenção"
            case .congratulations:
                return "Parabéns"
            case .tryAgain:
                return "Erro ao cadastrar, verifique e tente novamente!"
            case .registeredUser:
                return "Usuário cadastrado com sucesso"
            case .other(let description):
                return description
            }
        }
    }
}
