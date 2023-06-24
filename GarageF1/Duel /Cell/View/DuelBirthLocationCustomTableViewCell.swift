//
//  DuelBirthLocationCustomTableViewCell.swift
//  GarageF1
//
//  Created by Rafael Penna on 07/03/23.
//

import UIKit

class DuelBirthLocationCustomTableViewCell: UITableViewCell {

    static let identifier = String(describing: DuelBirthLocationCustomTableViewCell.self)
    
    var birthLocationTitle: UILabel = {
        let variable = UILabel()
        variable.textColor = .white
        variable.text = "País de Nascimento"
        variable.font = UIFont.systemFont(ofSize: 18)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    var birthLocationAnswerLeft: UILabel = {
        let variable = UILabel()
        variable.textColor = .white
        variable.font = UIFont.boldSystemFont(ofSize: 18)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    var birthLocationAnswerRight: UILabel = {
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
        addSubview(birthLocationTitle)
        addSubview(birthLocationAnswerLeft)
        addSubview(birthLocationAnswerRight)
        addSubview(divisionView)
    }
    
    private func configConstraintsInfoDriver(){
        NSLayoutConstraint.activate([
            
            birthLocationTitle.topAnchor.constraint(equalTo: topAnchor),
            birthLocationTitle.centerXAnchor.constraint(equalTo: centerXAnchor),

            birthLocationAnswerLeft.topAnchor.constraint(equalTo: birthLocationTitle.bottomAnchor, constant: 10),
            birthLocationAnswerLeft.trailingAnchor.constraint(equalTo: centerXAnchor, constant: -20),
            
            birthLocationAnswerRight.topAnchor.constraint(equalTo: birthLocationTitle.bottomAnchor, constant: 10),
            birthLocationAnswerRight.leadingAnchor.constraint(equalTo: centerXAnchor, constant: 20),
            
            divisionView.topAnchor.constraint(equalTo: birthLocationTitle.bottomAnchor, constant: 10),
            divisionView.centerXAnchor.constraint(equalTo: centerXAnchor),
            divisionView.bottomAnchor.constraint(equalTo: birthLocationAnswerLeft.bottomAnchor),
            divisionView.widthAnchor.constraint(equalToConstant: 2),
            
            dataBackgroundView.topAnchor.constraint(equalTo: topAnchor),
            dataBackgroundView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
            dataBackgroundView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
            dataBackgroundView.bottomAnchor.constraint(equalTo: divisionView.bottomAnchor, constant: 5),
        ])
    }
}
