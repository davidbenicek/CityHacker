//
//  ArrivingTrainTableViewCell.swift
//  CityHacker
//
//  Created by David Benicek on 2/7/18.
//  Copyright © 2018 David Benicek. All rights reserved.
//

import UIKit

class ArrivingTrainTableViewCell: UITableViewCell {

    @IBOutlet private weak var lineThumbnail: UIImageView!
    
    @IBOutlet private weak var lineDescriptionLabel: UILabel!
    
    @IBOutlet private weak var lineArrivalTime: UILabel!
    
    private static let lineTableViewCellHeigh: CGFloat = 25.0
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        //MARK - TODO: Change dumy data
        lineDescriptionLabel.text = "West bound - Ealing Broadway"
        lineArrivalTime.text = "1 min"
        lineThumbnail.image = UIImage(named: "District");
    }
    
    
    static var identifier:  String {
        return String(describing: self)
    }
    
    static var height: CGFloat {
        return lineTableViewCellHeigh
    }
}
