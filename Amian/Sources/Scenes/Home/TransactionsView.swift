//
//  TransactionsView.swift
//  Amian
//
//  Created by Alisher Manatbek on 10.06.2024.
//

import SwiftUI

enum TransactionsPeriod: String {
    case day, week, month, year
}

final class TransactionsViewModel: ObservableObject {
    
    @Published var period: TransactionsPeriod
    
    init() {
        self.period = .month
    }
}

struct TransactionsView: View {
    
    @ObservedObject var viewModel: TransactionsViewModel
    
    var body: some View {
        VStack {
            HStack {
                Text("This \(viewModel.period.rawValue)")
                    .font(.headline)
                    .foregroundColor(.label)
            }
            
            
        }
    }
}

#Preview(body: {
    TransactionsView(viewModel: TransactionsViewModel())
})


