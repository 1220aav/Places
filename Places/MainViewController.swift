//
//  MainViewController.swift
//  Places
//
//  Created by Andrey Andryukhin on 10.03.2020.
//  Copyright © 2020 Andrey Andryukhin. All rights reserved.
//

import UIKit

class MainViewController: UITableViewController {
    
//    var places = Place.getPlaces()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return places.count
//    }

//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
//
//        let place = places[indexPath.row]
//
//        if place.image == nil {
//            cell.placeImage.image = UIImage(named: place.restaurantImage!)
//        } else {
//            cell.placeImage.image = place.image
//        }
//
//        cell.placeNameLabel.text = place.name
//        cell.placeLocationLabel.text = place.location
//        cell.placeTypeLabel.text = place.type
//
//        cell.placeImage.layer.cornerRadius = cell.placeImage.frame.size.height / 2
//        cell.placeImage.clipsToBounds = true
//
//        return cell
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        guard let newPlaceVC = segue.source as? NewPlaceTableViewController else { return }
        newPlaceVC.saveNewPlace()
//        places.append(newPlaceVC.newPlace!)
        tableView.reloadData()
    }
}
