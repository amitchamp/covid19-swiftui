//
//  StatisticsScreenView.swift
//  Covid19
//
//  Created by Sumit on 15/05/20.
//  Copyright © 2020 Tutorials. All rights reserved.
//

import SwiftUI

struct StatisticsScreenView: View {
    
    @EnvironmentObject var caseSummary: CaseSummaryVM
    
    var body: some View {
        let totalConfirmed = self.caseSummary.caseSummary?.Global.TotalConfirmed ?? 0
        let newConfirmed = self.caseSummary.caseSummary?.Global.NewConfirmed ?? 0
        let recorved = self.caseSummary.caseSummary?.Global.TotalRecovered ?? 0
        let death = self.caseSummary.caseSummary?.Global.TotalDeaths ?? 0

        return NavigationView {
            GeometryReader { geometry in
                ScrollView {
                    StatisticsInfoView(
                        totalConfirmed: totalConfirmed,
                        newConfirmed: newConfirmed,
                        recorved: recorved,
                        death: death
                    )
                        .frame(height: 210)
                        .padding(.bottom, 20)
                    
                    DonoteNowView()
                }
            }
            .padding(.horizontal, 15)
            .navigationBarTitle("Statistics", displayMode: .automatic)
        }
    }
}

struct StatisticsScreenView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticsScreenView()
    }
}
