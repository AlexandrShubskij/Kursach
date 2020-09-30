//
//  File.swift
//  Kursach
//
//  Created by Александр Шубский on 22.12.2019.
//  Copyright © 2019 Александр Шубский. All rights reserved.
//

import Foundation

class AllItims: NSData {
    static func rightComponent(name: String) -> Array<String>{
        switch name {
        case "Процессоры":
            return proc
        case "Материнские платы":
            return plate
        case "Видеокарты":
            return video
        case "Оперативная память":
            return memory
        case "Накопители":
            return disc
        case "Звуковые карты":
            return sound
        case "Блоки питания":
            return bp
        case "Корпуса":
            return korpus
        default:
            return []
        }
    }
    static let proc: [String] = ["Intel Core i3-9300", "AMD Ryzen 2600"]
    static let plate: [String] = ["MSI Z-270 Gaming", "ASUS B-250"]
    static let memory: [String] = ["HyperX 8GB", "Samsung 16GB"]
    static let video: [String] = ["NVidia GTX 1080 ti", "AMD Radeon RX580"]
    static let disc: [String] = ["Samsung EVO 850 240 GB", "Kingston U400 480GB"]
    static let sound: [String] = []
    static let bp: [String] = []
    static let korpus: [String] = []
}
