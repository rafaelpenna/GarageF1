//
//  DuelStackInfoLeft.swift
//  GarageF1
//
//  Created by Rafael Penna on 02/02/23.
//


import Foundation
import UIKit

public class DuelStackInfoLeft: UIView {
    
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
        variable.numberOfLines = 0
        return variable
    }()
    
    private lazy var birthDateAnswer: UILabel = {
        let variable = UILabel()
        variable.text = "03/01/1969"
        variable.textColor = .black
        variable.font = UIFont.boldSystemFont(ofSize: 18)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    private lazy var ageAnswer: UILabel = {
        let variable = UILabel()
        variable.text = "(53 anos)"
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
        variable.numberOfLines = 0
        return variable
    }()
    
    private lazy var birthPlaceAnswer: UILabel = {
        let variable = UILabel()
        variable.text = "Hurth-Hermullheim"
        variable.textColor = .black
        variable.font = UIFont.boldSystemFont(ofSize: 18)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    private lazy var country: UILabel = {
        let variable = UILabel()
        variable.text = "Alemanha"
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
        variable.text = "7 (1994, 1995, 2000, 2001, 2002, 2003 e 2004)"
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
        variable.text = "308"
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
        variable.text = "155"
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
        variable.text = "1566"
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
        variable.text = "91"
        variable.textColor = .black
        variable.font = UIFont.boldSystemFont(ofSize: 18)
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

            boardStack.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            boardStack.widthAnchor.constraint(equalTo: self.widthAnchor),
            boardStack.topAnchor.constraint(equalTo: self.topAnchor),
            
            stackBirth.topAnchor.constraint(equalTo: boardStack.topAnchor, constant: 10),
            stackBirth.leadingAnchor.constraint(equalTo: boardStack.leadingAnchor, constant: 20),
            stackBirth.trailingAnchor.constraint(equalTo: boardStack.trailingAnchor, constant: -5),
            
        ])
    }
}

