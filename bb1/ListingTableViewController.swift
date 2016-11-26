//
//  ListingTableViewController.swift
//  bb1
//
//  Created by Apurv Suman on 11/13/16.
//  Copyright © 2016 Apurv Suman. All rights reserved.
//

import UIKit

class ListingTableViewController: UITableViewController {
    
    var listings = [Listing]()
    
    func loadSampleData() {
        
        let listing1 = Listing(title: "Calculus", price: 25.99, course: "MATH120", purchase_or_rent: "Buy", condition: "Used",photo: #imageLiteral(resourceName: "calc1"))
        let listing2 = Listing(title: "Calculus", price: 12.89, course: "MATH120", purchase_or_rent: "Buy", condition: "Used", photo: #imageLiteral(resourceName: "calc1"))
        let listing3 = Listing(title: "Calculus", price: 32.15, course: "MATH120", purchase_or_rent: "Rent", condition: "New", photo: #imageLiteral(resourceName: "calc1"))
        let listing4 = Listing(title: "Calculus", price: 28.99, course: "MATH120", purchase_or_rent: "Buy", condition: "Used", photo: #imageLiteral(resourceName: "calc1"))
        let listing5 = Listing(title: "Calculus", price: 22.01, course: "MATH120", purchase_or_rent: "Rent", condition: "Used", photo: #imageLiteral(resourceName: "calc1"))
        let listing6 = Listing(title: "Calculus", price: 12.37, course: "MATH120", purchase_or_rent: "Buy", condition: "New", photo: #imageLiteral(resourceName: "calc1"))
        let listing7 = Listing(title: "Calculus", price: 18.37, course: "MATH120", purchase_or_rent: "Buy", condition: "Used", photo: #imageLiteral(resourceName: "calc1"))
        
        listings += [listing1, listing2, listing3, listing4, listing5, listing6, listing7]
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Load sample data
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
        return listings.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "ListingTableViewCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! ListingTableViewCell
        
        let listing = listings[indexPath.row]
        
        cell.titleLabel.text = listing.title
        cell.photoImageView.image = listing.photo
        cell.priceLabel.text = "$\(listing.price)"
        cell.courseLabel.text = listing.course
        cell.rentLabel.text = listing.purchase_or_rent
        cell.conditionLabel.text = listing.condition

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
