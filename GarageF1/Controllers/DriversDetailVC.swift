//
//  DriversDetailVC.swift
//  GarageF1
//
//  Created by Rafael Penna on 01/02/23.
//

import UIKit

class DriversDetailVC: UIViewController {
    
    var driversDetailScreen: DriversDetailScreen? = DriversDetailScreen()
    
    var dataDrivers: [DriverDetail] = [DriverDetail(driversPhoto: UIImage(named: "Leclerc1") ?? UIImage(), driversName: "Charles", driversLastName: "Leclerc", birthDate: "16/10/1997 (24 anos)", birthLocation: "Monte Carlo, Monaco", championships: 0, races: 92,podiums: 18, points: 730, bestResult: "1(x5)", bestGridPosition: 1)]

    override func loadView() {
        self.view = driversDetailScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(backButton)
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
