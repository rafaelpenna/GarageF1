//
//  HomeScreen.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 08/02/23.
//

import UIKit

protocol homeScreenProtocol: AnyObject {
    func actionSimulationButton()
    func actionFullResultButton()
}

class HomeScreen: UIView {
    
    private weak var delegate: homeScreenProtocol?
    func delegate(delegate: homeScreenProtocol?) {
        self.delegate = delegate
    }
    
    private lazy var topLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .red
        return label
    }()
    
    private lazy var racingLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Home"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 35)
        return label
    }()
    
    private let scrollView: UIScrollView = {
        let view = UIScrollView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let scrollStackViewContainer: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.spacing = 2
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    private lazy var bemVindoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Bem-Vindo!"
        label.numberOfLines = 1
        label.font = UIFont.boldSystemFont(ofSize: 25)
        label.textColor = .black
        
        return label
    }()
    
    private lazy var userNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Ellington Cavalcante"
        label.numberOfLines = 1
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = .black
        label.heightAnchor.constraint(equalToConstant: 20).isActive = true
        return label
    }()
    
    private lazy var destaquesLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Destaques da temporada"
        label.numberOfLines = 1
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = .black
        label.heightAnchor.constraint(equalToConstant: 23).isActive = true
        return label
    }()
    
     lazy var destaquesCollection: UICollectionView = {
        let collection = UICollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewLayout.init())
        collection.translatesAutoresizingMaskIntoConstraints = false
        collection.showsHorizontalScrollIndicator = false
        collection.delaysContentTouches = false
        collection.register(DestaquesCollectionViewCell.self, forCellWithReuseIdentifier: DestaquesCollectionViewCell.identifier)
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout.init()
        layout.scrollDirection = .horizontal
        collection.setCollectionViewLayout(layout, animated: false)
        collection.heightAnchor.constraint(equalToConstant: 200).isActive = true
        return collection
    }()
    
    private lazy var quemÉMelhorLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Quem é o melhor?"
        label.numberOfLines = 1
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = .black
        label.setContentHuggingPriority(.defaultLow, for: .horizontal)
        label.heightAnchor.constraint(equalToConstant: 23).isActive = true
        return label
    }()
    
    private lazy var dueloCollection: UICollectionView = {
        let collection = UICollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewLayout.init())
        collection.translatesAutoresizingMaskIntoConstraints = false
        collection.showsHorizontalScrollIndicator = false
        collection.delaysContentTouches = false
        collection.register(DueloCollectionViewCell.self, forCellWithReuseIdentifier: DueloCollectionViewCell.identifier)
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout.init()
        layout.scrollDirection = .horizontal
        collection.setCollectionViewLayout(layout, animated: false)
        collection.heightAnchor.constraint(equalToConstant: 200).isActive = true
        return collection
    }()
    
    private lazy var DuelImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "ayrton")
        image.contentMode = .scaleAspectFit
        image.clipsToBounds = true
        image.heightAnchor.constraint(equalToConstant: 300).isActive = true
        return image
    }()
    
    private lazy var simulationButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Faça sua simulação", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 19)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(tappedSimulationButton), for: .touchUpInside)
        button.backgroundColor = UIColor(red: 220/255, green: 220/255, blue: 220/255, alpha: 1.0)
        button.heightAnchor.constraint(equalToConstant: 23).isActive = true
        return button
    }()
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .white
        tableView.separatorStyle = .singleLine
        tableView.separatorColor = .darkGray
        tableView.allowsSelection = false
        tableView.register(ResultsTableViewCell.self, forCellReuseIdentifier: ResultsTableViewCell.identifier)
        tableView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        return tableView
        
    }()
    
    private lazy var fullResultButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Conferir resultado completo", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 19)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(tappedFullResultButton), for: .touchUpInside)
        button.backgroundColor = UIColor(red: 220/255, green: 220/255, blue: 220/255, alpha: 1.0)
        button.heightAnchor.constraint(equalToConstant: 23).isActive = true

        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupScrollView()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func tappedSimulationButton() {
        delegate?.actionSimulationButton()
    }
    
    @objc func tappedFullResultButton() {
        delegate?.actionFullResultButton()
    }
    
    func configTableViewDelegate(delegate: UITableViewDelegate, dataSource: UITableViewDataSource) {
        tableView.delegate = delegate
        tableView.dataSource = dataSource
    }
    
    func configProtocolsDestaqueCollectionView(delegate: UICollectionViewDelegate, dataSource: UICollectionViewDataSource) {
        destaquesCollection.delegate = delegate
        destaquesCollection.dataSource = dataSource
    }
    
    func configProtocolsDueloCollectionView(delegate: UICollectionViewDelegate, dataSource: UICollectionViewDataSource) {
        dueloCollection.delegate = delegate
        dueloCollection.dataSource = dataSource
    }
    
    private func configConstraints(){
        NSLayoutConstraint.activate([
            
            topLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            topLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            topLabel.topAnchor.constraint(equalTo: topAnchor),
            topLabel.heightAnchor.constraint(equalToConstant: 115),
            
            racingLabel.centerYAnchor.constraint(equalTo: topLabel.centerYAnchor),
            racingLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
        ])
    }
    
    private func setupScrollView() {
        let margins = layoutMarginsGuide
        
        addSubview(topLabel)
        addSubview(racingLabel)
        addSubview(scrollView)
        scrollView.addSubview(scrollStackViewContainer)
        scrollView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
        scrollView.topAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: 10).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: margins.bottomAnchor, constant: -5).isActive = true
        
        scrollStackViewContainer.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        scrollStackViewContainer.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
        scrollStackViewContainer.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        scrollStackViewContainer.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        scrollStackViewContainer.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
        
        configureContainerView()
        
    }
    
    private func configureContainerView() {
        scrollStackViewContainer.addArrangedSubview(bemVindoLabel)
        scrollStackViewContainer.addArrangedSubview(userNameLabel)
        scrollStackViewContainer.addArrangedSubview(destaquesLabel)
        scrollStackViewContainer.addArrangedSubview(destaquesCollection)
        scrollStackViewContainer.addArrangedSubview(quemÉMelhorLabel)
        scrollStackViewContainer.addArrangedSubview(dueloCollection)
        scrollStackViewContainer.addArrangedSubview(simulationButton)
        scrollStackViewContainer.addArrangedSubview(tableView)
        scrollStackViewContainer.addArrangedSubview(fullResultButton)
    }

}
