//
//  CountryStatisticScreenView.swift
//  Covid19
//
//  Created by Sumit on 17/05/20.
//  Copyright © 2020 Tutorials. All rights reserved.
//

import SwiftUI

struct CountryStatisticScreenView: View {

    @EnvironmentObject var caseSummary: CaseSummaryVM
    
    var countrySlug: String
    
    var body: some View {
        let selectecCountrySummary: SummaryInfo = self.caseSummary.selectedCountry ?? SummaryInfo.getSingleValue()
        var selectedCaseDetailByCountry: [CaseDetailByCountry] = self.caseSummary.countryCases ?? CaseDetailByCountry.getDefaulValue()
        selectedCaseDetailByCountry = selectedCaseDetailByCountry.suffix(30)

        let totalConfirmed = selectecCountrySummary.TotalConfirmed
        let newConfirmed = selectecCountrySummary.NewConfirmed
        let recorved = selectecCountrySummary.TotalRecovered
        let death = selectecCountrySummary.TotalDeaths

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
                    
                    ScrollView {
                        HStack {
                            BarGraphView(selectedCaseDetailByCountry: selectedCaseDetailByCountry)
                        }
                    }
                    .frame(width: geometry.size.width)
                }
            }
            .padding(.horizontal, 15)
            .navigationBarTitle(Text("\(selectecCountrySummary.Country ?? "Country Statistics")"), displayMode: .automatic)
            .onAppear {
                self.caseSummary.getCaseSummaryByCountry(countrySlug: self.countrySlug)
                self.caseSummary.getCaseDetailByCountry(countrySlug: self.countrySlug)
            }
        }
    }
}

struct CountryStatisticScreenView_Previews: PreviewProvider {
    static var previews: some View {
        CountryStatisticScreenView(countrySlug: "india")
    }
}
