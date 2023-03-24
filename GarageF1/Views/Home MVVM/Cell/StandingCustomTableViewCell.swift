//
//  StandingCustomTableViewCell.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 15/03/23.
//

import UIKit

protocol StandingCustomTableViewCellProtocol: AnyObject {
    func callFirstDrive()
    func callSecondDrive()
}

class StandingCustomTableViewCell: UITableViewCell {
    
    var dataHomeRacer: [HomeRacer] = [HomeRacer(indice: "1", nameTeams: "Red Bull Racing", name: "max", nameImage: "Max \nVerstappen"),
                                      HomeRacer(indice: "2", nameTeams: "Ferrari         ", name: "charles", nameImage: "Charles \nLeclerc")]
    
    weak private var delegate: StandingCustomTableViewCellProtocol?
    public func delegate(delegate: StandingCustomTableViewCellProtocol?) {
        self.delegate = delegate
    }
    
    var standingScreen: StandingCustomScreen = StandingCustomScreen()
    static let identifier: String = "StandingCustomTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview()
        configConstraints()
        standingScreen.configProtocolsStandingCollectionView(delegate: self, dataSource: self)
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
        return dataHomeRacer.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell: CustomStandingCollectionViewCell? = collectionView.dequeueReusableCell(withReuseIdentifier: CustomStandingCollectionViewCell.identifier, for: indexPath) as? CustomStandingCollectionViewCell
        cell?.setupCell(data: dataHomeRacer[indexPath.row])
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        return CGSize(width: 340, height: 160)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if indexPath.item == 0 {
            delegate?.callFirstDrive()
        } else if indexPath.item == 1 {
            delegate?.callSecondDrive()
        }
    }
}



