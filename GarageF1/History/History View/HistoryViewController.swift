//
//  HistoryViewController.swift
//  GarageF1
//
//  Created by Rafael Penna on 27/02/23.
//

import UIKit

class HistoryViewController: UIViewController {
    
    let historyScreen: HistoryScreenView? = HistoryScreenView()
    let historyViewModel: HistoryViewModel = HistoryViewModel()
    
    override func loadView() {
        view = historyScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupProtocols()
        addElements()
        cellRegister()
    }
    
    private func setupProtocols() {
        historyScreen?.setupTableViewProtocols(delegate: self, dataSource: self)
        tableViewYear.delegate = self
        tableViewYear.dataSource = self
    }
    
    private func addElements() {
        buttonTeams(buttonTeamsVC)
        buttonDrivers(buttonDriversVC)
        view.addSubview(buttonYearSelect)
    }
    
    private func cellRegister() {
        tableViewYear.register(CellClassHistory.self, forCellReuseIdentifier: "Cell")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    
    
//MARK: - Config Dropdown
    
    let transparentView = UIView()
    let tableViewYear = UITableView()
    var selectedYearButton = UIButton()
    
    lazy var buttonYearSelect: UIButton = {
        let button: UIButton = historyScreen?.seasonYearButton ?? UIButton()
        button.isSelected = true
        button.addTarget(self, action: #selector(onClickSelectYear), for: .touchUpInside)
        return button
    }()
    
    func addTransparentView(frames: CGRect) {
        let window = UIApplication.shared.keyWindow
        transparentView.frame = window?.frame ?? self.view.frame
        self.view.addSubview(transparentView)
        
        tableViewYear.frame = CGRect(x: frames.origin.x, y: frames.origin.y + frames.height, width: frames.width, height: 0)
        self.view.addSubview(tableViewYear)
        tableViewYear.layer.cornerRadius = 5
        
        transparentView.backgroundColor = UIColor.black.withAlphaComponent(0.9)
        
        let tapgesture = UITapGestureRecognizer(target: self, action: #selector(removeTransparentView))
        transparentView.addGestureRecognizer(tapgesture)
        transparentView.alpha = 0
        UIView.animate(withDuration: 0.4, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .curveEaseInOut, animations: {
            self.transparentView.alpha = 0.5
            self.tableViewYear.frame = CGRect(x: frames.origin.x, y: frames.origin.y + frames.height, width: frames.width, height: 300)
        }, completion: nil)
    }
    
    @objc func removeTransparentView() {
        let frames = selectedYearButton.frame
        UIView.animate(withDuration: 0.4, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .curveEaseInOut, animations: {
            self.transparentView.alpha = 0
            self.tableViewYear.frame = CGRect(x: frames.origin.x, y: frames.origin.y + frames.height, width: frames.width, height: 0)
        }, completion: nil)
    }
    
    @objc func onClickSelectYear(_ sender: Any) {
        selectedYearButton = buttonYearSelect
        addTransparentView(frames: buttonYearSelect.frame)
    }
    
    
//MARK: - Config selectable tableView
    
    lazy var buttonDriversVC: UIButton = {
        let button: UIButton = historyScreen?.driversButton ?? UIButton()
        button.isSelected = true
        button.addTarget(self, action: #selector(self.buttonDrivers(_:)), for: .touchUpInside)
        return button
    }()
    
    lazy var buttonTeamsVC: UIButton = {
        let button: UIButton = historyScreen?.teamsButton ?? UIButton()
        button.isSelected = false
        button.addTarget(self, action: #selector(self.buttonTeams(_:)), for: .touchUpInside)
        return button
    }()
    
    @objc func buttonDrivers(_ sender: UIButton) {
        if buttonDriversVC.isSelected == false {
            buttonDriversSelected()
        } else {
            buttonDriversSelected()
        }
    }
    
    @objc func buttonTeams(_ sender: UIButton) {
        if buttonTeamsVC.isSelected == false {
            buttonTeamsSelected()
        } else {
            buttonTeamsSelected()
        }
    }
    
    private func buttonDriversSelected() {
        buttonDriversVC.isSelected = true
        buttonTeamsVC.isSelected = false
        historyScreen?.driversTableView.isHidden = false
        historyScreen?.teamsTableView.isHidden = true
        historyScreen?.driversTableView.reloadData()
        historyScreen?.driversButton.setTitleColor(UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1), for: .normal)
        historyScreen?.teamsButton.setTitleColor(UIColor(red: 66/255, green: 66/255, blue: 66/255, alpha: 1), for: .normal)
    }
    
    private func buttonTeamsSelected() {
        buttonTeamsVC.isSelected = true
        buttonDriversVC.isSelected = false
        historyScreen?.driversTableView.isHidden = true
        historyScreen?.teamsTableView.isHidden = false
        historyScreen?.teamsTableView.reloadData()
        historyScreen?.teamsButton.setTitleColor(UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1), for: .normal)
        historyScreen?.driversButton.setTitleColor(UIColor(red: 66/255, green: 66/255, blue: 66/255, alpha: 1), for: .normal)
    }
}


//MARK: - Extension config protocols
extension HistoryViewController: UITableViewDelegate, UITableViewDataSource {
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == tableViewYear {
            return historyViewModel.numberOfRowsYears
        } else {
            if buttonDriversVC.isSelected == true {
                return historyViewModel.numberOfRowsDrivers
            } else {
                return historyViewModel.numberOfRowsTeams
            }
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == tableViewYear {
                let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
                cell.textLabel?.text = String(historyViewModel.getYear(indexPath: indexPath))
                return cell
        } else {
            if historyScreen?.driversTableView.isHidden == false {
                let cell: HistoryDriversTableViewCell? = tableView.dequeueReusableCell(withIdentifier: HistoryDriversTableViewCell.identifier) as? HistoryDriversTableViewCell
                cell?.setupCell(driveData: historyViewModel.loadCurrentDriver(indexPath: indexPath))
                let backgroundView = UIView()
                backgroundView.backgroundColor = .none
                cell?.selectedBackgroundView = backgroundView
                    return cell ?? UITableViewCell()
            } else {
                let cell: HistoryTeamsTableViewCell? = tableView.dequeueReusableCell(withIdentifier: HistoryTeamsTableViewCell.identifier) as? HistoryTeamsTableViewCell
                cell?.setupCell(teamData: historyViewModel.loadCurrentTeam(indexPath: indexPath))
                let backgroundView = UIView()
                backgroundView.backgroundColor = .none
                cell?.selectedBackgroundView = backgroundView
                return cell ?? UITableViewCell()
            }
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if tableView == tableViewYear {
            return 45
        } else {
            if tableView == historyScreen?.driversTableView {
                return 85
            } else {
                return 70
            }
        }
    }
        
}

class CellClassHistory: UITableViewCell {
    
}
