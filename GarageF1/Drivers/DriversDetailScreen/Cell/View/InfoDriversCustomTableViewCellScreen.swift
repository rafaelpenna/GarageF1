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
    
    var backgroundQuarterOneView: UIView = {
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
    
    var backgroundQuarterTwoView: UIView = {
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
    
    var backgroundQuarterThreeView: UIView = {
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
    
    var backgroundQuarterFourView: UIView = {
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
        addSubview(backgroundQuarterTwoView)
        backgroundQuarterTwoView.addSubview(poistionLabel)
        backgroundQuarterTwoView.addSubview(answerPositionLabel)
        addSubview(backgroundQuarterOneView)
        backgroundQuarterOneView.addSubview(codeLabel)
        backgroundQuarterOneView.addSubview(answerCodeLabel)
        addSubview(backgroundQuarterThreeView)
        backgroundQuarterThreeView.addSubview(pointsLabel)
        backgroundQuarterThreeView.addSubview(answerPointsLabel)
        addSubview(backgroundQuarterFourView)
        backgroundQuarterFourView.addSubview(numberWinsLabel)
        backgroundQuarterFourView.addSubview(answerNumberWinsLabel)
    }
    
    private func configConstraintsInfoDriver(){
        NSLayoutConstraint.activate([
            
            backgroundQuarterOneView.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            backgroundQuarterOneView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            backgroundQuarterOneView.trailingAnchor.constraint(equalTo: centerXAnchor, constant: -5),
            backgroundQuarterOneView.bottomAnchor.constraint(equalTo: answerCodeLabel.bottomAnchor, constant: 15),
            
            codeLabel.topAnchor.constraint(equalTo: topAnchor, constant: 40),
            codeLabel.centerXAnchor.constraint(equalTo: centerXAnchor, constant: -80),
            
            answerCodeLabel.topAnchor.constraint(equalTo: codeLabel.bottomAnchor, constant: 10),
            answerCodeLabel.centerXAnchor.constraint(equalTo: codeLabel.centerXAnchor),
            
            backgroundQuarterTwoView.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            backgroundQuarterTwoView.leadingAnchor.constraint(equalTo: centerXAnchor, constant: 5),
            backgroundQuarterTwoView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            backgroundQuarterTwoView.bottomAnchor.constraint(equalTo: answerPositionLabel.bottomAnchor, constant: 15),
            
            poistionLabel.topAnchor.constraint(equalTo: topAnchor, constant: 40),
            poistionLabel.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 80),

            answerPositionLabel.topAnchor.constraint(equalTo: poistionLabel.bottomAnchor, constant: 10),
            answerPositionLabel.centerXAnchor.constraint(equalTo: poistionLabel.centerXAnchor),
            
            backgroundQuarterThreeView.topAnchor.constraint(equalTo: backgroundQuarterOneView.bottomAnchor, constant: 10),
            backgroundQuarterThreeView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            backgroundQuarterThreeView.trailingAnchor.constraint(equalTo: centerXAnchor, constant: -5),
            backgroundQuarterThreeView.bottomAnchor.constraint(equalTo: answerPointsLabel.bottomAnchor, constant: 15),
            
            pointsLabel.topAnchor.constraint(equalTo: answerCodeLabel.bottomAnchor, constant: 40),
            pointsLabel.centerXAnchor.constraint(equalTo: centerXAnchor, constant: -80),
            
            answerPointsLabel.topAnchor.constraint(equalTo: pointsLabel.bottomAnchor, constant: 10),
            answerPointsLabel.centerXAnchor.constraint(equalTo: pointsLabel.centerXAnchor),
            
            backgroundQuarterFourView.topAnchor.constraint(equalTo: backgroundQuarterTwoView.bottomAnchor, constant: 10),
            backgroundQuarterFourView.leadingAnchor.constraint(equalTo: centerXAnchor, constant: 5),
            backgroundQuarterFourView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            backgroundQuarterFourView.bottomAnchor.constraint(equalTo: answerNumberWinsLabel.bottomAnchor, constant: 15),
            
            numberWinsLabel.topAnchor.constraint(equalTo: answerPositionLabel.bottomAnchor, constant: 40),
            numberWinsLabel.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 80),

            answerNumberWinsLabel.topAnchor.constraint(equalTo: numberWinsLabel.bottomAnchor, constant: 10),
            answerNumberWinsLabel.centerXAnchor.constraint(equalTo: numberWinsLabel.centerXAnchor),
        ])
    }
}
