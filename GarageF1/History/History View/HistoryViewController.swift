//
//  HistoryViewController.swift
//  GarageF1
//
//  Created by Rafael Penna on 27/02/23.
//

import UIKit

class HistoryViewController: UIViewController {
    
    var historyScreen: HistoryScreenView?
    let historyViewModel: HistoryViewModel = HistoryViewModel()
    var seasonSelectedYear: String = "2022"
    
    override func loadView() {
        historyScreen = HistoryScreenView()
        view = historyScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        addElements()
        setupProtocols()
        loadData()
    }
    
    private func setupProtocols() {
        historyViewModel.delegate(delegate: self)
    }
    
    private func addElements() {
        constructorButton(constructorDataButton)
        buttonDrivers(driversDataButton)
        view.addSubview(buttonYearSelect)
        view.addSubview(backgorundViewSelect)
        view.addSubview(textFieldSearchSelect)
        view.addSubview(searchImageViewSelect)
        view.addSubview(yearsTableViewSelect)
    }
    
    private func loadData() {
        historyViewModel.seasonSelectedYear = seasonSelectedYear
        historyViewModel.fetchHistoryTeams(.request)
        historyViewModel.fetchHistoryDrivers(.request)
        historyViewModel.fetchHistoryYears(.request)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }

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
        textField.addTarget(self, action: #selector(searchYearEditing), for: .editingChanged)
        return textField
    }()
    
    lazy var searchImageViewSelect: UIImageView = {
        let image: UIImageView = historyScreen?.searchImageView ?? UIImageView()
        image.isHidden = true
        return image
    }()
    
    lazy var backgorundViewSelect: UIView = {
        let backgroundView: UIView = historyScreen?.backgroundSearchView ?? UIView()
        backgroundView.isHidden = true
        return backgroundView
    }()
    
    lazy var yearsTableViewSelect: UITableView = {
        let tableView: UITableView = historyScreen?.yearsTableView ?? UITableView()
        tableView.isHidden = true
        return tableView
    }()
    
