//
//  PlaceModel.swift
//  Places
//
//  Created by Andrey Andryukhin on 10.03.2020.
//  Copyright © 2020 Andrey Andryukhin. All rights reserved.
//

import UIKit

struct Place {
    var name: String
    var location: String?
    var type: String?
    var image: UIImage?
    var restaurantImage: String?
    
    static let restaurantNames = ["Burger Heroes", "Kitchen", "Bonsai", "Дастархан", "Индокитай", "X.O", "Балкан Гриль", "Sherlock Holmes", "Speak Easy", "Morris Pub", "Вкусные истории", "Классик", "Love&Life", "Шок", "Бочка"]
    
    static func getPlaces() -> [Place] {
        
        var places = [Place]()
        
        for place in restaurantNames {
            places.append(Place(name: place, location: "Moscow", type: "Restaurant", image: nil, restaurantImage: place))
        }
        
        return places
    }
}
