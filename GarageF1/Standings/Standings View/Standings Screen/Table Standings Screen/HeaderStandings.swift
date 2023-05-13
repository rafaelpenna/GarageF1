//
//  HeaderStandings.swift
//  GarageF1
//
//  Created by Rafael Penna on 13/03/23.
//

import UIKit

class HeaderStandings: UIView {
    
    var standingsViewModel: StandingsViewModel = StandingsViewModel()
    
    lazy var standoutDriverLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1)
        return label
    }()
    
    lazy var headerInformationLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .gray
        return label
    }()
    
    // Header Information Elements
    
    lazy var posTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "POS"
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = .white
        return label
    }()
    
    lazy var driverTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "DRIVER"
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = .white
        return label
    }()
    
    lazy var timeTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "TIME/RET"
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = .white
        return label
    }()
    
    lazy var ptsTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "PTS"
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = .white
        return label
    }()
    
//    Best Lap (Standout) Elements
    
    lazy var standoutBackgroundLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .white
        return label
    }()
    
    lazy var standoutTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "VOLTA MAIS RÁPIDA"
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = .red
        return label
    }()
    
    lazy var standoutNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = standingsViewModel.getBestLapNameDriver()
        label.font = UIFont.boldSystemFont(ofSize: 30)
        return label
    }()
    
    lazy var standoutTimeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = standingsViewModel.getBestLapTime()
        label.font = UIFont.italicSystemFont(ofSize: 22)
        return label
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addElements()
        configConstraints()
    }
    
    private func addElements() {
        
        self.addSubview(standoutDriverLabel)
        self.addSubview(headerInformationLabel)
        
        headerInformationLabel.self.addSubview(posTitleLabel)
        headerInformationLabel.self.addSubview(driverTitleLabel)
        headerInformationLabel.self.addSubview(timeTitleLabel)
        headerInformationLabel.self.addSubview(ptsTitleLabel)
        
        standoutDriverLabel.self.addSubview(standoutBackgroundLabel)
        standoutBackgroundLabel.self.addSubview(standoutNameLabel)
        standoutBackgroundLabel.self.addSubview(standoutTitleLabel)
        standoutBackgroundLabel.self.addSubview(standoutTimeLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configConstraints(){
        NSLayoutConstraint.activate([
            
            standoutDriverLabel.topAnchor.constraint(equalTo: topAnchor),
            standoutDriverLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            standoutDriverLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            standoutDriverLabel.bottomAnchor.constraint(equalTo: topAnchor),
            
            headerInformationLabel.heightAnchor.constraint(equalToConstant: 22),
            headerInformationLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            headerInformationLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            headerInformationLabel.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            posTitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            posTitleLabel.topAnchor.constraint(equalTo: headerInformationLabel.topAnchor, constant: 1),
            
            driverTitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 55),
            driverTitleLabel.topAnchor.constraint(equalTo: headerInformationLabel.topAnchor, constant: 1),
            
            timeTitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 160),
            timeTitleLabel.topAnchor.constraint(equalTo: headerInformationLabel.topAnchor, constant: 1),
            
            ptsTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -22),
            ptsTitleLabel.topAnchor.constraint(equalTo: headerInformationLabel.topAnchor, constant: 1),
            
            
            standoutBackgroundLabel.topAnchor.constraint(equalTo: standoutDriverLabel.topAnchor, constant: 10),
            standoutBackgroundLabel.leadingAnchor.constraint(equalTo: standoutDriverLabel.leadingAnchor, constant: 25),
            standoutBackgroundLabel.trailingAnchor.constraint(equalTo: standoutDriverLabel.trailingAnchor, constant: -25),
            standoutBackgroundLabel.bottomAnchor.constraint(equalTo: standoutDriverLabel.bottomAnchor, constant: -5),
            
            standoutTitleLabel.topAnchor.constraint(equalTo: standoutBackgroundLabel.topAnchor, constant: 2),
            standoutTitleLabel.leadingAnchor.constraint(equalTo: standoutBackgroundLabel.leadingAnchor, constant: 10),
            
            standoutNameLabel.leadingAnchor.constraint(equalTo: standoutBackgroundLabel.leadingAnchor, constant: 10),
            standoutNameLabel.topAnchor.constraint(equalTo: standoutBackgroundLabel.topAnchor, constant: 25),
            
            standoutTimeLabel.trailingAnchor.constraint(equalTo: standoutBackgroundLabel.trailingAnchor, constant: -15),
            standoutTimeLabel.topAnchor.constraint(equalTo: standoutBackgroundLabel.topAnchor, constant: 30),
        ])
    }
}
