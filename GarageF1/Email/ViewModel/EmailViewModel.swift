//
//  EmailViewModel.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 21/05/23.
//

import UIKit

class EmailViewModel: NSObject {
    
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
