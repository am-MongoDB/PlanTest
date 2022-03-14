//
//  EditLocation.swift
//  Plan
//
//  Created by KURT LIBBY on 3/14/22.
//

import SwiftUI
import RealmSwift

struct EditLocation: View {
  
  @ObservedRealmObject var location: Location
  
    var body: some View {
      TextField("Location name", text: $location.name)
          .font(.caption)
    }
}

struct EditLocation_Previews: PreviewProvider {
    static var previews: some View {
      EditLocation(location: Location())
    }
}
