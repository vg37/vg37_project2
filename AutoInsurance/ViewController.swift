//
//  ViewController.swift
//  AutoInsurance
//
//  Created by Gangisetty,Venugopal on 10/10/15.
//  Copyright © 2015 Gangisetty,Venugopal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fname: UITextField!
   
    @IBOutlet weak var lname: UITextField!
    @IBOutlet weak var Iname: UITextField!
    @IBOutlet weak var city: UITextField!
    @IBOutlet weak var dob: UITextField!
    @IBOutlet weak var state: UITextField!
    @IBOutlet weak var address: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        let path = NSBundle.mainBundle().pathForResource("DataList1", ofType: "plist")
        let myDict = NSDictionary(contentsOfFile: path!)
        
        if let dict = myDict {
          fname.text = dict["FirstName"] as? String
            lname.text = dict["LastName"] as? String
            city.text = dict["City"] as? String
            dob.text = dict["DOB"] as? String
            state.text = dict["State"] as? String
            address.text = dict["Address"] as? String

       
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

