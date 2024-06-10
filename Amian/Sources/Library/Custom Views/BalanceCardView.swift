//
//  BalanceCardView.swift
//  Amian
//
//  Created by Alisher Manatbek on 08.06.2024.
//

import SwiftUI

final class BalanceCardViewModel: ObservableObject {
    
    @Published var balance: Double
    
    @Published var currency: Currency
    
    var isBalanceNegative: Bool { balance < 0 }
    
    init(balance: Double, currency: Currency = .dollar) {
        self.balance = balance
        self.currency = currency
    }
}

struct BalanceCardView: View {
    
    @ObservedObject var viewModel: BalanceCardViewModel
    
    private var balanceTitle: String {
        viewModel.currency.rawValue + String(format: "%.2f", viewModel.balance)
    }
    
    var body: some View {
        VStack {
            Text("Balance")
                .font(.system(size: 25,
                              weight: .semibold,
                              design: .rounded)
                )
                .foregroundColor(Color.white)
            
            Spacer()
                .frame(height: 10)
            
            Text(balanceTitle)
                .font(.system(size: 30,
                              weight: .semibold,
                              design: .rounded)
                )
                .foregroundColor(
                    viewModel.isBalanceNegative ? .red : .white
                )
        }
        .frame(width: ScreenSize.SCREEN_WIDTH - 10, height: 220)
        .background(.blue)
        .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
    }
}

#Preview {
    BalanceCardView(viewModel: BalanceCardViewModel(balance: 300))
}
