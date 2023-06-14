//
//  DuelViewController.swift
//  GarageF1
//
//  Created by Rafael Penna on 07/03/23.
//

import UIKit

enum DuelInfoTableViewSection: Int {
    case duelBirthDate
    case duelBirthLocation
    case duelChampionships
    case duelRacesParticipated
    case duelPodiumsEarned
    case duelPointsEarned
    case duelWins
}

class DuelViewController: UIViewController {
    
    var duelScreen: DuelScreenView?
    var duelViewModel: DuelViewModel = DuelViewModel()
    
    override func loadView() {
        duelScreen = DuelScreenView()
        view = duelScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupProtocols()
        addElements()
    }
    
    func setupProtocols() {
        duelScreen?.setupTableViewProtocols(delegate: self, dataSource: self)
        leftNameDriverTableViewSelect.delegate = self
        leftNameDriverTableViewSelect.dataSource = self
        rightNameDriverTableViewSelect.delegate = self
        rightNameDriverTableViewSelect.dataSource = self
    }
    
    func addElements() {
        view.addSubview(backButton)
        
        view.addSubview(selectDriverLeftButton)
        view.addSubview(leftNameDriver)
        view.addSubview(leftBackgorundViewSelect)
        view.addSubview(leftTextFieldSearchSelect)
        view.addSubview(leftSearchImageViewSelect)
        view.addSubview(leftNameDriverTableViewSelect)
        
        view.addSubview(selectDriverRightButton)
        view.addSubview(rightNameDriver)
        view.addSubview(rightBackgorundViewSelect)
        view.addSubview(rightTextFieldSearchSelect)
        view.addSubview(rightSearchImageViewSelect)
        view.addSubview(rightNameDriverTableViewSelect)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    lazy var backButton: UIButton = {
        let button: UIButton = duelScreen?.backButtonNavigation ?? UIButton()
        button.isSelected = true
        button.addTarget(self, action: #selector(backScreen), for: .touchUpInside)
        return button
    }()
    
    @objc func backScreen() {
        navigationController?.popViewController(animated: true)
    }
    
    //MARK: - Dropdown configuration
    
    lazy var selectDriverLeftButton: UIButton = {
        let button: UIButton = duelScreen?.leftDriverButton ?? UIButton()
        button.isSelected = true
        button.addTarget(self, action: #selector(onClickSelectDriverLeft), for: .touchUpInside)
        return button
    }()
    
    lazy var leftNameDriver: UILabel = {
        let label: UILabel = duelScreen?.driversNameLeftLabel ?? UILabel()
        label.text = "Michael Schumacher"
        return label
    }()
    
    lazy var leftTextFieldSearchSelect: UITextField = {
        let textField: UITextField = duelScreen?.leftSearchTextField ?? UITextField()
        textField.isHidden = true
        textField.addTarget(self, action: #selector(leftSearchNameDriverEditing), for: .editingChanged)
        return textField
    }()
    
    lazy var leftSearchImageViewSelect: UIImageView = {
        let image: UIImageView = duelScreen?.leftSearchImageView ?? UIImageView()
        image.isHidden = true
        return image
    }()
    
    lazy var leftBackgorundViewSelect: UIView = {
        let backgroundView: UIView = duelScreen?.leftBackgroundSearchView ?? UIView()
        backgroundView.isHidden = true
        return backgroundView
    }()
    
    lazy var leftNameDriverTableViewSelect: UITableView = {
        let tableView: UITableView = duelScreen?.leftNameDriversTableView ?? UITableView()
        tableView.isHidden = true
        return tableView
    }()
    
    lazy var selectDriverRightButton: UIButton = {
        let button: UIButton = duelScreen?.rightDriverButton ?? UIButton()
        button.isSelected = true
        button.addTarget(self, action: #selector(onClickSelectDriverRight), for: .touchUpInside)
        return button
    }()
    
    lazy var rightNameDriver: UILabel = {
        let label: UILabel = duelScreen?.driversNameRightLabel ?? UILabel()
        label.text = "Lewis Hamilton"
        return label
    }()
    
    lazy var rightTextFieldSearchSelect: UITextField = {
        let textField: UITextField = duelScreen?.rightSearchTextField ?? UITextField()
        textField.isHidden = true
        textField.addTarget(self, action: #selector(rightSearchNameDriverEditing), for: .editingChanged)
        return textField
    }()
    
    lazy var rightSearchImageViewSelect: UIImageView = {
        let image: UIImageView = duelScreen?.rightSearchImageView ?? UIImageView()
        image.isHidden = true
        return image
    }()
    
    lazy var rightBackgorundViewSelect: UIView = {
        let backgroundView: UIView = duelScreen?.rightBackgroundSearchView ?? UIView()
        backgroundView.isHidden = true
        return backgroundView
    }()
    
    lazy var rightNameDriverTableViewSelect: UITableView = {
        let tableView: UITableView = duelScreen?.rightNameDriversTableView ?? UITableView()
        tableView.isHidden = true
        return tableView
    }()
    
    private func leftAnimateList(toogle: Bool) {
        if toogle {
            UIView.animate(withDuration: 0.3) {
                self.leftBackgorundViewSelect.isHidden = false
                self.leftSearchImageViewSelect.isHidden = false
                self.leftTextFieldSearchSelect.isHidden = false
                self.leftNameDriverTableViewSelect.isHidden = false
            }
        } else {
            UIView.animate(withDuration: 0.3) {
                self.leftBackgorundViewSelect.isHidden = true
                self.leftSearchImageViewSelect.isHidden = true
                self.leftTextFieldSearchSelect.isHidden = true
                self.leftNameDriverTableViewSelect.isHidden = true
                self.leftTextFieldSearchSelect.text = ""
            }
        }
    }
    
    private func rightAnimateList(toogle: Bool) {
        if toogle {
            UIView.animate(withDuration: 0.3) {
                self.rightBackgorundViewSelect.isHidden = false
                self.rightSearchImageViewSelect.isHidden = false
                self.rightTextFieldSearchSelect.isHidden = false
                self.rightNameDriverTableViewSelect.isHidden = false
            }
        } else {
            UIView.animate(withDuration: 0.3) {
                self.rightBackgorundViewSelect.isHidden = true
                self.rightSearchImageViewSelect.isHidden = true
                self.rightTextFieldSearchSelect.isHidden = true
                self.rightNameDriverTableViewSelect.isHidden = true
                self.rightTextFieldSearchSelect.text = ""
            }
        }
    }

    @objc func onClickSelectDriverLeft(_ sender: Any) {
        if self.leftNameDriverTableViewSelect.isHidden {
            leftAnimateList(toogle: true)
            clearLeftSearchField()
        } else {
            leftAnimateList(toogle: false)
        }
    }
    
    @objc func onClickSelectDriverRight(_ sender: Any) {
        if self.rightNameDriverTableViewSelect.isHidden {
            rightAnimateList(toogle: true)
            clearRightSearchField()
        } else {
            rightAnimateList(toogle: false)
        }
    }
    
    @objc func leftSearchNameDriverEditing(_ sender: UITextField) {
        if let searchText = sender.text {
            duelViewModel.filterLeftList(searchText: searchText)
            duelScreen?.leftNameDriversTableView.reloadData()
        }
        clearLeftSearchField()
    }
    
    @objc func rightSearchNameDriverEditing(_ sender: UITextField) {
        if let searchText = sender.text {
            duelViewModel.filterRightList(searchText: searchText)
            duelScreen?.rightNameDriversTableView.reloadData()
        }
        clearRightSearchField()
    }
    
    @objc private func clearLeftSearchField() {
        if leftTextFieldSearchSelect.text == "" {
            duelViewModel.clearLeftFilterList()
            duelScreen?.leftNameDriversTableView.reloadData()
        }
    }
    
    @objc private func clearRightSearchField() {
        if rightTextFieldSearchSelect.text == "" {
            duelViewModel.clearRightFilterList()
            duelScreen?.rightNameDriversTableView.reloadData()
        }
    }
}

//MARK: - Protocols configuration

extension DuelViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == leftNameDriverTableViewSelect  {
            return duelViewModel.getFilterLeftNameDriver.count
        } else if tableView == rightNameDriverTableViewSelect {
            return duelViewModel.getFilterRightNameDriver.count
        } else {
            return 7
        }
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == leftNameDriverTableViewSelect  {
            let cell: DuelDriversTableViewCell? = tableView.dequeueReusableCell(withIdentifier: DuelDriversTableViewCell.identifier) as? DuelDriversTableViewCell
            cell?.textLabel?.text = String(duelViewModel.getFilterLeftNameDriver[indexPath.row])
            cell?.backgroundColor = UIColor(red: 66/255, green: 66/255, blue: 66/255, alpha: 1)
            cell?.textLabel?.textColor = .white
            cell?.textLabel?.textAlignment = .center
            cell?.selectedBackgroundView = duelScreen?.backgroundView
            return cell ?? UITableViewCell()
        } else if tableView == rightNameDriverTableViewSelect {
            let cell: DuelDriversTableViewCell? = tableView.dequeueReusableCell(withIdentifier: DuelDriversTableViewCell.identifier) as? DuelDriversTableViewCell
            cell?.textLabel?.text = String(duelViewModel.getFilterRightNameDriver[indexPath.row])
            cell?.backgroundColor = UIColor(red: 66/255, green: 66/255, blue: 66/255, alpha: 1)
            cell?.textLabel?.textColor = .white
            cell?.textLabel?.textAlignment = .center
            cell?.selectedBackgroundView = duelScreen?.backgroundView
            return cell ?? UITableViewCell()
        } else {
            switch DuelInfoTableViewSection(rawValue: indexPath.row){
            case .duelBirthDate:
                let cell = tableView.dequeueReusableCell(withIdentifier: DuelBirthDateCustomTableViewCell.identifier) as? DuelBirthDateCustomTableViewCell
                cell?.configure()
                cell?.birthDateAnswerLeft.text = duelViewModel.getDriversBirthDateLeft()
                cell?.birthDateAnswerRight.text = duelViewModel.getDriversBirthDateRight()
                cell?.selectedBackgroundView = duelScreen?.backgroundView
                return cell ?? UITableViewCell()
            case .duelBirthLocation:
                let cell = tableView.dequeueReusableCell(withIdentifier: DuelBirthLocationCustomTableViewCell.identifier) as? DuelBirthLocationCustomTableViewCell
                cell?.configure()
                cell?.birthLocationAnswerLeft.text = duelViewModel.getDriversBirthPlaceLeft()
                cell?.birthLocationAnswerRight.text = duelViewModel.getDriversBirthPlaceRight()
                cell?.countrynAnswerLeft.text = duelViewModel.getDriversCountryLeft()
                cell?.countrynAnswerRight.text = duelViewModel.getDriversCountryRight()
                cell?.selectedBackgroundView = duelScreen?.backgroundView
                return cell ?? UITableViewCell()
            case .duelChampionships:
                let cell = tableView.dequeueReusableCell(withIdentifier: DuelChampionshipsWonCustomTableViewCell.identifier) as? DuelChampionshipsWonCustomTableViewCell
                cell?.configure()
                cell?.championshipsWinAnswerLeft.text = duelViewModel.getChampionshipsWonLeft()
                cell?.championshipsWinAnswerRight.text = duelViewModel.getChampionshipsWonRight()
                cell?.championshipsWinAnswerYearLeft.text = duelViewModel.getChampionshipsWinYearLeft()
                cell?.championshipsWinAnswerYearRight.text = duelViewModel.getChampionshipsWinYearRight()
                cell?.selectedBackgroundView = duelScreen?.backgroundView
                return cell ?? UITableViewCell()
            case .duelRacesParticipated:
                let cell = tableView.dequeueReusableCell(withIdentifier: DuelRacesParticipatedCustomTableViewCell.identifier) as? DuelRacesParticipatedCustomTableViewCell
                cell?.configure()
                cell?.racesAnswerLeft.text = duelViewModel.getRacesParticipatedLeft()
                cell?.racesAnswerRight.text = duelViewModel.getRacesParticipatedRight()
                cell?.selectedBackgroundView = duelScreen?.backgroundView
                return cell ?? UITableViewCell()
            case .duelPodiumsEarned:
                let cell = tableView.dequeueReusableCell(withIdentifier: DuelPodiumsEarnedCustomTableViewCell.identifier) as? DuelPodiumsEarnedCustomTableViewCell
                cell?.configure()
                cell?.podiumsAnswerLeft.text = duelViewModel.getPodiumsWonLeft()
                cell?.podiumsAnswerRight.text = duelViewModel.getPodiumsWonRight()
                cell?.selectedBackgroundView = duelScreen?.backgroundView
                return cell ?? UITableViewCell()
            case .duelPointsEarned:
                let cell = tableView.dequeueReusableCell(withIdentifier: DuelPointsEarnedCustomTableViewCell.identifier) as? DuelPointsEarnedCustomTableViewCell
                cell?.configure()
                cell?.pointsAnswerLeft.text = duelViewModel.getPointsEarnedLeft()
                cell?.pointsAnswerRight.text = duelViewModel.getPointsEarnedRight()
                cell?.selectedBackgroundView = duelScreen?.backgroundView
                return cell ?? UITableViewCell()
            case .duelWins:
                let cell = tableView.dequeueReusableCell(withIdentifier: DuelWinsCustomTableViewCell.identifier) as? DuelWinsCustomTableViewCell
                cell?.configure()
                cell?.winsAnswerLeft.text = duelViewModel.getWinsLeft()
                cell?.winsAnswerRight.text = duelViewModel.getWinsRight()
                cell?.selectedBackgroundView = duelScreen?.backgroundView
                return cell ?? UITableViewCell()
            default:
                return UITableViewCell()
            }
        }
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if tableView == leftNameDriverTableViewSelect {
            return 50
        } else if tableView == rightNameDriverTableViewSelect  {
            return 50
        } else {
            if indexPath.row == 0 || indexPath.row == 3 || indexPath.row == 4 || indexPath.row == 5 || indexPath.row == 6 {
                return 68
            } else if indexPath.row == 1 {
                return 95
            } else {
                return 117
            }
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView == duelScreen?.leftNameDriversTableView {
            leftNameDriver.text = "\(duelViewModel.getFilterLeftNameDriver[indexPath.row])"
            leftAnimateList(toogle: false)
            leftTextFieldSearchSelect.text = ""
            clearLeftSearchField()
        } else if tableView == duelScreen?.rightNameDriversTableView {
            rightNameDriver.text = "\(duelViewModel.getFilterRightNameDriver[indexPath.row])"
            rightAnimateList(toogle: false)
            rightTextFieldSearchSelect.text = ""
            clearRightSearchField()
        }
    }
}
