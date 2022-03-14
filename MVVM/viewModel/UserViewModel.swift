//
//  UserViewModel.swift
//  MVVM
//
//  Created by Tuấn Phạm on 13/03/2022.
//

import UIKit

class UserViewModel: NSObject {
     private var apiService : APIService!
    private(set) var empData : [User]! {
            didSet {
                self.bindBannerViewModelToController?()
            }
        }
    var bindBannerViewModelToController : (() -> ())?

    
    override init(){
        super.init()
        self.apiService = APIService()
        callFuncToGetEmpData()

    }
    func callFuncToGetEmpData() {
        self.apiService.apiToGetUser(){ (dat: Data?,URLResponse: URLResponse?,error: Error?) in
            print(dat!)
            if let Data = dat {
                let jsonDecoder = JSONDecoder()
                let dataResponse = try! jsonDecoder.decode([User].self, from: Data)
                self.empData = dataResponse
            }

            }
        }

}
