//
//  APIService.swift
//  MVVM
//
//  Created by Tuấn Phạm on 13/03/2022.
//

import UIKit

class APIService: NSObject {
    private let url = URL(string: "https://lebavui.github.io/jsons/users.json")!
    func apiToGetUser(complete : @escaping(Data?,URLResponse?,Error?)-> (Void)){
        var uRLSessionDataTask = URLSession.shared.dataTask(with: url, completionHandler: complete)
        uRLSessionDataTask.resume()
    }

}
