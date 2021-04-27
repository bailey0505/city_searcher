//
//  location_list.swift
//  city_searcher
//
//  Created by Bailey Rotellini on 4/27/21.
//

import SwiftUI

struct location_list: View {
    var body: some View {
        NavigationView {
            List(cities) { City in
                NavigationLink(destination: cityDetails(city: City)) {
                    Text(City.name)
                }
            }
            .navigationTitle("Locations") 
             
        }
    }
}

struct location_list_Previews: PreviewProvider {
    static var previews: some View {
        location_list()
    }
}
