//
//  TabBarVC.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 21/12/22.
//

import UIKit

class TabBarVC: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupVCs()
        configTaBar()
    }
    
    private func createNavController(for rootViewController: UIViewController,
                                     title: String,
                                     image: UIImage) -> UIViewController {
        let navController = UINavigationController(rootViewController: rootViewController)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = image
        navController.navigationBar.prefersLargeTitles = true
        return navController
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
    }
        
        func setupVCs() {
                viewControllers = [
                    createNavController(for: HomeVC(), title: "Home", image: UIImage(systemName: "house") ?? UIImage()),
                    createNavController(for: RaceViewController(), title: "Racing", image: UIImage(systemName: "flag.checkered.2.crossed") ?? UIImage()),
                    createNavController(for: DriversViewController(), title: "Drivers", image: UIImage(systemName: "crown") ?? UIImage()),
                    createNavController(for: HistoryViewController(), title: "History", image: UIImage(systemName: "doc.text.magnifyingglass") ?? UIImage()),
                    createNavController(for: ProfileVC(), title: "Perfil", image: UIImage(systemName: "person.crop.circle") ?? UIImage())
                ]
        }
    
    
    func configTaBar() {
        tabBar.layer.borderWidth = 0.2
        tabBar.layer.borderColor = UIColor.black.cgColor
        tabBar.backgroundColor = .white
        tabBar.isTranslucent = false
    }
    
}
