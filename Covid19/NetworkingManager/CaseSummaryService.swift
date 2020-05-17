//
//  CaseSummaryService.swift
//  Covid19
//
//  Created by Sumit on 16/05/20.
//  Copyright © 2020 Tutorials. All rights reserved.
//

import Foundation

class CaseSummaryService {
    
    static func fetchCaseSummary(url: String, completion: @escaping (CaseSummary?) -> ()) {
        guard let url = URL(string: url) else {
            completion(nil)
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data, error == nil else {
                completion(nil)
                return
            }
            
            let responseData = try? JSONDecoder().decode(CaseSummary.self, from: data)

            if let caseSummaryResponse = responseData {
                completion(caseSummaryResponse)
                return
            }
            
            completion(nil)
            return
        }.resume()
    }
    
    static func fetchCaseSummaryByCountry(url: String, completion: @escaping ([CaseDetailByCountry]?) -> ()) {
        guard let url = URL(string: url) else {
            completion(nil)
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data, error == nil else {
                completion(nil)
                return
            }
            
            let responseData = try? JSONDecoder().decode([CaseDetailByCountry].self, from: data)

            if let caseSummaryByCountryData = responseData {
                completion(caseSummaryByCountryData)
                return
            }
            
            completion(nil)
            return
        }.resume()
    }
}
