//
//  ConstructorsFullResultTableViewCell.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 25/03/23.
//

import UIKit

class ConstructorsFullResultVC: UIViewController {
    
    var constructorsFullResultScreen: ConstructorsFullResultScreen = ConstructorsFullResultScreen()
    
    var dataConstructors: [DataHomeConstructors] = [DataHomeConstructors(position: "1", imageTeams: "redbulllogo", nameTeams: "Red Bull", points: "87 pts"),
                                                    DataHomeConstructors(position: "2", imageTeams: "astonmartinlogo", nameTeams: "Aston Martin", points: "38 pts"),
                                                    DataHomeConstructors(position: "3", imageTeams: "mercedeslogo", nameTeams: "Mercedes", points: "38 pts"),
                                                    DataHomeConstructors(position: "4", imageTeams: "ferrarilogo", nameTeams: "Ferrarri", points: "26 pts"),
                                                    DataHomeConstructors(position: "5", imageTeams: "alpinelogo", nameTeams: "Alpine", points: "8 pts"),
                                                    DataHomeConstructors(position: "6", imageTeams: "alfaromeologo", nameTeams: "Alfa Romeo", points: "4 pts"),
                                                    DataHomeConstructors(position: "7", imageTeams: "haaslogo", nameTeams: "Haas", points: "1 pts"),
                                                    DataHomeConstructors(position: "8", imageTeams: "williamslogo", nameTeams: "Williams", points: "1 pts"),
                                                    DataHomeConstructors(position: "9", imageTeams: "alphataurilogo", nameTeams: "AlphaTauri", points: "0  pts"),
                                                    DataHomeConstructors(position: "10", imageTeams: "mclarenlogo", nameTeams: "McLaren", points: "0 pts")]
    
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
        return dataConstructors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomFullResultConstructorsTableViewCell.identifier, for: indexPath) as? CustomFullResultConstructorsTableViewCell
        cell?.setupCell(data: dataConstructors[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 100
    }
}
