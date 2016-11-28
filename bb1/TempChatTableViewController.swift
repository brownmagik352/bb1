//
//  TempChatTableViewController.swift
//  bb1
//
//  Created by Apurv Suman on 11/27/16.
//  Copyright © 2016 Apurv Suman. All rights reserved.
//

import UIKit

class TempChatTableViewController: UITableViewController {
    
    
    var tempChats = [TempChat]()
    
    func loadSampleData() {
        let tempChat1 = TempChat(photo: #imageLiteral(resourceName: "apurv_circle"), message: "Hey I'd like to buy your biology textbook.")
        let tempChat2 = TempChat(photo: #imageLiteral(resourceName: "apurv_circle"), message: "What's the condition of the book?")
        let tempChat3 = TempChat(photo: #imageLiteral(resourceName: "timur_circle"), message: "Pretty solid!")
        let tempChat4 = TempChat(photo: #imageLiteral(resourceName: "apurv_circle"), message: "Cool, how does $20 sound for it?")
        let tempChat5 = TempChat(photo: #imageLiteral(resourceName: "timur_circle"), message: "I'd rather do $25.")
        let tempChat6 = TempChat(photo: #imageLiteral(resourceName: "apurv_circle"), message: "Deal! I have that class tomorrow, can we meet soon?")
        let tempChat7 = TempChat(photo: #imageLiteral(resourceName: "timur_circle"), message: "Sure, let's meet at the coffee shop at 5pm.")
        let tempChat8 = TempChat(photo: #imageLiteral(resourceName: "timur_circle"), message: "I only used it before the final lol.")
        
        tempChats += [tempChat1, tempChat2, tempChat3, tempChat8, tempChat4, tempChat5, tempChat6, tempChat7]
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Load sample data
        loadSampleData()
        
        // remove bars between table cells
        self.tableView.separatorStyle = .none
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return tempChats.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "TempChatTableViewCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! TempChatTableViewCell
        
        let tempChat = tempChats[indexPath.row]
        
        cell.circlePhoto.image = tempChat.photo
        cell.message.text = tempChat.message
        
        // customize message look
//        cell.message.layer.masksToBounds = true
//        cell.message.layer.cornerRadius = 5
        cell.message.sizeToFit()
        if tempChat.photo == #imageLiteral(resourceName: "apurv_circle") {
            // #8d7dd4 (light purple) in UIColor
            cell.backgroundColor = UIColor(red: 0.55, green: 0.49, blue: 0.83, alpha: 0.5)
            cell.message.backgroundColor = nil
            
        }
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

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


    // MARK: - Navigation
    

    
    @IBAction func Back(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    
    @IBAction func bookSold(_ sender: UIBarButtonItem) {
        let alertController = UIAlertController(title: "SOLD!", message: "", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)

    }
    


}
