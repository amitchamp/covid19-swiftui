//
//  CasesSummaryVM.swift
//  Covid19
//
//  Created by Sumit on 15/05/20.
//  Copyright © 2020 Tutorials. All rights reserved.
//

import Foundation

class CaseSummaryVM: ObservableObject {

    @Published var caseSummary: CaseSummary?
    @Published var selectedCountry: SummaryInfo?
    @Published var countryCases: [CaseDetailByCountry]?
    
    func getCaseSummary(url: String) {
        self.fetchCaseSummary(url: Constant.getRequestURL(endPoint: url))
    }
    
    func getCaseDetailByCountry(countrySlug: String) {
        self.fetchCaseDetailByCountry(url: Constant.getCaseDetailByCountryRequestUrl(countrySlug: countrySlug))
    }
    
    func getCaseSummaryByCountry(countrySlug: String) {
        if let countryData = self.caseSummary?.Countries {
            if let index = countryData.firstIndex(where: { $0.Slug == countrySlug }) {
                self.selectedCountry = self.caseSummary?.Countries[index]
            }
        }
    }

    private func fetchCaseSummary(url: String) {
        CaseSummaryService.fetchCaseSummary(url: url) { caseSummary in
            DispatchQueue.main.async {
                if caseSummary != nil {
                    self.caseSummary = caseSummary
                }
            }
        }
    }
    
    private func fetchCaseDetailByCountry(url: String) {
        CaseSummaryService.fetchCaseSummaryByCountry(url: url) { countryCases in
            DispatchQueue.main.async {
                if countryCases != nil {
                    self.countryCases = countryCases
                }
            }
        }
    }
}
