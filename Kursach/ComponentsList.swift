//
//  ComponentsList.swift
//  Kursach
//
//  Created by Александр Шубский on 16.12.2019.
//  Copyright © 2019 Александр Шубский. All rights reserved.
//

import UIKit

class ComponentsList: UITableViewController {
    let components = ["Процессоры", "Материнские платы", "Видеокарты", "Накопители", "Звуковые карты", "Блоки питания", "Корпуса"]
    
    var performInfo: [String] = []
    var name: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return components.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "component", for: indexPath)

        cell.textLabel?.text = components[indexPath.row]

        return cell
    }

    
    // MARK: - Navigation

    
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? TypeOfComponents else { return }
        dvc.navBarTitle = components[self.tableView.indexPathForSelectedRow!.row]
        
        dvc.typeOfComponents = AllItims.rightComponent(name: components[self.tableView.indexPathForSelectedRow!.row])
    }
    

}
