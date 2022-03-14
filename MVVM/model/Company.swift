//
//  company.swift
//  MVVM
//
//  Created by Tuấn Phạm on 13/03/2022.
//
struct Company {
    var name: String
    var catchPhrase : String
    var bs: String
}
extension Company: Decodable{
    enum CodingKeys: String, CodingKey{
        case name = "name"
        case catchPhrase = "catchPhrase"
        case bs = "bs"
    }
}
