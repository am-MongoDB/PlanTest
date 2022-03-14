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
    HStack{
      Text("locale: \(location.name)")
      Spacer()
      NavigationLink(destination: EditLocation(location: location)) {
        Text("Edit >")
      }
    }
  }
}

struct LocationView_Previews: PreviewProvider {
  static var previews: some View {
    let location = Location()
    location.name = "London"
    return LocationView(location: location)
  }
}
