//
//  CustomStandingCollectionScreen.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 15/03/23.
//

import UIKit

class CustomStandingCollectionScreen: UIView {
    
    lazy var indicePilot: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 80)
        label.textColor = .black
//        label.backgroundColor = .brown
        return label
    }()
    
    lazy var namePilot: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.numberOfLines = 0
        label.textColor = .black
//        label.backgroundColor = .blue
        return label
    }()
    
//    lazy var touchHere: UILabel = {
//        let label = UILabel()
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.textAlignment = .center
//        label.text = "Toque para detalhes"
//        label.font = UIFont.systemFont(ofSize: 14)
//        label.numberOfLines = 0
//        label.textColor = .black
//        return label
//    }()
    
    lazy var nameTeams: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = .black
//        label.backgroundColor = .green
        return label
    }()
    
    
    lazy var pilot: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
//        image.backgroundColor = .magenta
        return image
    }()

//    lazy var viewBackground: UIView = {
//        let view = UIView()
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.backgroundColor = .green
//        return view
//    }()
//
    override init(frame: CGRect) {
        super.init(frame: frame)
        addComponents()
        setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addComponents() {

        addSubview(indicePilot)
        addSubview(namePilot)
//        addSubview(touchHere)
        addSubview(nameTeams)
        addSubview(pilot)
    }
    
    private func setUpConstraints() {
        NSLayoutConstraint.activate([
            
            pilot.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            pilot.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 170),
            pilot.trailingAnchor.constraint(equalTo: trailingAnchor),
            pilot.heightAnchor.constraint(equalToConstant: 160),
            
            namePilot.topAnchor.constraint(equalTo: topAnchor, constant: 40),
//            namePilot.leadingAnchor.constraint(equalTo: indicePilot.leadingAnchor, constant: 20),
            namePilot.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -180),
         
//            touchHere.topAnchor.constraint(equalTo: topAnchor, constant: 10),
//            touchHere.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            
//            indicePilot.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            indicePilot.centerYAnchor.constraint(equalTo: centerYAnchor),
            indicePilot.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
//            indicePilot.heightAnchor.constraint(equalToConstant: 100),
//            indicePilot.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -230),
            
            
            nameTeams.topAnchor.constraint(equalTo: namePilot.bottomAnchor, constant: 2),
//            nameTeams.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            nameTeams.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -170),
        
//            viewBackground.topAnchor.constraint(equalTo: topAnchor),
//            viewBackground.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
//            viewBackground.trailingAnchor.constraint(equalTo: trailingAnchor),
//            viewBackground.bottomAnchor.constraint(equalTo: bottomAnchor),
        
        ])
    }
    
}
