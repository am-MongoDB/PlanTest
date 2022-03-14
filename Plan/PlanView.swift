//
//  PlanView.swift
//  Plan
//
//  Created by Andrew Morgan on 14/03/2022.
//

import SwiftUI
import RealmSwift

struct PlanView: View {
    @ObservedRealmObject var plan: Plan
    @Environment(\.realm) var realm
    
    var body: some View {
        VStack {
            TextField("Plan name", text: $plan.name)
                .font(.headline)
            if let location = plan.location {
              NavigationLink(destination: LocationView(location: location)) {
                Text("Location: \(location.name)")
              }
            }
        }
    }
}

struct PlanView_Previews: PreviewProvider {
    static var previews: some View {
        PlanView(plan: Plan(name: "My plan name", locationName: "My Plan location"))
    }
}
