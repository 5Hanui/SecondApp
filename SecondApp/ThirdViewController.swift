//
//  ThirdViewController.swift
//  SecondApp
//
//  Created by Admin on 2021/08/23.
//

import UIKit

class ThirdViewController: UIViewController {

    var thirdViewControllerData:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        thirdViewControllerData = "ThirdViewData"
    }
    
    
    @IBAction func post(_ sender: Any) {
        NotificationCenter.default.post(name: Notification.Name("ChangeBackcolor"), object: nil, userInfo: nil)
        
        self.navigationController?.popToRootViewController(animated: true) // 제일 상위 화면으로 돌아가게 해줌
        
    }
    // Local Notification: 일정 상황, 시간이 도달해서 알림을 줄 때
    // Apple push Notification: 서버에서 전달?
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
