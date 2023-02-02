//
//  DuelStackInfoRight.swift
//  GarageF1
//
//  Created by Rafael Penna on 02/02/23.
//


import Foundation
import UIKit

public class DuelStackInfoRight: UIView {
    
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
    
    private lazy var birthDateTitle: UILabel = {
        let variable = UILabel()
        variable.text = "Data de Nascimento"
        variable.textColor = .gray
        variable.font = UIFont.systemFont(ofSize: 16)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 2
        return variable
    }()
    
    private lazy var birthDateAnswer: UILabel = {
        let variable = UILabel()
        variable.text = "30/09/1997"
        variable.textColor = .black
        variable.font = UIFont.boldSystemFont(ofSize: 18)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    private lazy var ageAnswer: UILabel = {
        let variable = UILabel()
        variable.text = "(24 anos)"
        variable.textColor = .black
        variable.font = UIFont.boldSystemFont(ofSize: 18)
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
    
    private lazy var birthPlaceTitle: UILabel = {
        let variable = UILabel()
        variable.text = "Local de Nascimento"
        variable.textColor = .gray
        variable.font = UIFont.systemFont(ofSize: 16)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 2
        return variable
    }()
    
    private lazy var birthPlaceAnswer: UILabel = {
        let variable = UILabel()
        variable.text = "Hasselt"
        variable.textColor = .black
        variable.font = UIFont.boldSystemFont(ofSize: 18)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 2
        return variable
    }()
    
    private lazy var country: UILabel = {
        let variable = UILabel()
        variable.text = "Bélgica"
        variable.textColor = .black
        variable.font = UIFont.boldSystemFont(ofSize: 18)
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
        variable.text = "2 (2021 e 2022)"
        variable.textColor = .black
        variable.font = UIFont.boldSystemFont(ofSize: 18)
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
        variable.text = "163"
        variable.textColor = .black
        variable.font = UIFont.boldSystemFont(ofSize: 18)
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
        variable.text = "77"
        variable.textColor = .black
        variable.font = UIFont.boldSystemFont(ofSize: 18)
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
        variable.text = "2011"
        variable.textColor = .black
        variable.font = UIFont.boldSystemFont(ofSize: 18)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    private lazy var stackWins: UIStackView = {
        let variable = UIStackView()
        variable.axis = .vertical
        variable.spacing = 2
        variable.translatesAutoresizingMaskIntoConstraints = false
        return variable
    }()
    
    private lazy var winsTitle: UILabel = {
        let variable = UILabel()
        variable.text = "Vitórias"
        variable.textColor = .gray
        variable.font = UIFont.systemFont(ofSize: 16)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    private lazy var winsAnswer: UILabel = {
        let variable = UILabel()
        variable.text = "35"
        variable.textColor = .black
        variable.font = UIFont.boldSystemFont(ofSize: 18)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 2
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
        stackBirth.addArrangedSubview(birthDateTitle)
        stackBirth.addArrangedSubview(birthDateAnswer)
        stackBirth.addArrangedSubview(ageAnswer)
        
        boardStack.addArrangedSubview(stackLocal)
        stackLocal.addArrangedSubview(birthPlaceTitle)
        stackLocal.addArrangedSubview(birthPlaceAnswer)
        stackLocal.addArrangedSubview(country)
        
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
        
        boardStack.addArrangedSubview(stackWins)
        stackWins.addArrangedSubview(winsTitle)
        stackWins.addArrangedSubview(winsAnswer)
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([

            boardStack.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            boardStack.widthAnchor.constraint(equalTo: self.widthAnchor),
            boardStack.topAnchor.constraint(equalTo: self.topAnchor),
            
            stackBirth.topAnchor.constraint(equalTo: boardStack.topAnchor, constant: 10),
            stackBirth.leadingAnchor.constraint(equalTo: boardStack.leadingAnchor, constant: 20),
            stackBirth.trailingAnchor.constraint(equalTo: boardStack.trailingAnchor, constant: -5),
        ])
    }
}

