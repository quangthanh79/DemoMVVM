//
//  address.swift
//  MVVM
//
//  Created by Tuấn Phạm on 13/03/2022.
//

struct Address {
    let street: String
    let suite: String
    let city: String
    let zipcode: String
    let geo : Geo
}
extension Address: Decodable{
    enum CodingKeys: String, CodingKey{
        case street = "street"
        case suite = "suite"
        case city = "city"
        case zipcode = "zipcode"
        case geo
    }
}
