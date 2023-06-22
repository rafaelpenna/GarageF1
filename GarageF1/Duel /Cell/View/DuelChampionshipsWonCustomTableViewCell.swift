//
//  DuelChampionshipsWonCustomTableViewCell.swift
//  GarageF1
//
//  Created by Rafael Penna on 07/03/23.
//

import UIKit

class DuelChampionshipsWonCustomTableViewCell: UITableViewCell {

    static let identifier = String(describing: DuelChampionshipsWonCustomTableViewCell.self)
    
    var championshipsWinTitle: UILabel = {
        let variable = UILabel()
        variable.textColor = .gray
        variable.text = "Títulos"
        variable.font = UIFont.systemFont(ofSize: 18)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    var championshipsWinAnswerLeft: UILabel = {
        let variable = UILabel()
        variable.textColor = .black
        variable.font = UIFont.boldSystemFont(ofSize: 18)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.textAlignment = .center
        return variable
    }()
    
    var championshipsWinAnswerRight: UILabel = {
        let variable = UILabel()
        variable.textColor = .black
        variable.font = UIFont.boldSystemFont(ofSize: 18)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.textAlignment = .center
        return variable
    }()
    
    lazy var divisionView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }()
    
    lazy var dataBackgroundView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1)
        return view
    }()
    
    public func configure() {
        addSubViews()
        configConstraintsInfoDriver()
        backgroundColor()
    }
    
    private func backgroundColor() {
        backgroundColor = UIColor(red: 66/255, green: 66/255, blue: 66/255, alpha: 1)
    }
    
    private func addSubViews(){
        addSubview(dataBackgroundView)
        addSubview(championshipsWinTitle)
        addSubview(championshipsWinAnswerLeft)
        addSubview(championshipsWinAnswerRight)
        addSubview(divisionView)
    }
    
    private func configConstraintsInfoDriver(){
        NSLayoutConstraint.activate([
            
            championshipsWinTitle.topAnchor.constraint(equalTo: topAnchor),
            championshipsWinTitle.centerXAnchor.constraint(equalTo: centerXAnchor),

            championshipsWinAnswerLeft.topAnchor.constraint(equalTo: championshipsWinTitle.bottomAnchor, constant: 10),
            championshipsWinAnswerLeft.trailingAnchor.constraint(equalTo: centerXAnchor, constant: -20),
            
            championshipsWinAnswerRight.topAnchor.constraint(equalTo: championshipsWinTitle.bottomAnchor, constant: 10),
            championshipsWinAnswerRight.leadingAnchor.constraint(equalTo: centerXAnchor, constant: 20),
            
            divisionView.topAnchor.constraint(equalTo: championshipsWinTitle.bottomAnchor, constant: 10),
            divisionView.centerXAnchor.constraint(equalTo: centerXAnchor),
            divisionView.bottomAnchor.constraint(equalTo: championshipsWinAnswerLeft.bottomAnchor),
            divisionView.widthAnchor.constraint(equalToConstant: 2),
            
            dataBackgroundView.topAnchor.constraint(equalTo: topAnchor),
            dataBackgroundView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            dataBackgroundView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            dataBackgroundView.bottomAnchor.constraint(equalTo: divisionView.bottomAnchor, constant: 5),
        ])
    }
}
