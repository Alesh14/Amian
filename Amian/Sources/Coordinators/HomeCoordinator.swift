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
    
    init() {}
}

extension HomeCoordinator {
    
    @ViewBuilder
    private func makeStart() -> some View {
        HomeView()
    }
}

struct HomeView: View {
    
    var body: some View {
        Text("Home")
    }
}
