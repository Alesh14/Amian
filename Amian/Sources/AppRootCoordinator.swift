//
//  RootCoordinator.swift
//  Amian
//
//  Created by Alisher Manatbek on 07.06.2024.
//

import SwiftUI

import Stinsen

final class AppRootCoordinator: TabCoordinatable {
    
    var child: TabChild = .init(startingItems: [
        \AppRootCoordinator.home,
        \AppRootCoordinator.analytics
    ], activeTab: 0)
    
    @Route(tabItem: makeHomeTab) var home = makeHome
    @Route(tabItem: makeAnalyticsTab) var analytics = makeAnalytics
    
    init() {}
}

extension AppRootCoordinator {
    
    @ViewBuilder 
    private func makeHomeTab(isActive: Bool) -> some View {
        Image(systemName: "house" + (isActive ? ".fill" : ""))
        Text("Home")
    }
    
    private func makeHome() -> HomeCoordinator {
        HomeCoordinator()
    }
    
    @ViewBuilder
    private func makeAnalyticsTab(isActive: Bool) -> some View {
        Image(systemName: isActive ? "arrow.up.forward.app.fill" : "arrow.up.forward.app")
        Text("Analitycs")
    }
    
    private func makeAnalytics() -> AnalyticsCoordinator {
        AnalyticsCoordinator()
    }
}
