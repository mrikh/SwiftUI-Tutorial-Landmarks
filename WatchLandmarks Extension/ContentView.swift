//
//  ContentView.swift
//  WatchLandmarks Extension
//
//  Created by Mayank Rikh on 21/02/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
