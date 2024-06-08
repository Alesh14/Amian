//
//  CardView.swift
//  Amian
//
//  Created by Alisher Manatbek on 08.06.2024.
//

import SwiftUI

final class CardViewModel: ObservableObject {
    
    @Published var balance: Double
    
    @Published var currency: Currency
    
    init(balance: Double, currency: Currency = .dollar) {
        self.balance = balance
        self.currency = currency
    }
}

struct CardView: View {
    
    @ObservedObject var viewModel: CardViewModel
    
    private var balanceTitle: String {
        String(format: "%.2f", viewModel.balance) + " " + viewModel.currency.rawValue
    }
    
    var body: some View {
        VStack {
            Text(balanceTitle)
                .font(.system(size: 30,
                              weight: .semibold,
                              design: .rounded)
                )
                .foregroundColor(Color.white)
        }
        .frame(width: ScreenSize.SCREEN_WIDTH - 10, height: 220)
        .background(.blue)
        .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
    }
}

#Preview {
    CardView(viewModel: CardViewModel(balance: 300))
}
