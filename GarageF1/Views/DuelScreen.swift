//
//  DuelScreen.swift
//  GarageF1
//
//  Created by Rafael Penna on 02/02/23.
//

import UIKit

class DuelScreen: UIView {
    

    lazy var topLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .red
        return label
    }()

    
    lazy var firstNameLeft: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 25)
        label.text = "Michael"
        return label
    }()
    
    lazy var lastNameLeft: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Schumacher"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 25)
        return label
    }()
    
    lazy var leftArrow: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "seasonIcon")
        return imageView
    }()
    
    lazy var firstNameRight: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 25)
        label.text = "Max"
        return label
    }()
    
    lazy var lastNameRight: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Verstappen"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 25)
        return label
    }()
    
    lazy var rightArrow: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "seasonIcon")
        return imageView
    }()
    
    private lazy var boardInfoLeft: DuelStackInfoLeft = {
        let variable = DuelStackInfoLeft()
        variable.translatesAutoresizingMaskIntoConstraints = false
        return variable
    }()
    
    private lazy var boardInfoRight: DuelStackInfoRight = {
        let variable = DuelStackInfoRight()
        variable.translatesAutoresizingMaskIntoConstraints = false
        return variable
    }()
    
    lazy var backButton: UIButton = {
       let backButton = UIButton()
        backButton.translatesAutoresizingMaskIntoConstraints = false
        backButton.setImage(UIImage(named: "seta"), for: .normal)
        return backButton
    }()
    
    lazy var divisionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .black
        return label
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(self.topLabel)
        self.addSubview(self.firstNameLeft)
        self.addSubview(self.lastNameLeft)
        self.addSubview(self.firstNameRight)
        self.addSubview(self.lastNameRight)
        self.addSubview(self.leftArrow)
        self.addSubview(self.rightArrow)
        self.addSubview(self.backButton)
        self.addSubview(self.boardInfoLeft)
        self.addSubview(self.boardInfoRight)
        self.addSubview(self.divisionLabel)
        constraintsScreen()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func constraintsScreen(){
        NSLayoutConstraint.activate([
            
            topLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            topLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            topLabel.topAnchor.constraint(equalTo: self.topAnchor),
            topLabel.heightAnchor.constraint(equalToConstant: 180),
            
            firstNameLeft.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 35),
            firstNameLeft.bottomAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: -55),

            lastNameLeft.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            lastNameLeft.bottomAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: -30),
            
            leftArrow.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 165),
            leftArrow.bottomAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: -50),
            leftArrow.heightAnchor.constraint(equalToConstant: 15),
            leftArrow.widthAnchor.constraint(equalToConstant: 15),
            
            firstNameRight.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -75),
            firstNameRight.bottomAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: -55),

            lastNameRight.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            lastNameRight.bottomAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: -30),
                        
            rightArrow.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            rightArrow.bottomAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: -50),
            rightArrow.heightAnchor.constraint(equalToConstant: 15),
            rightArrow.widthAnchor.constraint(equalToConstant: 15),
            
            backButton.topAnchor.constraint(equalTo: topAnchor, constant: 45),
            backButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            backButton.heightAnchor.constraint(equalToConstant: 20),
            backButton.widthAnchor.constraint(equalToConstant: 20),
            
            boardInfoLeft.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            boardInfoLeft.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.5),
            boardInfoLeft.topAnchor.constraint(equalTo: topLabel.bottomAnchor),
            boardInfoLeft.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -60),
            
            boardInfoRight.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            boardInfoRight.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.5),
            boardInfoRight.topAnchor.constraint(equalTo: topLabel.bottomAnchor),
            boardInfoRight.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -60),
            
            divisionLabel.topAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: 20),
            divisionLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            divisionLabel.heightAnchor.constraint(equalTo: boardInfoLeft.heightAnchor),
            divisionLabel.widthAnchor.constraint(equalToConstant: 2),
        ])
    }
}
