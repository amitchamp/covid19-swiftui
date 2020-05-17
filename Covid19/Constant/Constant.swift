//
//  Constant.swift
//  Covid19
//
//  Created by Sumit on 15/05/20.
//  Copyright © 2020 Tutorials. All rights reserved.
//

import Foundation

class Constant {
    
    static let BASE_URL = "https://api.covid19api.com/"
    
    static func getRequestURL(endPoint: String) -> String {
        return BASE_URL + endPoint
    }
    
    static func getCaseDetailByCountryRequestUrl(countrySlug: String) -> String {
        return BASE_URL + "total/country/" + countrySlug + "/status/confirmed"
    }
}
