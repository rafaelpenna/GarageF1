//
//  ConstructorsFullResultTableViewCell.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 25/03/23.
//

import UIKit

class ConstructorsFullResultVC: UIViewController {
    
    var constructorsFullResultScreen: ConstructorsFullResultScreen = ConstructorsFullResultScreen()
    var constructorsFullViewModel: ConstructorsFullViewModel = ConstructorsFullViewModel()
    
    override func loadView() {
        view = constructorsFullResultScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        constructorsFullResultScreen.delegate(delegate: self)
        constructorsFullResultScreen.configTableViewProtocols(delegate: self, dataSource: self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
}

extension ConstructorsFullResultVC: ConstructorsFullResultScreenProtocol {
    func actionBackButton() {
        self.navigationController?.popToRootViewController(animated: true)
    }
}

extension ConstructorsFullResultVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return constructorsFullViewModel.numberOfRows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomFullResultConstructorsTableViewCell.identifier, for: indexPath) as? CustomFullResultConstructorsTableViewCell
        cell?.setupCell(data: constructorsFullViewModel.getDataConstructors(index: indexPath.row))
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 100
    }
}
