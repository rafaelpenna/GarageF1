//
//  DriversDetailScreen.swift
//  GarageF1
//
//  Created by Rafael Penna on 01/02/23.
//

import UIKit

class DriversDetailScreen: UIView {

    lazy var topLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .red
        return label
    }()
    
    lazy var backButton: UIButton = {
       let backButton = UIButton()
        backButton.translatesAutoresizingMaskIntoConstraints = false
        backButton.setImage(UIImage(named: "seta"), for: .normal)
        return backButton
    }()
    
    lazy var firstName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 25)
        label.text = "Charles"
        return label
    }()
    
    lazy var lastName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Leclerc"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 25)
        return label
    }()
    
    lazy var driverPhoto: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "Leclerc1")
        return image
    }()
    
    private lazy var boardInfo: DriversInfoStackList = {
        let variable = DriversInfoStackList()
        variable.translatesAutoresizingMaskIntoConstraints = false
        return variable
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(self.topLabel)
        self.addSubview(self.backButton)
        self.addSubview(self.firstName)
        self.addSubview(self.lastName)
        self.addSubview(self.driverPhoto)
        self.addSubview(self.boardInfo)
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
            topLabel.heightAnchor.constraint(equalToConstant: 160),
            
            backButton.topAnchor.constraint(equalTo: topAnchor, constant: 45),
            backButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            backButton.heightAnchor.constraint(equalToConstant: 20),
            backButton.widthAnchor.constraint(equalToConstant: 20),
            
            
            firstName.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50),
            firstName.bottomAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: -40),
            
            lastName.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50),
            lastName.bottomAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: -15),
            
            driverPhoto.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
            driverPhoto.bottomAnchor.constraint(equalTo: topLabel.bottomAnchor),
            driverPhoto.heightAnchor.constraint(equalToConstant: 100),
            driverPhoto.widthAnchor.constraint(equalToConstant: 100),
            
            boardInfo.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            boardInfo.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            boardInfo.topAnchor.constraint(equalTo: topLabel.bottomAnchor),
            boardInfo.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -60),
        ])
    }
}
