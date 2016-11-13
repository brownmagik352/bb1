//
//  ChatTableViewController.swift
//  bb1
//
//  Created by Apurv Suman on 11/13/16.
//  Copyright © 2016 Apurv Suman. All rights reserved.
//

import UIKit

class ChatTableViewController: UITableViewController {
    
    var chats = [Chat]()
    
    func loadSampleData() {
        
        let chat1 = Chat(title: "Data Structures", price: 22.57, course: "CPSC223", purchase_or_rent: "Purchase", condition: "Used", buy_or_sell: "Seller", photo: #imageLiteral(resourceName: "cs1"))
        let chat2 = Chat(title: "Principles of Economics", price: 34.27, course: "ECON110", purchase_or_rent: "Purchase", condition: "New", buy_or_sell: "Buyer", photo: #imageLiteral(resourceName: "econ1"))
        let chat3 = Chat(title: "Calculus", price: 10.55, course: "MATH120", purchase_or_rent: "Rent", condition: "Used", buy_or_sell: "Buyer", photo: #imageLiteral(resourceName: "calc1"))
        let chat4 = Chat(title: "Biology", price: 22.33, course: "MCDB101", purchase_or_rent: "Purchase", condition: "Used", buy_or_sell: "Buyer", photo: #imageLiteral(resourceName: "bio1"))
        let chat5 = Chat(title: "Psychology", price: 11.01, course: "PSYC101", purchase_or_rent: "Rent", condition: "Used", buy_or_sell: "Seller", photo: #imageLiteral(resourceName: "psych1"))
        let chat6 = Chat(title: "Principles of Economics", price: 55.18, course: "ECON110", purchase_or_rent: "Purchase", condition: "New", buy_or_sell: "Buyer", photo: #imageLiteral(resourceName: "econ1"))
        let chat7 = Chat(title: "Biology", price: 8.75, course: "MCDB101", purchase_or_rent: "Rent", condition: "Used", buy_or_sell: "Buyer", photo: #imageLiteral(resourceName: "bio1"))
        
        chats += [chat1, chat2, chat3, chat4, chat5, chat6, chat7]
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadSampleData()

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
        return chats.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "ChatTableViewCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! ChatTableViewCell
        
        let chat = chats[indexPath.row]
        
        cell.titleLabel.text = chat.title
        cell.photoImageView.image = chat.photo
        cell.priceLabel.text = "$\(chat.price)"
        cell.courseLabel.text = chat.course
        cell.rentLabel.text = chat.purchase_or_rent
        cell.conditionLabel.text = chat.condition
        cell.chatTypeLabel.text = "(" + chat.buy_or_sell + ")"
        
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
