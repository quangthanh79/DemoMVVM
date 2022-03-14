//
//  MyTableViewCell.swift
//  MVVM
//
//  Created by Tuấn Phạm on 14/03/2022.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    static let identifier = "MyTableViewCell"
    
    @IBOutlet var myImageview: UIImageView!
    @IBOutlet var myname : UILabel!
    
    
    static func nib()-> UINib{
        return UINib(nibName: "MyTableViewCell", bundle: nil)
    }
    public func configure(with title: String, imageName: String){
        myname.text = title
        myImageview.image = UIImage(systemName: imageName)
        myImageview.contentMode = .scaleAspectFit
    }
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
