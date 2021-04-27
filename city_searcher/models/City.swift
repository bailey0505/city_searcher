//
//  City.swift
//  city_searcher
//
//  Created by Bailey Rotellini on 4/27/21.
//

import Foundation
import SwiftUI
import CoreLocation

struct City: Hashable, Codable, Identifiable {
    var name: String
    var ascii: String
    var lat: Double
    var lng: Double
    var country: String
    var iso2: String
    var iso3: String
    var admin_name: String
    var capital: String
    var population: Double
    var id: Int
    
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: lat,
            longitude: lng)
    }
    
}
