//
//  TableInfoLeft.swift
//  GarageF1
//
//  Created by Rafael Penna on 07/03/23.
//

import UIKit

class TableInfoLeft: UIView {

    lazy var tableViewInfoDriversLeft: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none
        tableView.layer.backgroundColor = UIColor(red: 243, green: 243, blue: 243, alpha: 1).cgColor
        tableView.register(DuelBirthDateCustomTableViewCell.self, forCellReuseIdentifier: "DuelBirthDateCustomTableViewCell")
        tableView.register(DuelBirthLocationCustomTableViewCell.self, forCellReuseIdentifier: "DuelBirthLocationCustomTableViewCell")
        tableView.register(DuelChampionshipsWonCustomTableViewCell.self, forCellReuseIdentifier: "DuelChampionshipsWonCustomTableViewCell")
        tableView.register(DuelRacesParticipatedCustomTableViewCell.self, forCellReuseIdentifier: "DuelRacesParticipatedCustomTableViewCell")
        tableView.register(DuelPodiumsEarnedCustomTableViewCell.self, forCellReuseIdentifier: "DuelPodiumsEarnedCustomTableViewCell")
        tableView.register(DuelPointsEarnedCustomTableViewCell.self, forCellReuseIdentifier: "DuelPointsEarnedCustomTableViewCell")
        tableView.register(DuelWinsCustomTableViewCell.self, forCellReuseIdentifier: "DuelWinsCustomTableViewCell")
        return tableView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(self.tableViewInfoDriversLeft)
        backgroundColor = .green
        constraintsScreen()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func setupTableViewProtocols(delegate: UITableViewDelegate, dataSource: UITableViewDataSource){
        self.tableViewInfoDriversLeft.delegate = delegate
        self.tableViewInfoDriversLeft.dataSource = dataSource
    }
    
    private func constraintsScreen(){
        NSLayoutConstraint.activate([

            tableViewInfoDriversLeft.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            tableViewInfoDriversLeft.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            tableViewInfoDriversLeft.topAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            tableViewInfoDriversLeft.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
        ])
    }

}

extension TableInfoLeft: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: DuelBirthDateCustomTableViewCell.identifier) as? DuelBirthDateCustomTableViewCell
            cell?.configure()
            let backgroundView = UIView()
//            cell?.birthDateAnswer.text = driversBirthDate
            backgroundView.backgroundColor = .none
            cell?.selectedBackgroundView = backgroundView
            return cell ?? UITableViewCell()
        } else if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: DuelBirthLocationCustomTableViewCell.identifier) as? DuelBirthLocationCustomTableViewCell
            cell?.configure()
            let backgroundView = UIView()
//            cell?.birthLocationAnswer.text = driversBirthLocation
            backgroundView.backgroundColor = .none
            cell?.selectedBackgroundView = backgroundView
            return cell ?? UITableViewCell()
        } else if indexPath.row == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: DuelChampionshipsWonCustomTableViewCell.identifier) as? DuelChampionshipsWonCustomTableViewCell
            cell?.configure()
            let backgroundView = UIView()
//            cell?.championshipsWinAnswer.text = championshipsWon
            backgroundView.backgroundColor = .none
            cell?.selectedBackgroundView = backgroundView
            return cell ?? UITableViewCell()
        } else if indexPath.row == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: DuelRacesParticipatedCustomTableViewCell.identifier) as? DuelRacesParticipatedCustomTableViewCell
            cell?.configure()
            let backgroundView = UIView()
//            cell?.racesAnswer.text = racesParticipated
            backgroundView.backgroundColor = .none
            cell?.selectedBackgroundView = backgroundView
            return cell ?? UITableViewCell()
        } else if indexPath.row == 4 {
            let cell = tableView.dequeueReusableCell(withIdentifier: DuelPodiumsEarnedCustomTableViewCell.identifier) as? DuelPodiumsEarnedCustomTableViewCell
            cell?.configure()
            let backgroundView = UIView()
//            cell?.podiumsAnswer.text = podiumsEarned
            backgroundView.backgroundColor = .none
            cell?.selectedBackgroundView = backgroundView
            return cell ?? UITableViewCell()
        } else if indexPath.row == 5 {
            let cell = tableView.dequeueReusableCell(withIdentifier: DuelPointsEarnedCustomTableViewCell.identifier) as? DuelPointsEarnedCustomTableViewCell
            cell?.configure()
            let backgroundView = UIView()
//            cell?.pointsAnswer.text = pointsEarned
            backgroundView.backgroundColor = .none
            cell?.selectedBackgroundView = backgroundView
            return cell ?? UITableViewCell()
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: DuelWinsCustomTableViewCell.identifier) as? DuelWinsCustomTableViewCell
            cell?.configure()
            let backgroundView = UIView()
//            cell?.winsAnswer.text = wins
            backgroundView.backgroundColor = .none
            cell?.selectedBackgroundView = backgroundView
            return cell ?? UITableViewCell()
        }

    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
}
