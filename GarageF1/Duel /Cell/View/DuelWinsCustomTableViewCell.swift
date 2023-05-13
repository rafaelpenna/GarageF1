//
//  DuelWinsCustomTableViewCell.swift
//  GarageF1
//
//  Created by Rafael Penna on 07/03/23.
//

import UIKit

class DuelWinsCustomTableViewCell: UITableViewCell {

    static let identifier = String(describing: DuelWinsCustomTableViewCell.self)
    
    var winsTitle: UILabel = {
        let variable = UILabel()
        variable.textColor = .gray
        variable.text = "Melhor colocação em corridas"
        variable.font = UIFont.systemFont(ofSize: 18)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    var winsAnswerLeft: UILabel = {
        let variable = UILabel()
        variable.textColor = .black
        variable.font = UIFont.boldSystemFont(ofSize: 18)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    var winsAnswerRight: UILabel = {
        let variable = UILabel()
        variable.textColor = .black
        variable.font = UIFont.boldSystemFont(ofSize: 18)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    lazy var divisionLabels: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .red
        return label
    }()
    
    lazy var dataBackgroundLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1)
        return label
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
        addSubview(dataBackgroundLabel)
        addSubview(winsTitle)
        addSubview(winsAnswerLeft)
        addSubview(winsAnswerRight)
        addSubview(divisionLabels)
    }
    
    private func configConstraintsInfoDriver(){
        NSLayoutConstraint.activate([
            
            winsTitle.topAnchor.constraint(equalTo: topAnchor),
            winsTitle.centerXAnchor.constraint(equalTo: centerXAnchor),

            winsAnswerLeft.topAnchor.constraint(equalTo: winsTitle.bottomAnchor, constant: 10),
            winsAnswerLeft.trailingAnchor.constraint(equalTo: centerXAnchor, constant: -20),
            
            winsAnswerRight.topAnchor.constraint(equalTo: winsTitle.bottomAnchor, constant: 10),
            winsAnswerRight.leadingAnchor.constraint(equalTo: centerXAnchor, constant: 20),
            
            divisionLabels.topAnchor.constraint(equalTo: winsTitle.bottomAnchor, constant: 10),
            divisionLabels.centerXAnchor.constraint(equalTo: centerXAnchor),
            divisionLabels.heightAnchor.constraint(equalTo: winsAnswerLeft.heightAnchor),
            divisionLabels.widthAnchor.constraint(equalToConstant: 2),
            
            dataBackgroundLabel.topAnchor.constraint(equalTo: topAnchor),
            dataBackgroundLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            dataBackgroundLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            dataBackgroundLabel.bottomAnchor.constraint(equalTo: divisionLabels.bottomAnchor, constant: 5),
        ])
    }

}
