//
//  BasketModel.swift
//  Kursach
//
//  Created by Александр Шубский on 23.12.2019.
//  Copyright © 2019 Александр Шубский. All rights reserved.
//

import Foundation
import RealmSwift
import UIKit

class BasketModel: Object {
    @objc dynamic var item: String = ""
}
