//
//  StorageManager.swift
//  Places
//
//  Created by Andrey Andryukhin on 12.03.2020.
//  Copyright © 2020 Andrey Andryukhin. All rights reserved.
//

import RealmSwift

let realm = try! Realm()

class StorageManager {
    
    static func saveObject(_ place: Place) {
        try! realm.write {
            realm.add(place)
        }
    }
}
