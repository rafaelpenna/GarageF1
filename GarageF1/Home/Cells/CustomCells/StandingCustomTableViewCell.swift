//
//  StandingCustomTableViewCell.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 15/03/23.
//

import UIKit

protocol StandingCustomTableViewCellProtocol: AnyObject {
    func callDetailDrive(data: DriverStandingHomeModel)
}

class StandingCustomTableViewCell: UITableViewCell {
    
    var standingScreen: StandingCustomScreen = StandingCustomScreen()
    let driversViewModel: StandingCustomViewModel = StandingCustomViewModel()
    weak private var delegate: StandingCustomTableViewCellProtocol?
    public func delegate(delegate: StandingCustomTableViewCellProtocol?) {
        self.delegate = delegate
    }
    
    static let identifier: String = String(describing: StandingCustomTableViewCell.self)
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview()
        configConstraints()
        standingScreen.configProtocolsStandingCollectionView(delegate: self, dataSource: self)
        driversViewModel.delegate(delegate: self)
        driversViewModel.fetchHighlights(.request)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubview() {
        standingScreen.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(standingScreen)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            standingScreen.topAnchor.constraint(equalTo: topAnchor),
            standingScreen.leadingAnchor.constraint(equalTo: leadingAnchor),
            standingScreen.trailingAnchor.constraint(equalTo: trailingAnchor),
            standingScreen.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
}

extension StandingCustomTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return driversViewModel.numberOfRows
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: CustomStandingCollectionViewCell? = collectionView.dequeueReusableCell(withReuseIdentifier: CustomStandingCollectionViewCell.identifier, for: indexPath) as? CustomStandingCollectionViewCell
        cell?.setupCell(driver: driversViewModel.loadCurrentDriver(indexPath: indexPath))
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 340, height: 160)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        delegate?.callDetailDrive(data: driversViewModel.loadCurrentDriver(indexPath: indexPath))
    }
}

extension StandingCustomTableViewCell: StandingCustomViewModelDelegate {
    func success() {
        self.standingScreen.configProtocolsStandingCollectionView(delegate: self, dataSource: self)
        reloadColetionView()
    }
    
    func error(_ message: String) {
        
    }
}

extension StandingCustomTableViewCell: StandingCustomViewModelProtocol {
    func reloadColetionView() {
        self.standingScreen.destaquesCollection.reloadData()
    }
}
