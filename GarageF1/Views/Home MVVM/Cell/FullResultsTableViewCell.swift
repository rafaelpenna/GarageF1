//
//  FullResultsTableViewCell.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 17/03/23.
//

import UIKit

class FullResultsTableViewCell: UITableViewCell {
    
    static let identifier: String = "FullResultsTableViewCell"
    
    var dataHomeResults: [HomeResults] = [HomeResults(indice: "1", imageTeams: "astonmartinlogo", namePilot: "Aston Martin", score: "86 pts", topNameTeams: "Equipes", topScoreTeams: "Pts"),
                                          HomeResults(indice: "2", imageTeams: "mercedeslogo", namePilot: "Mercedes", score: "59 pts", topNameTeams: "", topScoreTeams: ""),
                                          HomeResults(indice: "3", imageTeams: "ferrarilogo", namePilot: "Ferrari", score: "54 pts", topNameTeams: "", topScoreTeams: "")]
    
    var fullResultsTableViewScreen: FullResultsTableViewScreen = FullResultsTableViewScreen()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview()
        configCosntraints()
        fullResultsTableViewScreen.configTableViewProtocols(delegate: self, dataSource: self)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubview() {
        fullResultsTableViewScreen.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(fullResultsTableViewScreen)
    }
    
    private func configCosntraints() {
        NSLayoutConstraint.activate([
            fullResultsTableViewScreen.topAnchor.constraint(equalTo: topAnchor),
            fullResultsTableViewScreen.leadingAnchor.constraint(equalTo: leadingAnchor),
            fullResultsTableViewScreen.trailingAnchor.constraint(equalTo: trailingAnchor),
            fullResultsTableViewScreen.bottomAnchor.constraint(equalTo: bottomAnchor),
        
        ])
    }
}

extension FullResultsTableViewCell: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataHomeResults.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: CustomResultsFullTableView? = tableView.dequeueReusableCell(withIdentifier: CustomResultsFullTableView.identifier, for: indexPath) as? CustomResultsFullTableView
        cell?.setupCell(data: dataHomeResults[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
}
