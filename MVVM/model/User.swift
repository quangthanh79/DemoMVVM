//
//  user.swift
//  MVVM
//
//  Created by Tuấn Phạm on 13/03/2022.
//

struct User{
    let id: Int
    let name: String
    let username: String
    let email: String
    let avatar: Avatar
    let address: Address
    let phone: String
    let website: String
    let company: Company
}
extension User: Decodable{
    enum CodingKeys: String, CodingKey{
        case avatar
        case id = "id"
        case name = "name"
        case username = "username"
        case email = "email"
        case address 
        case phone = "phone"
        case website = "website"
        case company
    }
    init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            id = try container.decode(Int.self, forKey: .id)
            avatar = try container.decode(Avatar.self, forKey: .avatar)
            email = try container.decode(String.self, forKey: .email)
            name = try container.decode(String.self, forKey: .name)
            username = try container.decode(String.self, forKey: .username)
            address = try container.decode(Address.self, forKey: .address)
            phone = try container.decode(String.self, forKey: .phone)
            website = try container.decode(String.self, forKey: .website)
            company = try container.decode(Company.self, forKey: .company)
    }
}
