//
//  LocationView.swift
//  Plan
//
//  Created by Andrew Morgan on 14/03/2022.
//

import SwiftUI
import RealmSwift

struct LocationView: View {
    @ObservedRealmObject var location: Location
    
    var body: some View {
        HStack {
            TextField("Location name", text: $location.name)
                .font(.caption)
        }
        .font(.caption)
    }
}

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        let location = Location()
        location.name = "London"
        return LocationView(location: location)
    }
}
