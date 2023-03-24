//
//  SimulationButtonTableViewCell.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 17/03/23.
//

import UIKit

protocol SimulationButtonTableViewCellProtocol: AnyObject {
    func actionSimulationButton()
}

class SimulationButtonTableViewCell: UITableViewCell {
    
    static let identifier: String = "SimulationButtonTableViewCell"
    
    private weak var delegate: SimulationButtonTableViewCellProtocol?
    func delegate(delegate: SimulationButtonTableViewCellProtocol?) {
        self.delegate = delegate
    }
    
    lazy var simulationButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Faça sua simulação", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 19)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(tappedSimulationButton), for: .touchUpInside)
        return button
    }()
    
    func configure() {
        addSubview()
        setUpConstraints()
    }
    
    func addSubview() {
        addSubview(simulationButton)
    }
    
    
    @objc func tappedSimulationButton() {
        delegate?.actionSimulationButton()
    }
    
    private func setUpConstraints() {
        NSLayoutConstraint.activate([
            simulationButton.topAnchor.constraint(equalTo: topAnchor),
            simulationButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
        ])
        
    }
}
