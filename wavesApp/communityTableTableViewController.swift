//
//  reflectionTableViewController.swift
//  wavesApp
//
//  Created by Liza Patt on 30/6/22.
//

import UIKit

class communityTableViewViewController: UITableViewController {

    
    var posts : [post] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        posts = createPosts()
        
    }
    // function returns array of entry class objects
    func createPosts() -> [post]{
        let dayOne = post()
        dayOne.title = "Day ONE"
        dayOne.body = "I worked really hard today."
        
        let dayTwo = post()
        dayTwo.title = "Day Two"
        dayTwo.body = "I worked really hard today."
        
        return [dayOne, dayTwo]
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        let post = posts[indexPath.row]
        
        // Configure the cell...
        cell.textLabel?.text =  post.title
        
        return cell
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         if let addVC = segue.destination as? communityPostViewController {
             addVC.previousVC = self
           }
         
      
           
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
     }

}