    private func animateList(toogle: Bool) {
        if toogle {
            UIView.animate(withDuration: 0.3) {
                self.backgorundViewSelect.isHidden = false
                self.searchImageViewSelect.isHidden = false
                self.textFieldSearchSelect.isHidden = false
                self.yearsTableViewSelect.isHidden = false
            }
        } else {
            UIView.animate(withDuration: 0.3) {
                self.backgorundViewSelect.isHidden = true
                self.searchImageViewSelect.isHidden = true
                self.textFieldSearchSelect.isHidden = true
                self.yearsTableViewSelect.isHidden = true
                self.textFieldSearchSelect.text = ""
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
    
    @objc func searchYearEditing(_ sender: UITextField) {
        if let searchText = sender.text {
            historyViewModel.filterList(searchText: searchText)
            historyScreen?.yearsTableView.reloadData()
        }
        clearSearchField()
    }
    
    private func clearSearchField() {
        if textFieldSearchSelect.text == "" {
            historyViewModel.clearFilterList()
            historyScreen?.yearsTableView.reloadData()
        }
    }
    
    lazy var driversDataButton: UIButton = {
        let button: UIButton = historyScreen?.driversButton ?? UIButton()
        button.isSelected = true
        button.addTarget(self, action: #selector(self.buttonDrivers(_:)), for: .touchUpInside)
        return button
    }()
    
    lazy var constructorDataButton: UIButton = {
        let button: UIButton = historyScreen?.constructorsButton ?? UIButton()
        button.isSelected = false
        button.addTarget(self, action: #selector(self.constructorButton(_:)), for: .touchUpInside)
        return button
    }()
    
    @objc func buttonDrivers(_ sender: UIButton) {
        if driversDataButton.isSelected == false {
            buttonDriversSelected()
        } else {
            buttonDriversSelected()
        }
    }
    
    @objc func constructorButton(_ sender: UIButton) {
        if constructorDataButton.isSelected == false {
            buttonConstructorSelected()
        } else {
            buttonConstructorSelected()
        }
    }
    
    private func buttonDriversSelected() {
        driversDataButton.isSelected = true
        constructorDataButton.isSelected = false
        historyScreen?.driversTableView.isHidden = false
        historyScreen?.constructorsTableView.isHidden = true
        historyScreen?.driversTableView.reloadData()
        historyScreen?.driversButton.setTitleColor(UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1), for: .normal)
        historyScreen?.constructorsButton.setTitleColor(UIColor(red: 66/255, green: 66/255, blue: 66/255, alpha: 1), for: .normal)
    }
    
    private func buttonConstructorSelected() {
        constructorDataButton.isSelected = true
        driversDataButton.isSelected = false
        historyScreen?.driversTableView.isHidden = true
        historyScreen?.constructorsTableView.isHidden = false
        historyScreen?.constructorsTableView.reloadData()
        historyScreen?.constructorsButton.setTitleColor(UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1), for: .normal)
        historyScreen?.driversButton.setTitleColor(UIColor(red: 66/255, green: 66/255, blue: 66/255, alpha: 1), for: .normal)
    }
}


//MARK: - Extension config protocols
extension HistoryViewController: UITableViewDelegate, UITableViewDataSource {
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == historyScreen?.yearsTableView {
            return historyViewModel.getFilterDataYear.count
        } else {
            if driversDataButton.isSelected == true {
                return historyViewModel.numberOfRowsDrivers
            } else {
                return historyViewModel.numberOfRowsTeams
            }
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == historyScreen?.yearsTableView {
            let cell: HistoryYearsTableViewCell? = tableView.dequeueReusableCell(withIdentifier: HistoryYearsTableViewCell.identifier) as? HistoryYearsTableViewCell
            cell?.textLabel?.text = String(historyViewModel.getFilterDataYear[indexPath.row])
            cell?.backgroundColor = UIColor(red: 66/255, green: 66/255, blue: 66/255, alpha: 1)
            cell?.textLabel?.textColor = .white
            cell?.textLabel?.textAlignment = .center
            cell?.selectedBackgroundView = historyScreen?.backgroundView
            return cell ?? UITableViewCell()
        } else {
            if historyScreen?.driversTableView.isHidden == false {
                let cell: HistoryDriversTableViewCell? = tableView.dequeueReusableCell(withIdentifier: HistoryDriversTableViewCell.identifier) as? HistoryDriversTableViewCell
                cell?.setupCell(driveData: historyViewModel.loadCurrentDriver(indexPath: indexPath))
                cell?.selectedBackgroundView = historyScreen?.backgroundView
                    return cell ?? UITableViewCell()
            } else {
                let cell: HistoryTeamsTableViewCell? = tableView.dequeueReusableCell(withIdentifier: HistoryTeamsTableViewCell.identifier) as? HistoryTeamsTableViewCell
                cell?.setupCell(teamData: historyViewModel.loadCurrentTeam(indexPath: indexPath))
                cell?.selectedBackgroundView = historyScreen?.backgroundView
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
            buttonYearSelect.setTitle("\(historyViewModel.getFilterDataYear[indexPath.row])", for: .normal)
            seasonSelectedYear = buttonYearSelect.titleLabel?.text ?? String()
            historyViewModel.seasonSelectedYear = seasonSelectedYear
            historyViewModel.fetchHistoryDrivers(.request)
            historyViewModel.fetchHistoryTeams(.request)
            reloadTableView()
            animateList(toogle: false)
            textFieldSearchSelect.text = ""
            clearSearchField()
        }
    }
}

extension HistoryViewController: HistoryViewModelDelegate {
    func success() {
        historyScreen?.setupTableViewProtocols(delegate: self, dataSource: self)
        reloadTableView()
    }
    
    func error(_ message: String) {
    }
}

extension HistoryViewController: HistoryViewModelProtocol {
    func reloadTableView() {
        self.historyScreen?.driversTableView.reloadData()
        self.historyScreen?.constructorsTableView.reloadData()
        self.historyScreen?.yearsTableView.reloadData()
    }
}

