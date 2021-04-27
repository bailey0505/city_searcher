//
//  cityDetails.swift
//  city_searcher
//
//  Created by Bailey Rotellini on 4/27/21.
//

import SwiftUI

struct cityDetails: View {
    var city: City
    var body: some View {
        Text(city.name)
        
    }
}

struct cityDetails_Previews: PreviewProvider {
    static var previews: some View {
       // cityDetails(city: City[0])
        cityDetails(city: cities[0])
    }
}
