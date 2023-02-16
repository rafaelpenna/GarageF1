//
//  RacingScreen.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 21/01/23.
//

import UIKit

protocol racingScreenProtocols: AnyObject {
    
}

class RacingScreen: UIView {

    private weak var delegate: racingScreenProtocols?
    func delegate(delegate: racingScreenProtocols?) {
        self.delegate = delegate
    }
    
    lazy var topLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .red
        // Precisa colocar a cor certa
        return label
    }()
    
    lazy var racingLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Corridas"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 35)
        return label
    }()
    
    lazy var seasonLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Temporada 2022"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    private lazy var racingTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .white
        tableView.separatorStyle = .singleLine
        tableView.separatorColor = .darkGray
        tableView.register(RacingCustomTableViewCell.self, forCellReuseIdentifier: RacingCustomTableViewCell.identifier)
        tableView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        return tableView
        
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addElements()
        backgroundColor()
        configConstraints()
 
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements() {
        addSubview(topLabel)
        addSubview(racingLabel)
        addSubview(seasonLabel)
        addSubview(racingTableView)
        
    }

    private func backgroundColor() {
        backgroundColor = UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1.0)
    }
    
    func configTableViewDelegate(delegate: UITableViewDelegate, dataSource: UITableViewDataSource) {
        racingTableView.delegate = delegate
        racingTableView.dataSource = dataSource
    }
    
    private func configConstraints(){
        NSLayoutConstraint.activate([
            
         
            
            topLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            topLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            topLabel.topAnchor.constraint(equalTo: topAnchor),
            topLabel.heightAnchor.constraint(equalToConstant: 115),
            
            racingLabel.centerYAnchor.constraint(equalTo: topLabel.centerYAnchor),
            racingLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),

            
            seasonLabel.topAnchor.constraint(equalTo: racingLabel.bottomAnchor, constant: 10),
            seasonLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            racingTableView.topAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: 10),
            racingTableView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            racingTableView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            racingTableView.bottomAnchor.constraint(equalTo: layoutMarginsGuide.bottomAnchor),
            
        ])
    }
}
