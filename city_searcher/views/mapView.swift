//
//  mapView.swift
//  city_searcher
//
//  Created by Bailey Rotellini on 4/27/21.
//

import SwiftUI
import MapKit

struct mapView: View {
    @State private var region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    var body: some View {
        //Map(coordinateRegion: $coordinates)
        Text("Hello")
    }
}

struct mapView_Previews: PreviewProvider {
    static var previews: some View {
        mapView()
    }
}
