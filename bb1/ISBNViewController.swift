//
//  ISBNViewController.swift
//  bb1
//
//  Created by Apurv Suman on 11/26/16.
//  Copyright © 2016 Apurv Suman. All rights reserved.
//

import UIKit

class ISBNViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let logo = #imageLiteral(resourceName: "logo_color-50")
        let imageView = UIImageView(image:logo)
        self.navigationItem.titleView = imageView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func uploadDone(sender: UIStoryboardSegue) {
        //print("HELLO")
    }

}
