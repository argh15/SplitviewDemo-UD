//
//  CustomCell.swift
//  SplitviewDemo
//
//  Created by Arghadeep  on 16/02/21.
//

import UIKit

class CustomCell: UITableViewCell {
    
    @IBOutlet weak var cellTitle: UILabel!
    
    static var identifier: String {
        return String(describing: self)
    }
    
    static var nib:UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
}
