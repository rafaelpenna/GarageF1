//
//  DuelPodiumsEarnedCustomTableViewCell.swift
//  GarageF1
//
//  Created by Rafael Penna on 07/03/23.
//

import UIKit

class DuelPodiumsEarnedCustomTableViewCell: UITableViewCell {

    static let identifier = String(describing: DuelPodiumsEarnedCustomTableViewCell.self)
    
    var podiumsTitle: UILabel = {
        let variable = UILabel()
        variable.textColor = .gray
        variable.text = "Pódios"
        variable.font = UIFont.systemFont(ofSize: 18)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    var podiumsAnswerLeft: UILabel = {
        let variable = UILabel()
        variable.textColor = .black
        variable.font = UIFont.boldSystemFont(ofSize: 18)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    var podiumsAnswerRight: UILabel = {
        let variable = UILabel()
        variable.textColor = .black
        variable.font = UIFont.boldSystemFont(ofSize: 18)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
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
        addSubview(podiumsTitle)
        addSubview(podiumsAnswerLeft)
        addSubview(podiumsAnswerRight)
        addSubview(divisionView)
    }
    
    private func configConstraintsInfoDriver(){
        NSLayoutConstraint.activate([
            
            podiumsTitle.topAnchor.constraint(equalTo: topAnchor),
            podiumsTitle.centerXAnchor.constraint(equalTo: centerXAnchor),

            podiumsAnswerLeft.topAnchor.constraint(equalTo: podiumsTitle.bottomAnchor, constant: 10),
            podiumsAnswerLeft.trailingAnchor.constraint(equalTo: centerXAnchor, constant: -20),
            
            podiumsAnswerRight.topAnchor.constraint(equalTo: podiumsTitle.bottomAnchor, constant: 10),
            podiumsAnswerRight.leadingAnchor.constraint(equalTo: centerXAnchor, constant: 20),
            
            divisionView.topAnchor.constraint(equalTo: podiumsTitle.bottomAnchor, constant: 10),
            divisionView.centerXAnchor.constraint(equalTo: centerXAnchor),
            divisionView.heightAnchor.constraint(equalTo: podiumsAnswerLeft.heightAnchor),
            divisionView.widthAnchor.constraint(equalToConstant: 2),
            
            dataBackgroundView.topAnchor.constraint(equalTo: topAnchor),
            dataBackgroundView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            dataBackgroundView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            dataBackgroundView.bottomAnchor.constraint(equalTo: divisionView.bottomAnchor, constant: 5),
        ])
    }
}
