//
//  TransactionsView.swift
//  Amian
//
//  Created by Alisher Manatbek on 10.06.2024.
//

import SwiftUI

enum Period: String {
    case month
}

final class TransactionsViewModel: ObservableObject {
    
    @Published var period: Period
    
    init() {
        self.period = .month
    }
}

struct TransactionsView: View {
    
    @ObservedObject var viewModel: TransactionsViewModel
    
    var body: some View {
        VStack {
            
            Text("This \(viewModel.period.rawValue)")
                .font(.headline)
                .foregroundColor(.label)
            
            CalendarView(calendar: Calendar(identifier: .gregorian))
        }
    }
}

#Preview(body: {
    TransactionsView(viewModel: TransactionsViewModel())
})
