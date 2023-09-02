//
//  CategoryModel.swift
//  MyStore
//
//  Created by Aayam Adhikari on 02/09/2023.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
