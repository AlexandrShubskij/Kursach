//
//  ShopBasket.swift
//  Kursach
//
//  Created by Александр Шубский on 22.12.2019.
//  Copyright © 2019 Александр Шубский. All rights reserved.
//

import UIKit
import RealmSwift

class ShopBasket: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var shopBasket:Results<BasketModel>!
    let realm = try! Realm()
    
    @IBOutlet weak var listTableView: UITableView!
    @IBOutlet weak var buyButton: UIButton!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        shopBasket = realm.objects(BasketModel.self)
        
        // Do any additional setup after loading the view.
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if shopBasket.count != 0 {
            return shopBasket.count
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = listTableView.dequeueReusableCell(withIdentifier: "basket", for: indexPath)
        let shopBask = shopBasket[indexPath.row]
        cell.textLabel?.text = shopBask.item
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let editingRow = shopBasket[indexPath.row]
        let deleteAction = UITableViewRowAction(style: .default, title: "Delete"){_,_ in
            try! self.realm.write {
                self.realm.delete(editingRow)
                self.listTableView.reloadData()
            }
        }
        
        return[deleteAction]
    }
    
}
