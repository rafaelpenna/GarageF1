//
//  TrackRecordCellScreen.swift
//  GarageF1
//
//  Created by Rafael Penna on 13/03/23.
//

import UIKit

class TrackRecordCellScreen: UIView {

    static let identifier = "TrackRecordCellScreen"
    
    lazy var trackRecordTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Record da Pista"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textColor = .gray
        return label
    }()
    
    lazy var trackRecordAnswer: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 45)
        label.textColor = .black
        return label
    }()
    
    lazy var trackRecordOwner: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.italicSystemFont(ofSize: 20)
        label.textColor = .gray
        return label
    }()
    
    lazy var trackRecordYear: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.italicSystemFont(ofSize: 20)
        label.textColor = .gray
        return label
    }()
    
    
    public func configure() {
        addSubViews()
        configConstraintsInfoDriver()
        backgroundColor = .white
    }
    
    private func addSubViews(){
        addSubview(trackRecordTitle)
        addSubview(trackRecordAnswer)
        addSubview(trackRecordOwner)
        addSubview(trackRecordYear)
    }
    
    private func configConstraintsInfoDriver(){
        NSLayoutConstraint.activate([
            
            trackRecordTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            trackRecordTitle.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            
            trackRecordAnswer.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -45),
            trackRecordAnswer.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -25),
            
            trackRecordOwner.trailingAnchor.constraint(equalTo: trackRecordYear.trailingAnchor, constant: -2),
            trackRecordOwner.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -2),
            
            trackRecordYear.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
            trackRecordYear.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -2),
        ])
    }

}
