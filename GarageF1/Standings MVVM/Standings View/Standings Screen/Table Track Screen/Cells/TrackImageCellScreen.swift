//
//  TrackImageCellScreen.swift
//  GarageF1
//
//  Created by Rafael Penna on 13/03/23.
//

import UIKit

class TrackImageCellScreen: UIView {

    static let identifier = "TrackImageCellScreen"
    
    lazy var trackImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "interlagos")
        return image
    }()
    
    
    public func configure() {
        addSubViews()
        configConstraintsInfoDriver()
        backgroundColor = .white
    }
    
    private func addSubViews(){
        addSubview(trackImage)
    }
    
    private func configConstraintsInfoDriver(){
        NSLayoutConstraint.activate([
            
            trackImage.topAnchor.constraint(equalTo: topAnchor, constant: 30),
            trackImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            trackImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            trackImage.heightAnchor.constraint(equalToConstant: 300),
        ])
    }

}
