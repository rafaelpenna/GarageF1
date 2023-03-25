//
//  DDuelCustomTableViewCell.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 24/03/23.
//

import UIKit

class DDuelCustomTableViewCell: UITableViewCell {
    
    static let identifier: String = "DDuelCustomTableViewCell"
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Quem ganha essa?"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 25)
        return label
    }()
    
    lazy var duoBackgroundImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "backgroundduoscreen")
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Simule um duelo entre os melhores pilotos da história da Fórmula 1"
        label.numberOfLines = 0
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 17)
        return label
    }()
    
    lazy var pilot1: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "duopilot1")
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var pilot2: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "duopilot2")
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        return image
    }()



    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubView()
        setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addSubView() {
        
        addSubview(titleLabel)
        addSubview(descriptionLabel)
        addSubview(duoBackgroundImage)
        addSubview(pilot1)
        addSubview(pilot2)
    }
    
    private func setUpConstraints() {
        NSLayoutConstraint.activate([
            
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 15),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            
            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 5),
            descriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            descriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            duoBackgroundImage.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 5),
            duoBackgroundImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            duoBackgroundImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            duoBackgroundImage.heightAnchor.constraint(equalToConstant: 200),
            
            pilot1.topAnchor.constraint(equalTo: topAnchor, constant: 165),
            pilot1.leadingAnchor.constraint(equalTo: leadingAnchor),
            pilot1.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -200),
            pilot1.heightAnchor.constraint(equalToConstant: 65),
            
            pilot2.topAnchor.constraint(equalTo: topAnchor, constant: 165),
            pilot2.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 200),
            pilot2.trailingAnchor.constraint(equalTo: trailingAnchor),
            pilot2.heightAnchor.constraint(equalToConstant: 65),
        ])
    }
}
