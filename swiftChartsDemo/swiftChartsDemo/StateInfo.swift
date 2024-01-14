//
//  StateInfo.swift
//  swiftChartsDemo
//
//  Created by Yogesh on 14/01/24.
//

import Foundation

//We can use this struct after Api add we can use it for Codable protocol new we use static data with StateData
struct StateInfo: Codable {
    let IDState: String
    let state: String
    let IDYear: Int
    let year: String
    let population: Int
    let slugState: String

    enum CodingKeys: String, CodingKey {
        case IDState = "ID State"
        case state = "State"
        case IDYear = "ID Year"
        case year = "Year"
        case population = "Population"
        case slugState = "Slug State"
    }
}
