//
//  SwiftUI_AppleApp.swift
//  SwiftUI-Apple
//
//  Created by Mayank Rikh on 18/02/21.
//

import SwiftUI

@main
struct SwiftUI_AppleApp: App {
    
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(ModelData())
        }
        
        #if os(watchOS)
        WKNotificationScene(controller: NotificationController.self, category: "LandmarkNear")
        #endif
    }
}
