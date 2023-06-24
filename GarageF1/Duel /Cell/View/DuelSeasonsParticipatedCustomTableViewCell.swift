//
//  DuelPodiumsEarnedCustomTableViewCell.swift
//  GarageF1
//
//  Created by Rafael Penna on 07/03/23.
//

import UIKit

class DuelSeasonsParticipatedCustomTableViewCell: UITableViewCell {

    static let identifier = String(describing: DuelSeasonsParticipatedCustomTableViewCell.self)
    
    var podiumsTitle: UILabel = {
        let variable = UILabel()
        variable.textColor = .white
        variable.text = "Temporadas"
        variable.font = UIFont.systemFont(ofSize: 18)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    var podiumsAnswerLeft: UILabel = {
        let variable = UILabel()
        variable.textColor = .white
        variable.font = UIFont.boldSystemFont(ofSize: 18)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    var podiumsAnswerRight: UILabel = {
        let variable = UILabel()
        variable.textColor = .white
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
        view.backgroundColor = UIColor(red: 79/255, green: 79/255, blue: 79/255, alpha: 1)
        view.layer.cornerRadius = 10
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOpacity = 0.5
        view.layer.shadowOffset = .zero
        view.layer.shadowRadius = 10
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
            dataBackgroundView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
            dataBackgroundView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
            dataBackgroundView.bottomAnchor.constraint(equalTo: divisionView.bottomAnchor, constant: 5),
        ])
    }
}
