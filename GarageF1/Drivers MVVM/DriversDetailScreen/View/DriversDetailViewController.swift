//
//  DriversDetailViewController.swift
//  GarageF1
//
//  Created by Rafael Penna on 12/02/23.
//

import Foundation
import UIKit

class DriversDetailViewController: UIViewController {
    
    let dirversDetailViewModel: DriversDetailViewModel = DriversDetailViewModel()
    
    var driversDetailScreen: DriversDetailScreenView? = DriversDetailScreenView()
    
    override func loadView() {
        self.view = driversDetailScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(backButton)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    lazy var backButton: UIButton = {
        let button: UIButton = driversDetailScreen?.backButton ?? UIButton()
        button.isSelected = true
        button.addTarget(self, action: #selector(backScreen), for: .touchUpInside)
        return button
    }()

    @objc func backScreen() {
        navigationController?.popViewController(animated: true)
    }
    
}
