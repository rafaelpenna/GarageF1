//
//  ConstructorsFullResultTableViewCell.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 25/03/23.
//

import UIKit

class ConstructorsFullResultVC: UIViewController {
    
    var constructorsFullResultScreen: ConstructorsFullResultScreen = ConstructorsFullResultScreen()
    var fullConstructorsViewModel: FullConstructorsViewModel = FullConstructorsViewModel()
    
    override func loadView() {
        view = constructorsFullResultScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configProtocols()
        self.fullConstructorsViewModel.fetch(.request)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    private func configProtocols() {
        constructorsFullResultScreen.delegate(delegate: self)
        fullConstructorsViewModel.delegate(delegate: self)
    }
}

extension ConstructorsFullResultVC: ConstructorsFullResultScreenProtocol {
    func actionBackButton() {
        self.navigationController?.popToRootViewController(animated: true)
    }
}

extension ConstructorsFullResultVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fullConstructorsViewModel.numberOfRows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomFullResultConstructorsTableViewCell.identifier, for: indexPath) as? CustomFullResultConstructorsTableViewCell
        cell?.setupCell(constructors: fullConstructorsViewModel.loadCurrentDriver(indexPath: indexPath))
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    
        return 100
    }
}

extension ConstructorsFullResultVC: FullConstructorsViewModelDelegate {
    func success() {
        self.constructorsFullResultScreen.configTableViewProtocols(delegate: self, dataSource: self)
        reloadTableView()
    }
    
    func error(_ message: String) {
        
    }
}

extension ConstructorsFullResultVC: ConstructorsViewModelProtocol {
    func reloadTableView() {
        self.constructorsFullResultScreen.constructorsTableView.reloadData()
    }
}
