//
//  TrackRecordCellScreen.swift
//  GarageF1
//
//  Created by Rafael Penna on 13/03/23.
//

import UIKit

class TrackRecordCellScreen: UITableViewCell {

    static let identifier = String(describing: TrackRecordCellScreen.self)
    
    lazy var backgroundCellWhite: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .white
        return label
    }()
    
    lazy var trackRecordTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Recorde da Pista"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textColor = UIColor(red: 66/255, green: 66/255, blue: 66/255, alpha: 1)
        return label
    }()
    
    lazy var trackRecordAnswer: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 45)
        label.textColor = UIColor(red: 66/255, green: 66/255, blue: 66/255, alpha: 1)
        return label
    }()
    
    lazy var trackRecordOwner: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.italicSystemFont(ofSize: 18)
        label.textColor = .gray
        return label
    }()
    
    lazy var trackRecordYear: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textColor = .gray
        return label
    }()
    
    
    public func configure() {
        addElements()
        setBackgroundColor()
        configConstraintsInfoDriver()
    }
    
    private func addElements(){
        addSubview(backgroundCellWhite)
        addSubview(trackRecordTitle)
        addSubview(trackRecordAnswer)
        addSubview(trackRecordOwner)
        addSubview(trackRecordYear)
    }
    
    private func setBackgroundColor() {
        backgroundColor = UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1)
    }
    
    private func configConstraintsInfoDriver(){
        NSLayoutConstraint.activate([
            
            backgroundCellWhite.topAnchor.constraint(equalTo: topAnchor),
            backgroundCellWhite.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundCellWhite.trailingAnchor.constraint(equalTo: trailingAnchor),
            backgroundCellWhite.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
            
            trackRecordTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 7),
            trackRecordTitle.topAnchor.constraint(equalTo: topAnchor, constant: 7),
            
            trackRecordAnswer.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            trackRecordAnswer.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -30),
            
            trackRecordOwner.trailingAnchor.constraint(equalTo: trackRecordYear.leadingAnchor, constant: -2),
            trackRecordOwner.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
            
            trackRecordYear.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            trackRecordYear.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
        ])
    }

}
