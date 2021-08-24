//
//  TearViewController.swift
//  SecondApp
//
//  Created by Admin on 2021/08/23.
//

import UIKit

class TearViewController: UIViewController {

    @IBOutlet weak var tearLabel: UILabel!
    
    var resultText:String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tearLabel.text = resultText

    }
    
    override func viewWillAppear(_ animated: Bool) {
        tearLabel.text = resultText // 전달
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
//        if let vc = segue.destination as? IndigoViewController {
//
//        } // 참일 경우 실행
        
        // 다른 방법
        guard let vc = segue.destination as? IndigoViewController else {
            return
        } // 참이 아닐 경우 실행됨.
        
        vc.tearVC = self // 첫번째 화면으로 전달
    }

}
