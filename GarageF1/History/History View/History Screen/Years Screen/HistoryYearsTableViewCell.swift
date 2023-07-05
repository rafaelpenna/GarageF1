//
//  HistoryYearsTableViewCell.swift
//  GarageF1
//
//  Created by Rafael Penna on 15/05/23.
//

import UIKit

class HistoryYearsTableViewCell: UITableViewCell {

    var customInfoYears: CustomCellHistoryYears = CustomCellHistoryYears()
    var yearsViewModel: YearsScreenViewModel?
    
    static let identifier: String = String(describing: HistoryYearsTableViewCell.self)
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.addComponents()
        self.configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addComponents() {
        customInfoYears.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(customInfoYears)
    }

    func setupCell(driveData:SeasonHistoryYearModel){
        self.yearsViewModel = YearsScreenViewModel(data: driveData)
        customInfoYears.yearLabel.text = yearsViewModel?.getYearSeason
    }
    
    private func configConstraints(){
        NSLayoutConstraint.activate([
            
            customInfoYears.leadingAnchor.constraint(equalTo: leadingAnchor),
            customInfoYears.trailingAnchor.constraint(equalTo: trailingAnchor),
            customInfoYears.topAnchor.constraint(equalTo: topAnchor),
            customInfoYears.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
}
