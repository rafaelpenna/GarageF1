//
//  HeaderStandings.swift
//  GarageF1
//
//  Created by Rafael Penna on 13/03/23.
//

import UIKit

class HeaderStandings: UIView {
    
    var standingsViewModel: StandingsViewModel = StandingsViewModel()
    
    lazy var standoutDriver: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1)
        return label
    }()
    
    lazy var headerInformation: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .gray
        return label
    }()
    
    // Info Head Information
    
    lazy var posTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "POS"
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = .white
        return label
    }()
    
    lazy var driverTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "DRIVER"
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = .white
        return label
    }()
    
    lazy var timeTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "TIME/RET"
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = .white
        return label
    }()
    
    lazy var ptsTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "PTS"
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = .white
        return label
    }()
    
//    Info Best Driver
    
    lazy var standoutBackground: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .white
        return label
    }()
    
    lazy var standoutTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "VOLTA MAIS RÁPIDA"
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = .red
        return label
    }()
    
    lazy var standoutName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = standingsViewModel.getBestLapNameDriver()
        label.font = UIFont.boldSystemFont(ofSize: 30)
        return label
    }()
    
    lazy var standoutTime: UILabel = {
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
        
        self.addSubview(standoutDriver)
        self.addSubview(headerInformation)
        
        headerInformation.self.addSubview(posTitle)
        headerInformation.self.addSubview(driverTitle)
        headerInformation.self.addSubview(timeTitle)
        headerInformation.self.addSubview(ptsTitle)
        
        standoutDriver.self.addSubview(standoutBackground)
        standoutBackground.self.addSubview(standoutName)
        standoutBackground.self.addSubview(standoutTitle)
        standoutBackground.self.addSubview(standoutTime)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configConstraints(){
        NSLayoutConstraint.activate([
            
            standoutDriver.topAnchor.constraint(equalTo: topAnchor),
            standoutDriver.leadingAnchor.constraint(equalTo: leadingAnchor),
            standoutDriver.trailingAnchor.constraint(equalTo: trailingAnchor),
            standoutDriver.bottomAnchor.constraint(equalTo: topAnchor),
            
            headerInformation.heightAnchor.constraint(equalToConstant: 22),
            headerInformation.leadingAnchor.constraint(equalTo: leadingAnchor),
            headerInformation.trailingAnchor.constraint(equalTo: trailingAnchor),
            headerInformation.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            posTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            posTitle.topAnchor.constraint(equalTo: headerInformation.topAnchor, constant: 1),
            
            driverTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 55),
            driverTitle.topAnchor.constraint(equalTo: headerInformation.topAnchor, constant: 1),
            
            timeTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 160),
            timeTitle.topAnchor.constraint(equalTo: headerInformation.topAnchor, constant: 1),
            
            ptsTitle.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -22),
            ptsTitle.topAnchor.constraint(equalTo: headerInformation.topAnchor, constant: 1),
            
            
            standoutBackground.topAnchor.constraint(equalTo: standoutDriver.topAnchor, constant: 10),
            standoutBackground.leadingAnchor.constraint(equalTo: standoutDriver.leadingAnchor, constant: 25),
            standoutBackground.trailingAnchor.constraint(equalTo: standoutDriver.trailingAnchor, constant: -25),
            standoutBackground.bottomAnchor.constraint(equalTo: standoutDriver.bottomAnchor, constant: -5),
            
            standoutTitle.topAnchor.constraint(equalTo: standoutBackground.topAnchor, constant: 2),
            standoutTitle.leadingAnchor.constraint(equalTo: standoutBackground.leadingAnchor, constant: 10),
            
            standoutName.leadingAnchor.constraint(equalTo: standoutBackground.leadingAnchor, constant: 10),
            standoutName.topAnchor.constraint(equalTo: standoutBackground.topAnchor, constant: 25),
            
            standoutTime.trailingAnchor.constraint(equalTo: standoutBackground.trailingAnchor, constant: -15),
            standoutTime.topAnchor.constraint(equalTo: standoutBackground.topAnchor, constant: 30),
            ])
    }
}
