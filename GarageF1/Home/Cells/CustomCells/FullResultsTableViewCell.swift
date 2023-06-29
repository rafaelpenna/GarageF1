//
//  FullResultsTableViewCell.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 17/03/23.
//

import UIKit

class FullResultsTableViewCell: UITableViewCell {
    
    static let identifier: String = String(describing: FullResultsTableViewCell.self)
    
    var fullResultsViewModel: FullResultsViewModel = FullResultsViewModel()
    var fullResultsTableViewScreen: FullResultsTableViewScreen = FullResultsTableViewScreen()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview()
        configCosntraints()
        fullResultsViewModel.fetch(.request)
        fullResultsViewModel.delegate(delegate: self)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubview() {
        fullResultsTableViewScreen.translatesAutoresizingMaskIntoConstraints = false
    
        contentView.addSubview(fullResultsTableViewScreen)
        
    }
    
    private func configCosntraints() {
        NSLayoutConstraint.activate([
            fullResultsTableViewScreen.topAnchor.constraint(equalTo: topAnchor),
            fullResultsTableViewScreen.leadingAnchor.constraint(equalTo: leadingAnchor),
            fullResultsTableViewScreen.trailingAnchor.constraint(equalTo: trailingAnchor),
            fullResultsTableViewScreen.bottomAnchor.constraint(equalTo: bottomAnchor),
        
        ])
    }
}

extension FullResultsTableViewCell: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fullResultsViewModel.numberOfRows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let cell: CustomResultsFullTableView? = tableView.dequeueReusableCell(withIdentifier: CustomResultsFullTableView.identifier, for: indexPath) as? CustomResultsFullTableView
            cell?.setupCell(constructors: fullResultsViewModel.loadCurrentDriver(indexPath: indexPath))
            return cell ?? UITableViewCell()
        }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

extension FullResultsTableViewCell: FullResultsViewModelViewModelDelegate {
    func success() {
        fullResultsTableViewScreen.configTableViewProtocols(delegate: self, dataSource: self)
        reloadTableView()
    }
    
    func error(_ message: String) {
        
    }
}

extension FullResultsTableViewCell: FullResultsViewModelProtocol {
    func reloadTableView() {
        fullResultsTableViewScreen.fullResultsTableView.reloadData()
    }
}
