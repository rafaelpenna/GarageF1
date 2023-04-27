//
//  TopResultsTableViewCell.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 25/03/23.
//

import UIKit

class TopResultsTableViewCell: UITableViewCell {

    static let identifier: String = String(describing: TopResultsTableViewCell.self)
    
    lazy var division: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .black
        label.text = ""
        return label
    }()
    
    lazy var topNameTeams: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Equipes"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
    }()
    
    lazy var topScoreTeams: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Pontos"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview()
        setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addSubview() {
        addSubview(division)
        addSubview(topNameTeams)
        addSubview(topScoreTeams)
    }
    
    private func setUpConstraints() {
        NSLayoutConstraint.activate([
            
            topNameTeams.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            topNameTeams.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 150),
            topNameTeams.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            
            topScoreTeams.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            topScoreTeams.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 275),
            topScoreTeams.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
        ])
    }
    
}
