//
//  RacingVC.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 21/01/23.
//

import UIKit

class RacingVC: UIViewController {
    
    var racingScreen: RacingScreen = RacingScreen()
    
    var dataRacer: [DataRacer] = [DataRacer(roundLabel: "Round 22", countryLabel: "Abu Dhabi", descriptionLabel: "FÓRMULA 1 HEINEKEN GRANDE PRÊMIO DE SÃO PAULO 2022", dayLabel: "18 - 20", monthLabel: "NOV"),
                                  DataRacer(roundLabel: "Round 21", countryLabel: "Brazil", descriptionLabel: "FÓRMULA 1 ETIHAD AIRWAYS ABU DHABI GRAND PRIX 2022", dayLabel: "11 - 13", monthLabel: "NOV"),
                                  DataRacer(roundLabel: "Round 20", countryLabel: "México", descriptionLabel: "FÓRMULA 1 GRAN PRÊMIO DE LA CIUDAD DE MÉXICO 2022", dayLabel: "28 - 30", monthLabel: "OUT"),
                                  DataRacer(roundLabel: "Round 19", countryLabel: "United States", descriptionLabel: "FÓRMULA 1 ARAMCO UNITED STATES GRAND PRIX 2022", dayLabel: "21 - 23", monthLabel: "OUT"),
                                  DataRacer(roundLabel: "Round 18", countryLabel: "Bahrein", descriptionLabel: "FÓRMULA 1 SAKHIR CIRCUIT GRAND PRIX 2022", dayLabel: "03 - 05", monthLabel: "MAR")]
    
    override func loadView() {
        view = racingScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = true
        racingScreen.configTableViewDelegate(delegate: self, dataSource: self)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }

}

extension RacingVC: UITableViewDelegate, UITableViewDataSource, UICollectionViewDelegateFlowLayout {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return dataRacer.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: RacingCustomTableViewCell? = tableView.dequeueReusableCell(withIdentifier: RacingCustomTableViewCell.identifier, for: indexPath) as? RacingCustomTableViewCell
        cell?.setupCell(data: dataRacer[indexPath.row])
        return cell ?? UITableViewCell()
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    
}
