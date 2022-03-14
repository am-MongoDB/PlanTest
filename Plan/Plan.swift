//
//  Plan.swift
//  Plan
//
//  Created by Andrew Morgan on 14/03/2022.
//

import Foundation
import RealmSwift

class Plan: Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) var _id = UUID()
    @Persisted var location: Location?
    @Persisted var name: String = ""
    
    convenience init(name: String, locationName: String) {
        self.init()
        self.name = name
        self.location = Location()
        self.location?.name = locationName
    }
}

class Location: Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) var _id = UUID()
    @Persisted var name: String = ""
}
