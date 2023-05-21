//
//  RecoverPasswordViewModel.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 21/05/23.
//

import UIKit

class RecoverPasswordViewModel: NSObject {
    
    public enum Warnings {
        case emptyTF
        case ok
        case garageF1
        case tapEmail
        case recoverEmail
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
            case .emptyTF:
                return ""
            case .other(let description):
                return description
            }
        }
    }
}
