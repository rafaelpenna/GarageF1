//
//  HomeScreen.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 09/01/23.
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
    
    private let scrollView: UIScrollView = {
        let view = UIScrollView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 243, green: 243, blue: 243, alpha: 1.0)
        return view
    }()
    
    private let scrollStackViewContainer1: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.spacing = 5
        view.distribution = .equalSpacing
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    private lazy var bemVindoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Bem-Vindo!"
        label.numberOfLines = 1
        label.font = UIFont.boldSystemFont(ofSize: 25)
        //        label.backgroundColor = .blue
        label.textColor = .black
        label.setContentHuggingPriority(.defaultLow, for: .horizontal)
        label.heightAnchor.constraint(equalToConstant: 23).isActive = true
        return label
    }()
    
    private lazy var userNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Ellington Cavalcante"
        label.numberOfLines = 1
        label.font = UIFont.systemFont(ofSize: 15)
        //        label.backgroundColor = .green
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
        //        label.backgroundColor = .purple
        label.textColor = .black
        label.heightAnchor.constraint(equalToConstant: 23).isActive = true
        return label
    }()
    
    private lazy var destaquesCollection: UICollectionView = {
        let collection = UICollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewLayout.init())
        collection.translatesAutoresizingMaskIntoConstraints = false
        collection.showsHorizontalScrollIndicator = false
        collection.delaysContentTouches = false
        collection.register(DestaquesCollectionViewCell.self, forCellWithReuseIdentifier: DestaquesCollectionViewCell.identifier)
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout.init()
        layout.scrollDirection = .horizontal
        collection.setCollectionViewLayout(layout, animated: false)
        //      collection.backgroundColor = .brown
        collection.heightAnchor.constraint(equalToConstant: 200).isActive = true
        return collection
    }()
    
    private lazy var quemEMelhor: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Quem é melhor?"
        label.numberOfLines = 1
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.heightAnchor.constraint(equalToConstant: 23).isActive = true
        label.textColor = .black
        return label
    }()
    
    private lazy var DuelImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "ayrton")
        image.contentMode = .scaleAspectFit
        image.heightAnchor.constraint(equalToConstant: 240).isActive = true
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
        return button
    }()
    
    //    private lazy var dueloCollection: UICollectionView = {
    //        let collection = UICollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewLayout.init())
    //        collection.translatesAutoresizingMaskIntoConstraints = false
    //        collection.showsHorizontalScrollIndicator = false
    //        collection.delaysContentTouches = false
    //        collection.register(DueloCollectionViewCell.self, forCellWithReuseIdentifier: DueloCollectionViewCell.identifier)
    //        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout.init()
    //        layout.scrollDirection = .horizontal
    //        collection.setCollectionViewLayout(layout, animated: false)
    //        collection.backgroundColor = .brown
    //        return collection
    //    }()
    
    private lazy var resultadosDaTemporada: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Resultados da temporada"
        label.numberOfLines = 1
        label.font = UIFont.boldSystemFont(ofSize: 20)
        //        label.backgroundColor = .blue
        label.textColor = .black
        return label
    }()
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .white
        tableView.separatorStyle = .singleLine
        tableView.separatorColor = .darkGray
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
    
    private func backgroundColor() {
        backgroundColor = UIColor(red: 243, green: 243, blue: 243, alpha: 1.0)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupScrollView()
        configureContainerView()
        backgroundColor()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func tappedSimulationButton(){
        delegate?.actionSimulationButton()
    }
    
    @objc func tappedFullResultButton(){
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
    
    //    func configProtocolsDueloCollectionView(delegate: UICollectionViewDelegate, dataSource: UICollectionViewDataSource) {
    //        dueloCollection.delegate = delegate
    //        dueloCollection.dataSource = dataSource
    //    }
    //
    
    private func setupScrollView() {

        addSubview(scrollView)
        scrollView.addSubview(scrollStackViewContainer1)
        scrollView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        scrollView.topAnchor.constraint(equalTo: topAnchor, constant: 48).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
        scrollStackViewContainer1.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        scrollStackViewContainer1.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
        scrollStackViewContainer1.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        scrollStackViewContainer1.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: -90).isActive = true
        
        configureContainerView()
    }
        private func configureContainerView() {
            
            scrollStackViewContainer1.addArrangedSubview(bemVindoLabel)
            scrollStackViewContainer1.addArrangedSubview(userNameLabel)
            scrollStackViewContainer1.addArrangedSubview(destaquesLabel)
            scrollStackViewContainer1.addArrangedSubview(destaquesCollection)
            scrollStackViewContainer1.addArrangedSubview(quemEMelhor)
            scrollStackViewContainer1.addArrangedSubview(DuelImage)
            scrollStackViewContainer1.addArrangedSubview(simulationButton)
            scrollStackViewContainer1.addArrangedSubview(resultadosDaTemporada)
            scrollStackViewContainer1.addArrangedSubview(tableView)
            scrollStackViewContainer1.addArrangedSubview(fullResultButton)
            
        }
    }

