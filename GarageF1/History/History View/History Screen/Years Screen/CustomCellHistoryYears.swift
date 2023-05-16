//
//  CustomCellHistoryYears.swift
//  GarageF1
//
//  Created by Rafael Penna on 15/05/23.
//

import UIKit

class CustomCellHistoryYears: UIView {
    
    lazy var yearLabel: UILabel = {
        let positionLabel = UILabel()
        positionLabel.translatesAutoresizingMaskIntoConstraints = false
        positionLabel.font = UIFont.systemFont(ofSize: 18)
        return positionLabel
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubViews()
        self.configConstraintsInfoDriver()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addSubViews(){
        addSubview(yearLabel)
    }
    
    private func configConstraintsInfoDriver(){
        NSLayoutConstraint.activate([
            
            yearLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            yearLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
    }
}
