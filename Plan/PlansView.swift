//
//  PlansView.swift
//  Plan
//
//  Created by Andrew Morgan on 14/03/2022.
//

import SwiftUI
import RealmSwift

struct PlansView: View {
    @ObservedResults(Plan.self) var plans
    
    @State private var planName = ""
    @State private var locationName = ""
    
    var body: some View {
      NavigationView{
        VStack {
            List{
                ForEach(plans) { plan in
                    PlanView(plan: plan)
                }
            }
            Spacer()
            VStack {
                TextField("Plan name", text: $planName)
                TextField("Location name", text: $locationName)
                Button(action: addPlan) {
                    Text("Add plan")
                }
                .buttonStyle(.borderedProminent)
            }
            .padding()
        }
      }
    }
    
    private func addPlan() {
        let plan = Plan(name: planName, locationName: locationName)
        $plans.append(plan)
        planName = ""
        locationName = ""
    }
}

struct PlansView_Previews: PreviewProvider {
    static var previews: some View {
        PlansView()
    }
}
