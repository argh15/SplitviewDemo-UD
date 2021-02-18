//
//  MasterViewController.swift
//  SplitviewDemo
//
//  Created by Arghadeep  on 18/02/21.
//

import UIKit

protocol SplitSelectionDelegate: class {
  func splitSelected(_ newSplit: SplitModel)
}

class MasterViewController: UITableViewController {
    
    let splits = [
        SplitModel(split: .camera),
        SplitModel(split: .city),
        SplitModel(split: .animals),
        SplitModel(split: .flowers),
        SplitModel(split: .stands),
        SplitModel(split: .urban)
    ]
    
    weak var delegate: SplitSelectionDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return splits.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = splits[indexPath.row].name
        cell.backgroundColor = splits[indexPath.row].color
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let selectedSplit = splits[indexPath.row]
        delegate?.splitSelected(selectedSplit)
        
        if let detailVC = delegate as? DetailViewController, let detailNavVC = detailVC.navigationController {
            splitViewController?.showDetailViewController(detailNavVC, sender: nil)
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if let navBarHeight = navigationController?.navigationBar.frame.height {
            return (tableView.frame.height - navBarHeight) / CGFloat(splits.count)
        } else {
            return (tableView.frame.height - 60) / CGFloat(splits.count)
        }
       
    }

}
