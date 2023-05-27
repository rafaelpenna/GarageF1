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
        addSubview(winsTitle)
        addSubview(winsAnswerLeft)
        addSubview(winsAnswerRight)
        addSubview(divisionView)
    }
    
    private func configConstraintsInfoDriver(){
        NSLayoutConstraint.activate([
            
            winsTitle.topAnchor.constraint(equalTo: topAnchor),
            winsTitle.centerXAnchor.constraint(equalTo: centerXAnchor),

            winsAnswerLeft.topAnchor.constraint(equalTo: winsTitle.bottomAnchor, constant: 10),
            winsAnswerLeft.trailingAnchor.constraint(equalTo: centerXAnchor, constant: -20),
            
            winsAnswerRight.topAnchor.constraint(equalTo: winsTitle.bottomAnchor, constant: 10),
            winsAnswerRight.leadingAnchor.constraint(equalTo: centerXAnchor, constant: 20),
            
            divisionView.topAnchor.constraint(equalTo: winsTitle.bottomAnchor, constant: 10),
            divisionView.centerXAnchor.constraint(equalTo: centerXAnchor),
            divisionView.heightAnchor.constraint(equalTo: winsAnswerLeft.heightAnchor),
            divisionView.widthAnchor.constraint(equalToConstant: 2),
            
            dataBackgroundView.topAnchor.constraint(equalTo: topAnchor),
            dataBackgroundView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            dataBackgroundView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            dataBackgroundView.bottomAnchor.constraint(equalTo: divisionView.bottomAnchor, constant: 5),
        ])
    }
}
