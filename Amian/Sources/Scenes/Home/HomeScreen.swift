//
//  HomeScreen.swift
//  Amian
//
//  Created by Alisher Manatbek on 07.06.2024.
//

import SwiftUI

struct HomeScreen: View {
    
    @EnvironmentObject private var router: HomeCoordinator.Router
    
    private let cardViewModel = CardViewModel(balance: 200)
    
    var body: some View {
        ScrollView {
            Button(action: {
                router.route(to: \.balanceDetails)
            }, label: {
                CardView(viewModel: cardViewModel)
            })
        }
        .navigationTitle("Home")
        .navigationBarTitleDisplayMode(.inline)
    }
}
