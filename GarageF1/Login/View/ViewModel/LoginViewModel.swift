//
//  LoginViewModel.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 21/05/23.
//

import UIKit

class LoginViewModel {
    
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
}
