//
//  HomeCustomTableViewCell.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 15/03/23.
//

import UIKit

class HomeCustomTableViewCell: UITableViewCell {
    
    var standingCollection: StandingCustomTableViewCell = StandingCustomTableViewCell()
    var customDuelTableViewCell: DDuelCustomTableViewCell = DDuelCustomTableViewCell()
    var simulationButtonTableViewCell: SimulationButtonTableViewCell = SimulationButtonTableViewCell()
    var fullresultsTableViewCell: FullResultsTableViewCell = FullResultsTableViewCell()
    var fullResultButtonTableViewCell: FullResultButtonTableViewCell = FullResultButtonTableViewCell()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addCells()
    }
    
    func addCells() {
        standingCollection.translatesAutoresizingMaskIntoConstraints = false
        customDuelTableViewCell.translatesAutoresizingMaskIntoConstraints = false
        simulationButtonTableViewCell.translatesAutoresizingMaskIntoConstraints = false
        fullresultsTableViewCell.translatesAutoresizingMaskIntoConstraints = false
        fullResultButtonTableViewCell.translatesAutoresizingMaskIntoConstraints = false
        
        
        contentView.addSubview(standingCollection)
        contentView.addSubview(customDuelTableViewCell)
        contentView.addSubview(simulationButtonTableViewCell)
        contentView.addSubview(fullresultsTableViewCell)
        contentView.addSubview(fullResultButtonTableViewCell)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
