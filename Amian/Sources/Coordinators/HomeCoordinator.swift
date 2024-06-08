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
        HomeScreen()
    }
}

struct HomeScreen: View {
    
    @EnvironmentObject private var router: HomeCoordinator.Router
    
    private let cardViewModel = CardViewModel(balance: 200)
    
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 20)
            
            CardView(viewModel: vm)
            
            Spacer()
        }
    }
}
