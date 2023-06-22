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
    
    var backgroundQuarterOne: UIView = {
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
    
    var backgroundQuarterTwo: UIView = {
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
    
    var backgroundQuarterThree: UIView = {
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
    
    var backgroundQuarterFour: UIView = {
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
        backgroundColor()
        addElements()
        configConstraintsInfoDriver()
    }
    
    private func backgroundColor() {
        backgroundColor = .none
    }
    
    private func addElements(){
        addSubview(backgroundQuarterTwo)
        backgroundQuarterTwo.addSubview(poistionLabel)
        backgroundQuarterTwo.addSubview(answerPositionLabel)
        addSubview(backgroundQuarterOne)
        backgroundQuarterOne.addSubview(codeLabel)
        backgroundQuarterOne.addSubview(answerCodeLabel)
        addSubview(backgroundQuarterThree)
        backgroundQuarterThree.addSubview(pointsLabel)
        backgroundQuarterThree.addSubview(answerPointsLabel)
        addSubview(backgroundQuarterFour)
        backgroundQuarterFour.addSubview(numberWinsLabel)
        backgroundQuarterFour.addSubview(answerNumberWinsLabel)
    }
    
    private func configConstraintsInfoDriver(){
        NSLayoutConstraint.activate([
            
            backgroundQuarterOne.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            backgroundQuarterOne.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            backgroundQuarterOne.trailingAnchor.constraint(equalTo: centerXAnchor, constant: -5),
            backgroundQuarterOne.bottomAnchor.constraint(equalTo: answerCodeLabel.bottomAnchor, constant: 15),
            
            codeLabel.topAnchor.constraint(equalTo: topAnchor, constant: 40),
            codeLabel.centerXAnchor.constraint(equalTo: centerXAnchor, constant: -80),
            
            answerCodeLabel.topAnchor.constraint(equalTo: codeLabel.bottomAnchor, constant: 10),
            answerCodeLabel.centerXAnchor.constraint(equalTo: codeLabel.centerXAnchor),
            
            backgroundQuarterTwo.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            backgroundQuarterTwo.leadingAnchor.constraint(equalTo: centerXAnchor, constant: 5),
            backgroundQuarterTwo.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            backgroundQuarterTwo.bottomAnchor.constraint(equalTo: answerPositionLabel.bottomAnchor, constant: 15),
            
            poistionLabel.topAnchor.constraint(equalTo: topAnchor, constant: 40),
            poistionLabel.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 80),

            answerPositionLabel.topAnchor.constraint(equalTo: poistionLabel.bottomAnchor, constant: 10),
            answerPositionLabel.centerXAnchor.constraint(equalTo: poistionLabel.centerXAnchor),
            
            backgroundQuarterThree.topAnchor.constraint(equalTo: backgroundQuarterOne.bottomAnchor, constant: 10),
            backgroundQuarterThree.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            backgroundQuarterThree.trailingAnchor.constraint(equalTo: centerXAnchor, constant: -5),
            backgroundQuarterThree.bottomAnchor.constraint(equalTo: answerPointsLabel.bottomAnchor, constant: 15),
            
            pointsLabel.topAnchor.constraint(equalTo: answerCodeLabel.bottomAnchor, constant: 40),
            pointsLabel.centerXAnchor.constraint(equalTo: centerXAnchor, constant: -80),
            
            answerPointsLabel.topAnchor.constraint(equalTo: pointsLabel.bottomAnchor, constant: 10),
            answerPointsLabel.centerXAnchor.constraint(equalTo: pointsLabel.centerXAnchor),
            
            backgroundQuarterFour.topAnchor.constraint(equalTo: backgroundQuarterTwo.bottomAnchor, constant: 10),
            backgroundQuarterFour.leadingAnchor.constraint(equalTo: centerXAnchor, constant: 5),
            backgroundQuarterFour.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            backgroundQuarterFour.bottomAnchor.constraint(equalTo: answerNumberWinsLabel.bottomAnchor, constant: 15),
            
            numberWinsLabel.topAnchor.constraint(equalTo: answerPositionLabel.bottomAnchor, constant: 40),
            numberWinsLabel.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 80),

            answerNumberWinsLabel.topAnchor.constraint(equalTo: numberWinsLabel.bottomAnchor, constant: 10),
            answerNumberWinsLabel.centerXAnchor.constraint(equalTo: numberWinsLabel.centerXAnchor),
        ])
    }
}
