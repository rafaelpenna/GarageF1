//
//  SecondDriverScreen.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 11/03/23.
//

import UIKit

protocol secondDriverScreenProtocol: AnyObject {
    func tappedBackButton()
}

class SecondDriverScreen: UIView {

    private weak var delegate: secondDriverScreenProtocol?
    func delegate(delegate: secondDriverScreenProtocol?) {
        self.delegate = delegate
    }

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
        backButton.addTarget(self, action: #selector(tappedBackButton), for: .touchUpInside)
        return backButton
    }()
    
    lazy var firstName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Charles"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 25)
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
        image.image = UIImage(named: "charles")
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(topLabel)
        addSubview(backButton)
        addSubview(firstName)
        addSubview(lastName)
        addSubview(driverPhoto)
        backgroundColor = .white
        constraintsScreen()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func tappedBackButton() {
        delegate?.tappedBackButton()
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
            driverPhoto.heightAnchor.constraint(equalToConstant: 120),
            driverPhoto.widthAnchor.constraint(equalToConstant: 120),
            
        ])
    }

}
