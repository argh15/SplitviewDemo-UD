//
//  DetailViewController.swift
//  SplitviewDemo
//
//  Created by Arghadeep  on 18/02/21.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var splitImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var split: SplitModel? {
        didSet {
            refreshUI()
        }
    }
    
    private func refreshUI() {
        loadViewIfNeeded()
        splitImageView.image = split?.image
    }

}

extension DetailViewController: SplitSelectionDelegate {
    
    func splitSelected(_ newSplit: SplitModel) {
        split = newSplit
    }
}
