//
//  FirstGrandPrixCellScreen.swift
//  GarageF1
//
//  Created by Rafael Penna on 13/03/23.
//

import UIKit

class FirstGrandPrixCellScreen: UITableViewCell {

    static let identifier = String(describing: FirstGrandPrixCellScreen.self)
    
    lazy var backgroundCellWhiteView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    
    lazy var firstGrandPrixTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Primeiro Grand Prix"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textColor = UIColor(red: 66/255, green: 66/255, blue: 66/255, alpha: 1)
        return label
    }()
    
    lazy var firstGrandPrixAnswer: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 45)
        label.textColor = UIColor(red: 66/255, green: 66/255, blue: 66/255, alpha: 1)
        return label
    }()
    
    
    public func configure() {
        addElements()
        setBackgroundColor()
        configConstraintsInfoDriver()
    }
    
    private func addElements(){
        addSubview(backgroundCellWhiteView)
        addSubview(firstGrandPrixTitle)
        addSubview(firstGrandPrixAnswer)
    }
    
    private func setBackgroundColor() {
        backgroundColor = UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1)
    }
    
    private func configConstraintsInfoDriver(){
        NSLayoutConstraint.activate([
            
            backgroundCellWhiteView.topAnchor.constraint(equalTo: topAnchor),
            backgroundCellWhiteView.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundCellWhiteView.trailingAnchor.constraint(equalTo: trailingAnchor),
            backgroundCellWhiteView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
            
            firstGrandPrixTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 7),
            firstGrandPrixTitle.topAnchor.constraint(equalTo: topAnchor, constant: 7),

            firstGrandPrixAnswer.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            firstGrandPrixAnswer.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -15),
        ])
    }
}
