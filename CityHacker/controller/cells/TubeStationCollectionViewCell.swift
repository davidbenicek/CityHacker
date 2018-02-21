//
//  TubeStationCollectionViewCell.swift
//  CityHacker
//
//  Created by David Benicek on 2/7/18.
//  Copyright © 2018 David Benicek. All rights reserved.
//

import UIKit

class TubeStationCollectionViewCell: UICollectionViewCell, UITableViewDelegate, UITableViewDataSource{

    
    @IBOutlet private weak var TubeStationNameLabel: UILabel!
    
    @IBOutlet private weak var TubeStationDistanceLabel: UILabel!
    
    @IBOutlet private weak var ListOfStationsTableView: UITableView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()

        ListOfStationsTableView.delegate = self
        ListOfStationsTableView.dataSource = self
    
//        ListOfStationsTableView.register(ArrivingTrainTableViewCell.self, forCellReuseIdentifier: ArrivingTrainTableViewCell.identifier)
        
        ListOfStationsTableView.register(UINib(nibName: ArrivingTrainTableViewCell.identifier, bundle: Bundle.main), forCellReuseIdentifier: ArrivingTrainTableViewCell.identifier)
        
        TubeStationNameLabel.text = "Temple"
        TubeStationDistanceLabel.text = "600m"
    }

    static var identifier:  String {
        return String(describing: self)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: ArrivingTrainTableViewCell.identifier, for: indexPath)
        guard let lineCell = cell as? ArrivingTrainTableViewCell else { return cell }
        
        //Here we could access the vars inside lineCell, like lineCell.lineThumbnail
        
        return lineCell;
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return ArrivingTrainTableViewCell.height
    }
    
    
}
