//
//  DriversDetailCustomTableViewCellScreen.swift
//  GarageF1
//
//  Created by Rafael Penna on 15/02/23.
//

import Foundation
import UIKit

class InfoDriversCustomTableViewCellScreen: UITableViewCell {
    
    static let identifier = String(describing: InfoDriversCustomTableViewCellScreen.self)
    
    var poistionLabel: UILabel = {
        let variable = UILabel()
        variable.textColor = .white
        variable.text = "Posição"
        variable.font = UIFont.systemFont(ofSize: 20)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    var answerPositionLabel: UILabel = {
        let variable = UILabel()
        variable.textColor = .white
        variable.font = UIFont.boldSystemFont(ofSize: 24)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    var codeLabel: UILabel = {
        let variable = UILabel()
        variable.textColor = .white
        variable.text = "Código"
        variable.font = UIFont.systemFont(ofSize: 20)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    var answerCodeLabel: UILabel = {
        let variable = UILabel()
        variable.textColor = .white
        variable.font = UIFont.boldSystemFont(ofSize: 24)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    var pointsLabel: UILabel = {
        let variable = UILabel()
        variable.textColor = .white
        variable.text = "Pontos"
        variable.font = UIFont.systemFont(ofSize: 20)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    var answerPointsLabel: UILabel = {
        let variable = UILabel()
        variable.textColor = .white
        variable.font = UIFont.boldSystemFont(ofSize: 24)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    var numberWinsLabel: UILabel = {
        let variable = UILabel()
        variable.textColor = .white
        variable.text = "Vitórias"
        variable.font = UIFont.systemFont(ofSize: 20)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    var answerNumberWinsLabel: UILabel = {
        let variable = UILabel()
        variable.textColor = .white
        variable.font = UIFont.boldSystemFont(ofSize: 24)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    
    public func configure() {
        backgroundColor()
        addElements()
        configConstraintsInfoDriver()
    }
    
    private func backgroundColor() {
        backgroundColor = .none
    }
    
    private func addElements(){
        addSubview(poistionLabel)
        addSubview(answerPositionLabel)
        addSubview(codeLabel)
        addSubview(answerCodeLabel)
        addSubview(pointsLabel)
        addSubview(answerPointsLabel)
        addSubview(numberWinsLabel)
        addSubview(answerNumberWinsLabel)
    }
    
    private func configConstraintsInfoDriver(){
        NSLayoutConstraint.activate([
            
            codeLabel.topAnchor.constraint(equalTo: topAnchor, constant: 40),
            codeLabel.centerXAnchor.constraint(equalTo: centerXAnchor, constant: -80),
            
            answerCodeLabel.topAnchor.constraint(equalTo: codeLabel.bottomAnchor, constant: 10),
            answerCodeLabel.centerXAnchor.constraint(equalTo: codeLabel.centerXAnchor),
            
            poistionLabel.topAnchor.constraint(equalTo: topAnchor, constant: 40),
            poistionLabel.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 80),

            answerPositionLabel.topAnchor.constraint(equalTo: poistionLabel.bottomAnchor, constant: 10),
            answerPositionLabel.centerXAnchor.constraint(equalTo: poistionLabel.centerXAnchor),
            
            pointsLabel.topAnchor.constraint(equalTo: answerCodeLabel.bottomAnchor, constant: 30),
            pointsLabel.centerXAnchor.constraint(equalTo: centerXAnchor, constant: -80),
            
            answerPointsLabel.topAnchor.constraint(equalTo: pointsLabel.bottomAnchor, constant: 10),
            answerPointsLabel.centerXAnchor.constraint(equalTo: pointsLabel.centerXAnchor),
            
            numberWinsLabel.topAnchor.constraint(equalTo: answerPositionLabel.bottomAnchor, constant: 30),
            numberWinsLabel.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 80),

            answerNumberWinsLabel.topAnchor.constraint(equalTo: numberWinsLabel.bottomAnchor, constant: 10),
            answerNumberWinsLabel.centerXAnchor.constraint(equalTo: numberWinsLabel.centerXAnchor),
        ])
    }
}
