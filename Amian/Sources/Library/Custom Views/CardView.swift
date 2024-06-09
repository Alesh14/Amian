//
//  CardView.swift
//  Amian
//
//  Created by Alisher Manatbek on 08.06.2024.
//

import SwiftUI

final class BalanceCardViewModel: ObservableObject {
    
    @Published var balance: Double
    
    @Published var currency: Currency
    
    init(balance: Double, currency: Currency = .dollar) {
        self.balance = balance
        self.currency = currency
    }
}

struct BalanceCardView: View {
    
    @ObservedObject var viewModel: BalanceCardViewModel
    
    private var balanceTitle: String {
        String(format: "%.2f", viewModel.balance) + " " + viewModel.currency.rawValue
    }
    
    var body: some View {
        Text(balanceTitle)
            .font(.system(size: 30,
                          weight: .semibold,
                          design: .rounded)
            )
            .foregroundColor(Color.white)
            .frame(width: ScreenSize.SCREEN_WIDTH - 10, height: 220)
            .background(.blue)
            .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
    }
}

#Preview {
    BalanceCardView(viewModel: BalanceCardViewModel(balance: 300))
}
