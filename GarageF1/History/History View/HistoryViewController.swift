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
    }
    
    private func setupProtocols() {
        historyScreen?.setupTableViewProtocols(delegate: self, dataSource: self)
    }
    
    private func addElements() {
        buttonTeams(buttonTeamsVC)
        buttonDrivers(buttonDriversVC)
        view.addSubview(buttonYearSelect)
        view.addSubview(backgorundLabelSelect)
        view.addSubview(textFieldSearchSelect)
        view.addSubview(searchImageViewSelect)
        view.addSubview(yearsTableViewSelect)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
//MARK: - Config Dropdown

    lazy var buttonYearSelect: UIButton = {
        let button: UIButton = historyScreen?.seasonYearButton ?? UIButton()
        button.isSelected = true
        button.setTitle("2022", for: .normal)
        button.addTarget(self, action: #selector(onClickSelectYear), for: .touchUpInside)
        return button
    }()
    
    lazy var textFieldSearchSelect: UITextField = {
        let textField: UITextField = historyScreen?.searchTextField ?? UITextField()
        textField.isHidden = true
        return textField
    }()
    
    lazy var searchImageViewSelect: UIImageView = {
        let image: UIImageView = historyScreen?.searchImageView ?? UIImageView()
        image.isHidden = true
        return image
    }()
    
    lazy var backgorundLabelSelect: UILabel = {
        let backgroundLabel: UILabel = historyScreen?.backgroundSearchLabel ?? UILabel()
        backgroundLabel.isHidden = true
        return backgroundLabel
    }()
    
    lazy var yearsTableViewSelect: UITableView = {
        let tableView: UITableView = historyScreen?.yearsTableView ?? UITableView()
        tableView.isHidden = true
        return tableView
    }()
    
    private func animateList(toogle: Bool) {
        if toogle {
            UIView.animate(withDuration: 0.3) {
                self.backgorundLabelSelect.isHidden = false
                self.searchImageViewSelect.isHidden = false
                self.textFieldSearchSelect.isHidden = false
                self.yearsTableViewSelect.isHidden = false
            }
        } else {
            UIView.animate(withDuration: 0.3) {
                self.backgorundLabelSelect.isHidden = true
                self.searchImageViewSelect.isHidden = true
                self.textFieldSearchSelect.isHidden = true
                self.yearsTableViewSelect.isHidden = true
            }
        }
    }

    @objc func onClickSelectYear(_ sender: Any) {
        if self.yearsTableViewSelect.isHidden {
            animateList(toogle: true)
            clearSearchField()
        } else {
            animateList(toogle: false)
        }
    }
    
    private func clearSearchField() {
        textFieldSearchSelect.text = ""
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
        if tableView == historyScreen?.yearsTableView {
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
        if tableView == historyScreen?.yearsTableView {
            let cell: HistoryYearsTableViewCell? = tableView.dequeueReusableCell(withIdentifier: HistoryYearsTableViewCell.identifier) as? HistoryYearsTableViewCell
            cell?.textLabel?.text = historyViewModel.getYear(indexPath: indexPath)
            cell?.backgroundColor = UIColor(red: 66/255, green: 66/255, blue: 66/255, alpha: 1)
            cell?.textLabel?.textColor = .white
            cell?.textLabel?.textAlignment = .center
            let backgroundView = UIView()
            backgroundView.backgroundColor = .none
            cell?.selectedBackgroundView = backgroundView
            return cell ?? UITableViewCell()
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
        if tableView == historyScreen?.yearsTableView {
            return 45
        } else {
            if tableView == historyScreen?.driversTableView {
                return 85
            } else {
                return 70
            }
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView == historyScreen?.yearsTableView {
            buttonYearSelect.setTitle("\(historyViewModel.getYear(indexPath: indexPath))", for: .normal)
            animateList(toogle: false)
            clearSearchField()
        }
    }
}

