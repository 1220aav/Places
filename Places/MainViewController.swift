//
//  MainViewController.swift
//  Places
//
//  Created by Andrey Andryukhin on 10.03.2020.
//  Copyright © 2020 Andrey Andryukhin. All rights reserved.
//

import UIKit

class MainViewController: UITableViewController {
    
    let places = ["ByTheWine", "Lisbon Winery", "BA Wine Bar Bairro Alto", "Nova Wine Bar", "The Wine Cellar", "Wine not?"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return places.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel?.text = places[indexPath.row]

        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
