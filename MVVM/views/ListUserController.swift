//
//  ListUserController.swift
//  MVVM
//
//  Created by Tuấn Phạm on 14/03/2022.
//

import UIKit

class ListUserController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var table: UITableView!
    private var listUserModel: UserViewModel!
    private var listURL : [String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.register(MyTableViewCell.nib(), forCellReuseIdentifier: MyTableViewCell.identifier)
        table.delegate = self
        table.dataSource = self
        calltoViewModelForUpdateUI()
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row >= 0 {
            let customCell = tableView.dequeueReusableCell(withIdentifier: MyTableViewCell.identifier, for: indexPath) as! MyTableViewCell
            customCell.configure(with: "Tuấn Phạm Anh", imageName: "gear")
            return customCell
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Hello World"
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    
    func calltoViewModelForUpdateUI(){
        self.listUserModel = UserViewModel()
        self.listUserModel.bindBannerViewModelToController = {
            self.updateDataSource()
            }
    }
    
    
    func updateDataSource(){
        print(self.listUserModel.empData.count)
    }

}
