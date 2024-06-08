//
//  AmianApp.swift
//  Amian
//
//  Created by Alisher Manatbek on 07.06.2024.
//

import UIKit
import SwiftUI

import Stinsen

@main
struct AmianApp: App {

    @UIApplicationDelegateAdaptor var delegate: AppDelegate
    
    var body: some Scene {
        WindowGroup {
            NavigationViewCoordinator(
                AppRootCoordinator()
            )
            .view()
        }
    }
}
