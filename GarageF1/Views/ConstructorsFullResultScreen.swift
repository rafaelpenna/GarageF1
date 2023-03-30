//
//  ConstructorsFullResultScreen.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 25/03/23.
//

import UIKit

protocol ConstructorsFullResultScreenProtocol: AnyObject {
    func actionBackButton()
}

class ConstructorsFullResultScreen: UIView {
    
    private weak var delegate: ConstructorsFullResultScreenProtocol?
    func delegate(delegate: ConstructorsFullResultScreenProtocol?) {
        self.delegate = delegate
    }
    
    private lazy var topLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .red
        return label
    }()
    
    private lazy var topRedLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .red
        return label
    }()
    
    lazy var backButton: UIButton = {
       let backButton = UIButton()
        backButton.translatesAutoresizingMaskIntoConstraints = false
        backButton.setImage(UIImage(named: "backButton"), for: .normal)
        backButton.addTarget(self, action: #selector(tappedBackButton), for: .touchUpInside)
        return backButton
    }()
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Classificação"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 35)
        return label
    }()
    
    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Confira a classificação geral do mundial de construtores em tempo real"
        label.numberOfLines = 0
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()
    
    lazy var constructorsTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none
        tableView.separatorColor = .darkGray
        tableView.allowsSelection = false
        tableView.separatorStyle = .singleLine
        tableView.register(CustomFullResultConstructorsTableViewCell.self, forCellReuseIdentifier: CustomFullResultConstructorsTableViewCell.identifier)
        return tableView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview()
        setUpConstraints()
        backgroundColor()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configTableViewProtocols(delegate: UITableViewDelegate, dataSource: UITableViewDataSource) {
        constructorsTableView.delegate = delegate
        constructorsTableView.dataSource = dataSource
    
    }
    
    private func addSubview() {
        addSubview(topLabel)
        addSubview(topRedLabel)
        addSubview(backButton)
        addSubview(titleLabel)
        addSubview(descriptionLabel)
        addSubview(constructorsTableView)
        
    }
    
    @objc func tappedBackButton() {
        delegate?.actionBackButton()
    }
    
    private func backgroundColor() {
        backgroundColor = UIColor(red: 66/255, green: 66/255, blue: 66/255, alpha: 1.0)
    }
    
    private func setUpConstraints() {
        NSLayoutConstraint.activate([
        
            topLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            topLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            topLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            topLabel.heightAnchor.constraint(equalToConstant: 135),
            
            topRedLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            topRedLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            topRedLabel.topAnchor.constraint(equalTo: topAnchor),
            topRedLabel.heightAnchor.constraint(equalToConstant: 50),
        
            backButton.topAnchor.constraint(equalTo: titleLabel.topAnchor, constant: 13),
            backButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            backButton.heightAnchor.constraint(equalToConstant: 20),
            backButton.widthAnchor.constraint(equalToConstant: 15),
            
            titleLabel.centerXAnchor.constraint(equalTo: topLabel.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            
            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            descriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            descriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            constructorsTableView.topAnchor.constraint(equalTo: topLabel.bottomAnchor),
            constructorsTableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            constructorsTableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            constructorsTableView.bottomAnchor.constraint(equalTo: layoutMarginsGuide.bottomAnchor),
        
        ])
    }
    
}
