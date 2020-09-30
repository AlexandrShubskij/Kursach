//
//  InfoItem.swift
//  Kursach
//
//  Created by Александр Шубский on 23.12.2019.
//  Copyright © 2019 Александр Шубский. All rights reserved.
//

import UIKit
import RealmSwift

class InfoItem: UIViewController {
    
    let realm = try! Realm()
    
    var navBarTitle: String = ""
    var bask = BasketModel()
    
    @IBOutlet weak var nameOfItem: UILabel!
    
    @IBAction func addToBasketAction(_ sender: Any) {
        bask.item = navBarTitle
        try! realm.write {
            realm.add(bask)
        }
        print(bask)
//        Basket.basket.append(navBarTitle)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameOfItem.text = navBarTitle
        
    }
    


}
