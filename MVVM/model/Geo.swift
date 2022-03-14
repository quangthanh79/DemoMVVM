//
//  geo.swift
//  MVVM
//
//  Created by Tuấn Phạm on 13/03/2022.
//

struct Geo {
    var lat : String
    var lng : String
}
extension Geo: Decodable{
    enum CodingKeys: String, CodingKey{
        case lat = "lat"
        case lng = "lng"
    }
}
