//
//  AlertHomeLogOut.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 27/03/23.
//

import Foundation
import UIKit

class AlertHomeLogOut: NSObject {
    
    var controller: UIViewController
    
    init(controller: UIViewController) {
        self.controller = controller
    }
    
    func getAlert(title: String, message: String, completion:(() -> Void)? = nil) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let out = UIAlertAction(title: "Sair", style: .destructive) { action in
            completion?()
        }
        let cancel = UIAlertAction(title: "Cancel", style: .cancel) { action in
            completion?()
        }
    
        alertController.addAction(out)
        alertController.addAction(cancel)
        self.controller.present(alertController, animated: true, completion: nil)
    }
}
