//
//  IndigoViewController.swift
//  SecondApp
//
//  Created by Admin on 2021/08/23.
//

import UIKit

class IndigoViewController: UIViewController {
    
    var tearVC:TearViewController?
    
    @IBOutlet weak var indigoTextField: UITextField!
    
    @IBAction func confirm(_ sender: Any) {
        tearVC?.resultText = indigoTextField.text
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 옵저버 등록
        NotificationCenter.default.addObserver(self, selector: #selector(changeBackcolor(_:)), name: Notification.Name("ChangeBackcolor"), object: nil)

    }
    
    @objc func changeBackcolor(_ notification:Notification) {
        self.view.backgroundColor = UIColor.red
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
