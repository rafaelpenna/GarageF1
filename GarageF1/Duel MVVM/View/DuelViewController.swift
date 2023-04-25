//
//  DuelViewController.swift
//  GarageF1
//
//  Created by Rafael Penna on 07/03/23.
//

import UIKit

class DuelViewController: UIViewController {
    
    var duelScreen: DuelScreenView? = DuelScreenView()
    var duelViewModel: DuelViewModel = DuelViewModel()
    
    override func loadView() {
        view = duelScreen
    }
    
    lazy var buttonSelectDriverLeft: UIButton = {
        let button: UIButton = duelScreen?.leftDriverButton ?? UIButton()
        button.isSelected = true
        button.addTarget(self, action: #selector(onClickSelectDriverLeft), for: .touchUpInside)
        return button
    }()
    
    lazy var buttonSelectDriverRight: UIButton = {
        let button: UIButton = duelScreen?.rightDriverButton ?? UIButton()
        button.isSelected = true
        button.addTarget(self, action: #selector(onClickSelectDriverRight), for: .touchUpInside)
        return button
    }()
    
    let transparentView = UIView()
    let tableViewDriverDuel = UITableView()
    var selectedButton = UIButton()
    


    override func viewDidLoad() {
        super.viewDidLoad()
        gettingInfoDriversDuelScreen()
        addElements()
        setupProtocols()
        tableViewDriverDuel.register(CellClassDuel.self, forCellReuseIdentifier: "Cell")
    }
    
    func gettingInfoDriversDuelScreen() {
        duelScreen?.driversFirstNameLeft.text = duelViewModel.getDriversNameLeft()
        duelScreen?.driversLastNameLeft.text = duelViewModel.getDriversLastNameLeft()
        duelScreen?.driversFirstNameRight.text = duelViewModel.getDriversNameRight()
        duelScreen?.driversLastNameRight.text = duelViewModel.getDriversLastNameRight()
    }
    
    func setupProtocols() {
        duelScreen?.setupTableViewProtocols(delegate: self, dataSource: self)
        tableViewDriverDuel.delegate = self
        tableViewDriverDuel.dataSource = self
    }
    
    func addElements() {
        view.addSubview(backButton)
        view.addSubview(buttonSelectDriverLeft)
        view.addSubview(buttonSelectDriverRight)
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
    
    func addTransparentView(frames: CGRect) {
        let window = UIApplication.shared.keyWindow
        transparentView.frame = window?.frame ?? self.view.frame
        self.view.addSubview(transparentView)
        
        tableViewDriverDuel.frame = CGRect(x: frames.origin.x, y: frames.origin.y + frames.height, width: frames.width, height: 0)
        self.view.addSubview(tableViewDriverDuel)
        tableViewDriverDuel.layer.cornerRadius = 5
        
        transparentView.backgroundColor = UIColor.black.withAlphaComponent(0.9)
        
        let tapgesture = UITapGestureRecognizer(target: self, action: #selector(removeTransparentView))
        transparentView.addGestureRecognizer(tapgesture)
        transparentView.alpha = 0
        UIView.animate(withDuration: 0.4, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .curveEaseInOut, animations: {
            self.transparentView.alpha = 0.5
            self.tableViewDriverDuel.frame = CGRect(x: frames.origin.x - 20, y: frames.origin.y + frames.height, width: 190, height: 300)
        }, completion: nil)
    }
    
    @objc func removeTransparentView() {
        let frames = selectedButton.frame
        UIView.animate(withDuration: 0.4, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .curveEaseInOut, animations: {
            self.transparentView.alpha = 0
            self.tableViewDriverDuel.frame = CGRect(x: frames.origin.x, y: frames.origin.y + frames.height, width: frames.width, height: 0)
        }, completion: nil)
    }
    
    @objc func onClickSelectDriverLeft(_ sender: Any) {
        selectedButton = buttonSelectDriverLeft
        addTransparentView(frames: buttonSelectDriverLeft.frame)
    }
    
    @objc func onClickSelectDriverRight(_ sender: Any) {
        selectedButton = buttonSelectDriverRight
        addTransparentView(frames: buttonSelectDriverRight.frame)
    }
}


//MARK: - Protocols configuration

extension DuelViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == tableViewDriverDuel {
            return duelViewModel.numberOfRowsDrivers
        } else {
            return 7
        }
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == tableViewDriverDuel {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
            cell.textLabel?.text = String(duelViewModel.getDriverName(indexPath: indexPath))
            return cell
        } else {
            if indexPath.row == 0 {
                let cell = tableView.dequeueReusableCell(withIdentifier: DuelBirthDateCustomTableViewCell.identifier) as? DuelBirthDateCustomTableViewCell
                cell?.configure()
                let backgroundView = UIView()
                cell?.birthDateAnswerLeft.text = duelViewModel.getDriversBirthDateLeft()
                cell?.birthDateAnswerRight.text = duelViewModel.getDriversBirthDateRight()
                backgroundView.backgroundColor = .none
                cell?.selectedBackgroundView = backgroundView
                return cell ?? UITableViewCell()
            } else if indexPath.row == 1 {
                let cell = tableView.dequeueReusableCell(withIdentifier: DuelBirthLocationCustomTableViewCell.identifier) as? DuelBirthLocationCustomTableViewCell
                cell?.configure()
                let backgroundView = UIView()
                cell?.birthLocationAnswerLeft.text = duelViewModel.getDriversBirthPlaceLeft()
                cell?.birthLocationAnswerRight.text = duelViewModel.getDriversBirthPlaceRight()
                cell?.countrynAnswerLeft.text = duelViewModel.getDriversCountryLeft()
                cell?.countrynAnswerRight.text = duelViewModel.getDriversCountryRight()
                backgroundView.backgroundColor = .none
                cell?.selectedBackgroundView = backgroundView
                return cell ?? UITableViewCell()
            } else if indexPath.row == 2 {
                let cell = tableView.dequeueReusableCell(withIdentifier: DuelChampionshipsWonCustomTableViewCell.identifier) as? DuelChampionshipsWonCustomTableViewCell
                cell?.configure()
                let backgroundView = UIView()
                cell?.championshipsWinAnswerLeft.text = duelViewModel.getChampionshipsWonLeft()
                cell?.championshipsWinAnswerRight.text = duelViewModel.getChampionshipsWonRight()
                cell?.championshipsWinAnswerYearLeft.text = duelViewModel.getChampionshipsWinYearLeft()
                cell?.championshipsWinAnswerYearRight.text = duelViewModel.getChampionshipsWinYearRight()
                backgroundView.backgroundColor = .none
                cell?.selectedBackgroundView = backgroundView
                return cell ?? UITableViewCell()
            } else if indexPath.row == 3 {
                let cell = tableView.dequeueReusableCell(withIdentifier: DuelRacesParticipatedCustomTableViewCell.identifier) as? DuelRacesParticipatedCustomTableViewCell
                cell?.configure()
                let backgroundView = UIView()
                cell?.racesAnswerLeft.text = duelViewModel.getRacesParticipatedLeft()
                cell?.racesAnswerRight.text = duelViewModel.getRacesParticipatedRight()
                backgroundView.backgroundColor = .none
                cell?.selectedBackgroundView = backgroundView
                return cell ?? UITableViewCell()
            } else if indexPath.row == 4 {
                let cell = tableView.dequeueReusableCell(withIdentifier: DuelPodiumsEarnedCustomTableViewCell.identifier) as? DuelPodiumsEarnedCustomTableViewCell
                cell?.configure()
                let backgroundView = UIView()
                cell?.podiumsAnswerLeft.text = duelViewModel.getPodiumsWonLeft()
                cell?.podiumsAnswerRight.text = duelViewModel.getPodiumsWonRight()
                backgroundView.backgroundColor = .none
                cell?.selectedBackgroundView = backgroundView
                return cell ?? UITableViewCell()
            } else if indexPath.row == 5 {
                let cell = tableView.dequeueReusableCell(withIdentifier: DuelPointsEarnedCustomTableViewCell.identifier) as? DuelPointsEarnedCustomTableViewCell
                cell?.configure()
                let backgroundView = UIView()
                cell?.pointsAnswerLeft.text = duelViewModel.getPointsEarnedLeft()
                cell?.pointsAnswerRight.text = duelViewModel.getPointsEarnedRight()
                backgroundView.backgroundColor = .none
                cell?.selectedBackgroundView = backgroundView
                return cell ?? UITableViewCell()
            } else {
                let cell = tableView.dequeueReusableCell(withIdentifier: DuelWinsCustomTableViewCell.identifier) as? DuelWinsCustomTableViewCell
                cell?.configure()
                let backgroundView = UIView()
                cell?.winsAnswerLeft.text = duelViewModel.getWinsLeft()
                cell?.winsAnswerRight.text = duelViewModel.getWinsRight()
                backgroundView.backgroundColor = .none
                cell?.selectedBackgroundView = backgroundView
                return cell ?? UITableViewCell()
            }
        }
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if tableView == tableViewDriverDuel {
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
}

class CellClassDuel: UITableViewCell {
    
}
