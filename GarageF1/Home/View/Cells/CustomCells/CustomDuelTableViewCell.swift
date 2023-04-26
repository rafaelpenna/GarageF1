//
//  CustomDuelTableViewCell.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 16/03/23.
//

import UIKit

protocol CustomDuelTableViewCellProtocol: AnyObject {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
}

class CustomDuelTableViewCell: UITableViewCell {

    static let identifier: String = "CustomDuelTableViewCell"
    var duelCustomScreen: CustomDuelTableViewScreen = CustomDuelTableViewScreen()
    var dataHomeDuel: [HomeDuel] = [HomeDuel(namePilot: "Michael Schumacher ", imagePilot: "schumacher"),
                                    HomeDuel(namePilot: "Max Verstappen", imagePilot: "max")]
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview()
        configConstraints()
        duelCustomScreen.configProtocolsDuelCollectionView(delegate: self, dataSource: self)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubview() {
        duelCustomScreen.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(duelCustomScreen)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
        
            duelCustomScreen.topAnchor.constraint(equalTo: topAnchor),
            duelCustomScreen.leadingAnchor.constraint(equalTo: leadingAnchor),
            duelCustomScreen.trailingAnchor.constraint(equalTo: trailingAnchor),
            duelCustomScreen.bottomAnchor.constraint(equalTo: bottomAnchor),
        
        ])
    }
}

extension CustomDuelTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataHomeDuel.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: CollectionCustomDuelCell? = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionCustomDuelCell.identifier, for: indexPath) as? CollectionCustomDuelCell
        cell?.setupCell(data: dataHomeDuel[indexPath.row])
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 290, height: 190)
    }
}

