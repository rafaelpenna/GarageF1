//
//  RaceLapsCellScreen.swift
//  GarageF1
//
//  Created by Rafael Penna on 13/03/23.
//

import UIKit

class RaceLapsCellScreen: UITableViewCell {

    static let identifier = String(describing: RaceLapsCellScreen.self)
    
    lazy var backgroundCellWhiteView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    
    lazy var trackLapsTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Número de Voltas"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textColor = UIColor(red: 66/255, green: 66/255, blue: 66/255, alpha: 1)
        return label
    }()
    
    lazy var trackLapsAnswer: UILabel = {
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
        addSubview(trackLapsTitle)
        addSubview(trackLapsAnswer)
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
            
            trackLapsTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 7),
            trackLapsTitle.topAnchor.constraint(equalTo: topAnchor, constant: 7),
            
            trackLapsAnswer.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            trackLapsAnswer.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -15),
        ])
    }
}
