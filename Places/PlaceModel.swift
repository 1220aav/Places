//
//  PlaceModel.swift
//  Places
//
//  Created by Andrey Andryukhin on 10.03.2020.
//  Copyright © 2020 Andrey Andryukhin. All rights reserved.
//

import UIKit
import RealmSwift

class Place: Object {
    @objc dynamic var name = ""
    @objc dynamic var location: String?
    @objc dynamic var type: String?
    @objc dynamic var imageData: Data?
    
    convenience init(name: String, location: String?, type: String?, imageData: Data) {
        self.init()
        self.name = name
        self.location = location
        self.type = type
        self.imageData = imageData
    }
}
