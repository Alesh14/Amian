//
//  HomeCoordinator.swift
//  Amian
//
//  Created by Alisher Manatbek on 07.06.2024.
//

import SwiftUI
import Foundation

import Stinsen

final class HomeCoordinator: NavigationCoordinatable {

    let stack = NavigationStack(initial: \HomeCoordinator.start)

    @Root var start = makeStart
    @Route(.push) var balanceDetails = makeBalanceDetails
    
    init() {}
}

private extension HomeCoordinator {
    
    @ViewBuilder
    private func makeStart() -> some View {
        HomeScreen()
    }
    
    @ViewBuilder
    private func makeBalanceDetails() -> some View {
        BalanceDetailsScreen()
    }
}
