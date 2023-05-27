//
//  DuelPointsEarnedCustomTableViewCell.swift
//  GarageF1
//
//  Created by Rafael Penna on 07/03/23.
//

import UIKit

class DuelPointsEarnedCustomTableViewCell: UITableViewCell {

    static let identifier = String(describing: DuelPointsEarnedCustomTableViewCell.self)
    
    var pointsTitle: UILabel = {
        let variable = UILabel()
        variable.textColor = .gray
        variable.text = "Pontos"
        variable.font = UIFont.systemFont(ofSize: 18)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    var pointsAnswerLeft: UILabel = {
        let variable = UILabel()
        variable.textColor = .black
        variable.font = UIFont.boldSystemFont(ofSize: 18)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    var pointsAnswerRight: UILabel = {
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
        addSubview(pointsTitle)
        addSubview(pointsAnswerLeft)
        addSubview(pointsAnswerRight)
        addSubview(divisionView)
    }
    
    private func configConstraintsInfoDriver(){
        NSLayoutConstraint.activate([
            
            pointsTitle.topAnchor.constraint(equalTo: topAnchor),
            pointsTitle.centerXAnchor.constraint(equalTo: centerXAnchor),

            pointsAnswerLeft.topAnchor.constraint(equalTo: pointsTitle.bottomAnchor, constant: 10),
            pointsAnswerLeft.trailingAnchor.constraint(equalTo: centerXAnchor, constant: -20),
            
            pointsAnswerRight.topAnchor.constraint(equalTo: pointsTitle.bottomAnchor, constant: 10),
            pointsAnswerRight.leadingAnchor.constraint(equalTo: centerXAnchor, constant: 20),
            
            divisionView.topAnchor.constraint(equalTo: pointsTitle.bottomAnchor, constant: 10),
            divisionView.centerXAnchor.constraint(equalTo: centerXAnchor),
            divisionView.heightAnchor.constraint(equalTo: pointsAnswerLeft.heightAnchor),
            divisionView.widthAnchor.constraint(equalToConstant: 2),
            
            dataBackgroundView.topAnchor.constraint(equalTo: topAnchor),
            dataBackgroundView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            dataBackgroundView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            dataBackgroundView.bottomAnchor.constraint(equalTo: divisionView.bottomAnchor, constant: 5),
        ])
    }
}
