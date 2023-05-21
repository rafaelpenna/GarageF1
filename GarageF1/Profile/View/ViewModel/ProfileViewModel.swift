//
//  ProfileViewModel.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 21/05/23.
//

import UIKit

class ProfileViewModel {
    
    public enum namesAndWarnings {
        case saveButton
        case logOutButton
        case atention
        case garageF1
        case savedChanges
        case outGarageF1
        case out
        case cancel
        case other(String)
     
        public func getDescription() -> String {
            switch self {
            case .saveButton:
                return "Salvar"
            case .logOutButton:
                return "logOutIconWhite"
            case .atention:
                return "Atenção"
            case .garageF1:
                return "GarageF1"
            case .savedChanges:
                return "Alterações salvas com sucesso!"
            case .outGarageF1:
                return "Deseja realmente sair do GarageF1?"
            case .out:
                return "Sair"
            case .cancel:
                return "Cancel"
            case .other(let description):
                return description
            }
        }
    }
}
