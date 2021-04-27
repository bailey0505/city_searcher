//
//  cityDetails.swift
//  city_searcher
//
//  Created by Bailey Rotellini on 4/27/21.
//

import SwiftUI
import MapKit
import CoreLocation


struct cityDetails: View {
    @State private var region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    
    var city: City

    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
    
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                setRegion(city.locationCoordinate)
            }
            .ignoresSafeArea(edges: .top)
            .frame(height: 300)
            
        VStack{
            Text("Name: \(city.name)")
            Text("Capital: \(city.capital)")
            Text("Country: \(city.country)")
            Text("Population: \(city.population)")
        }
        
    }
}

struct cityDetails_Previews: PreviewProvider {
    static var previews: some View {
        cityDetails(city: cities[0])
    }
}
