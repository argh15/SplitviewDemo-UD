//
//  MasterViewController.swift
//  SplitviewDemo
//
//  Created by Arghadeep  on 16/02/21.
//

import UIKit

class MasterViewController: UITableViewController {

    @IBOutlet weak var cellTitleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(CustomCell.nib, forCellReuseIdentifier: CustomCell.identifier)
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imagesArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomCell.identifier) as! CustomCell
        cell.cellTitle.text = namesArray[indexPath.row]
        cell.cellTitle.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        cell.backgroundColor = colorsArray[indexPath.row]
        return cell
    }

}
