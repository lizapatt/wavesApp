//
//  reflectionViewController.swift
//  wavesApp
//
//  Created by Liza Patt on 30/6/22.
//

import UIKit

class reflectionViewController: UIViewController {
    
    var previousVC = reflectionTableViewViewController()

    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var bodyField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addTapped(_ sender: Any) {
        
        let entry = entry()
        if let titleText = titleField.text {
            entry.title = titleText
        }
        if let bodyText = bodyField.text {
            entry.body = bodyText
        }
        previousVC.entries.append(entry)
        previousVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
