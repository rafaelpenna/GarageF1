//
//  FullResultButtonTableViewCell.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 17/03/23.
//

import UIKit

protocol FullResultButtonTableViewCellProtocol: AnyObject {
    func actionFullResultButton()
}

class FullResultButtonTableViewCell: UITableViewCell {

    static let identifier: String = String(describing: FullResultButtonTableViewCell.self)
    
    weak private var delegate: FullResultButtonTableViewCellProtocol?
    public func delegate(delegate: FullResultButtonTableViewCellProtocol?) {
        self.delegate = delegate
    }
    
    lazy var fullResultButton: UIButton = {
       let button = UIButton()
        button.setTitle("Toque para classificação completa", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 19)
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(tappedFullResultButton), for: .touchUpInside)
        return button
    }()
    
    func configure() {
        addSubview()
        setUpConstraints()
    }
    
    @objc func tappedFullResultButton() {
        delegate?.actionFullResultButton()
    }
    
    func addSubview() {
        addSubview(fullResultButton)
    }
    
    private func setUpConstraints() {
        NSLayoutConstraint.activate([
            fullResultButton.topAnchor.constraint(equalTo: topAnchor, constant: 7),
            fullResultButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
        ])
    }
}
