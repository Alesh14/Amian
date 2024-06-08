//
//  AnalyticsCoordinator.swift
//  Amian
//
//  Created by Alisher Manatbek on 07.06.2024.
//

import SwiftUI
import Foundation

import Stinsen

final class AnalyticsCoordinator: NavigationCoordinatable {

    let stack = NavigationStack(initial: \AnalyticsCoordinator.start)

    @Root var start = makeStart
    
    init() {}
}

private extension AnalyticsCoordinator {
    
    @ViewBuilder
    private func makeStart() -> some View {
        AnalyticsView()
    }
}
