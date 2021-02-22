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
        let mainWindow = WindowGroup {
            ContentView().environmentObject(ModelData())
        }
        
        #if os(macOS)
        mainWindow
            .commands{
                LandmarkCommands()
            }
        #else
        mainWindow
        #endif
        
        #if os(watchOS)
        WKNotificationScene(controller: NotificationController.self, category: "LandmarkNear")
        #endif
        
        #if os(macOS)
        Settings {
            LandmarkSetting()
        }
        #endif
    }
}
