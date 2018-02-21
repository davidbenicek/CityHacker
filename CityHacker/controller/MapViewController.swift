//
//  MapViewController.swift
//  CityHacker
//
//  Created by David Benicek on 2/7/18.
//  Copyright © 2018 David Benicek. All rights reserved.
//

import UIKit
import MapKit


class MapViewController: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var MapView: MKMapView!
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        collectionView.delegate = self
        collectionView.dataSource = self
        
//        collectionView.register(TubeStationCollectionViewCell.self, forCellWithReuseIdentifier: TubeStationCollectionViewCell.identifier)

        collectionView.register(UINib(nibName: TubeStationCollectionViewCell.identifier, bundle: Bundle.main), forCellWithReuseIdentifier: TubeStationCollectionViewCell.identifier)
        
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 5
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TubeStationCollectionViewCell.identifier, for: indexPath)
        guard let stationCell = cell as? TubeStationCollectionViewCell else {
            return cell
        }
        
        return stationCell
    }
}
