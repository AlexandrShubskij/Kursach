//
//  TypeOfComponents.swift
//  Kursach
//
//  Created by Александр Шубский on 22.12.2019.
//  Copyright © 2019 Александр Шубский. All rights reserved.
//

import UIKit

class TypeOfComponents: UITableViewController {

    
    var typeOfComponents: [String] = []
    var navBarTitle: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = navBarTitle
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return typeOfComponents.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "typeOfComponents", for: indexPath)

        cell.textLabel?.text = typeOfComponents[indexPath.row]

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? InfoItem else { return }
        dvc.navBarTitle = typeOfComponents[self.tableView.indexPathForSelectedRow!.row]
        
        
    }
    

}
