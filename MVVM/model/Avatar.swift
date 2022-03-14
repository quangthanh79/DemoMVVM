//
//  avatar.swift
//  MVVM
//
//  Created by Tuấn Phạm on 13/03/2022.
//

struct Avatar{
    var thumbnail: String
    var photo: String
}
extension Avatar: Decodable{
    enum CodingKeys: String, CodingKey{
        case thumbnail = "thumbnail"
        case photo = "photo"
    }
}
