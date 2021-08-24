//
//  SecondViewController.swift
//  SecondApp
//
//  Created by Admin on 2021/08/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var myLabel: UILabel!
    var data:String?

    override func viewDidLoad() {
        super.viewDidLoad()
        myLabel.text = data
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
