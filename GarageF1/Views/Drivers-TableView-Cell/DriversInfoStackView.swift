//
//  DriversInfoStackView.swift
//  GarageF1
//
//  Created by Rafael Penna on 01/02/23.
//

import Foundation
import UIKit

public class DriversInfoStackList: UIView {
    
    private lazy var boardStack: UIStackView = {
        let variable = UIStackView()
        variable.axis = .vertical
        variable.backgroundColor = .white
        variable.spacing = 20
        variable.translatesAutoresizingMaskIntoConstraints = false
        return variable
    }()
    
    private lazy var stackBirth: UIStackView = {
        let variable = UIStackView()
        variable.axis = .vertical
        variable.spacing = 2
        variable.translatesAutoresizingMaskIntoConstraints = false
        return variable
    }()
    
    private lazy var birthTitle: UILabel = {
        let variable = UILabel()
        variable.text = "Data de Nascimento"
        variable.textColor = .gray
        variable.font = UIFont.systemFont(ofSize: 16)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    private lazy var birthAnswer: UILabel = {
        let variable = UILabel()
        variable.text = "16/10/1997 (24 anos)"
        variable.textColor = .black
        variable.font = UIFont.boldSystemFont(ofSize: 22)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    private lazy var stackLocal: UIStackView = {
        let variable = UIStackView()
        variable.axis = .vertical
        variable.spacing = 2
        variable.translatesAutoresizingMaskIntoConstraints = false
        return variable
    }()
    
    private lazy var localTitle: UILabel = {
        let variable = UILabel()
        variable.text = "Local de Nascimento"
        variable.textColor = .gray
        variable.font = UIFont.systemFont(ofSize: 16)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    private lazy var localAnswer: UILabel = {
        let variable = UILabel()
        variable.text = "Monte Carlo, Mônaco"
        variable.textColor = .black
        variable.font = UIFont.boldSystemFont(ofSize: 22)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    private lazy var stackChampionship: UIStackView = {
        let variable = UIStackView()
        variable.axis = .vertical
        variable.spacing = 2
        variable.translatesAutoresizingMaskIntoConstraints = false
        return variable
    }()
    
    private lazy var championshipTitle: UILabel = {
        let variable = UILabel()
        variable.text = "Campeonatos"
        variable.textColor = .gray
        variable.font = UIFont.systemFont(ofSize: 16)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    private lazy var championshipAnswer: UILabel = {
        let variable = UILabel()
        variable.text = "0"
        variable.textColor = .black
        variable.font = UIFont.boldSystemFont(ofSize: 22)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    private lazy var stackRaces: UIStackView = {
        let variable = UIStackView()
        variable.axis = .vertical
        variable.spacing = 2
        variable.translatesAutoresizingMaskIntoConstraints = false
        return variable
    }()
    
    private lazy var racesTitle: UILabel = {
        let variable = UILabel()
        variable.text = "Corridas"
        variable.textColor = .gray
        variable.font = UIFont.systemFont(ofSize: 16)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    private lazy var racesAnswer: UILabel = {
        let variable = UILabel()
        variable.text = "92"
        variable.textColor = .black
        variable.font = UIFont.boldSystemFont(ofSize: 22)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    private lazy var stackPodiums: UIStackView = {
        let variable = UIStackView()
        variable.axis = .vertical
        variable.spacing = 2
        variable.translatesAutoresizingMaskIntoConstraints = false
        return variable
    }()
    
    private lazy var podiumTitle: UILabel = {
        let variable = UILabel()
        variable.text = "Pódios"
        variable.textColor = .gray
        variable.font = UIFont.systemFont(ofSize: 16)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    private lazy var podiumAnswer: UILabel = {
        let variable = UILabel()
        variable.text = "18"
        variable.textColor = .black
        variable.font = UIFont.boldSystemFont(ofSize: 22)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    private lazy var stackPoints: UIStackView = {
        let variable = UIStackView()
        variable.axis = .vertical
        variable.spacing = 2
        variable.translatesAutoresizingMaskIntoConstraints = false
        return variable
    }()
    
    private lazy var pointsTitle: UILabel = {
        let variable = UILabel()
        variable.text = "Pontos"
        variable.textColor = .gray
        variable.font = UIFont.systemFont(ofSize: 16)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    private lazy var pointsAnswer: UILabel = {
        let variable = UILabel()
        variable.text = "730"
        variable.textColor = .black
        variable.font = UIFont.boldSystemFont(ofSize: 22)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    private lazy var stackPositionRaces: UIStackView = {
        let variable = UIStackView()
        variable.axis = .vertical
        variable.spacing = 2
        variable.translatesAutoresizingMaskIntoConstraints = false
        return variable
    }()
    
    private lazy var positionRacesTitle: UILabel = {
        let variable = UILabel()
        variable.text = "Melhor colocação em corridas"
        variable.textColor = .gray
        variable.font = UIFont.systemFont(ofSize: 16)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    private lazy var positionRacesAnswer: UILabel = {
        let variable = UILabel()
        variable.text = "1(x5)"
        variable.textColor = .black
        variable.font = UIFont.boldSystemFont(ofSize: 22)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    private lazy var stackPositionGrid: UIStackView = {
        let variable = UIStackView()
        variable.axis = .vertical
        variable.spacing = 2
        variable.translatesAutoresizingMaskIntoConstraints = false
        return variable
    }()
    
    private lazy var positionGridTitle: UILabel = {
        let variable = UILabel()
        variable.text = "Melhor colocação no grid"
        variable.textColor = .gray
        variable.font = UIFont.systemFont(ofSize: 16)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    private lazy var positionGridAnswer: UILabel = {
        let variable = UILabel()
        variable.text = "1"
        variable.textColor = .black
        variable.font = UIFont.boldSystemFont(ofSize: 22)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    init() {
        super.init(frame: .zero)
        setupView()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        backgroundColor = .white
        addComponents()
    }
    
    private func addComponents() {
        addSubview(boardStack)
        
        boardStack.addArrangedSubview(stackBirth)
        stackBirth.addArrangedSubview(birthTitle)
        stackBirth.addArrangedSubview(birthAnswer)
        
        boardStack.addArrangedSubview(stackLocal)
        stackLocal.addArrangedSubview(localTitle)
        stackLocal.addArrangedSubview(localAnswer)
        
        boardStack.addArrangedSubview(stackChampionship)
        stackChampionship.addArrangedSubview(championshipTitle)
        stackChampionship.addArrangedSubview(championshipAnswer)
        
        boardStack.addArrangedSubview(stackRaces)
        stackRaces.addArrangedSubview(racesTitle)
        stackRaces.addArrangedSubview(racesAnswer)
        
        boardStack.addArrangedSubview(stackPodiums)
        stackPodiums.addArrangedSubview(podiumTitle)
        stackPodiums.addArrangedSubview(podiumAnswer)
        
        boardStack.addArrangedSubview(stackPoints)
        stackPoints.addArrangedSubview(pointsTitle)
        stackPoints.addArrangedSubview(pointsAnswer)
        
        boardStack.addArrangedSubview(stackPositionRaces)
        stackPositionRaces.addArrangedSubview(positionRacesTitle)
        stackPositionRaces.addArrangedSubview(positionRacesAnswer)
        
        boardStack.addArrangedSubview(stackPositionGrid)
        stackPositionGrid.addArrangedSubview(positionGridTitle)
        stackPositionGrid.addArrangedSubview(positionGridAnswer)
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([

            stackBirth.topAnchor.constraint(equalTo: boardStack.topAnchor, constant: 20),
            stackBirth.leadingAnchor.constraint(equalTo: boardStack.leadingAnchor, constant: 20),
            
        ])
    }
}
