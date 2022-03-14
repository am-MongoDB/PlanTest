//
//  ContentView.swift
//  Plan
//
//  Created by Andrew Morgan on 14/03/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            PlansView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
