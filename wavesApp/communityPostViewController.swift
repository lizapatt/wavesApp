//
//  communityPostViewController.swift
//  wavesApp
//
//  Created by Liza Patt on 1/7/22.
//

import UIKit

class communityPostViewController: UIViewController {

    
    var previousVC = communityTableViewViewController()
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var bodyLabel: UILabel!
    @IBOutlet weak var bodyField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addTapped(_ sender: UIBarButtonItem) {
        
        let post = post()
        
        if let titleText = titleField.text {
            post.title = titleText
        }
        if let bodyText = bodyField.text {
            post.body = bodyText
        }
        previousVC.posts.append(post)
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
