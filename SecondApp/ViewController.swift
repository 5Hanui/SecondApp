//
//  ViewController.swift
//  SecondApp
//
//  Created by Admin on 2021/08/23.
//

import UIKit

class ViewController: UIViewController, LoginResultProtocol {  //
    
    @IBOutlet weak var firstLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? SecondViewController{
            // ?붙이면 변환 실패시 nil할당됨, vc도 optional임, 옵셔널은 unwrapping하는 과정이 필요.
            vc.data = "Hello"
        }
    }
    
    //
    @IBAction func unwindToViewController(_ unwindSegue: UIStoryboardSegue) {
        if let sourceViewController = unwindSegue.source as? ThirdViewController {
            // Use data from the view controller which initiated the unwind segue
            firstLabel.text = sourceViewController.thirdViewControllerData
            
        }
        
    }
    
    func setId(id:String) {
        self.firstLabel.text = id
    }
    
    @IBAction func openLogin(_ sender: Any) {
//        if let loginVC1 =
//            self.storyboard?.instantiateViewController(identifier: "login") {
//            // 속성창에서 스토리보드id 지정해야됨.
//            // loginVC1 if let 문은 내부에서 작성
//            loginVC1
//        }
        guard let loginVC2 =
                self.storyboard?
                .instantiateViewController(identifier: "login") as? LoginViewController else {
            return
        }
        
        loginVC2.resultViewController = self
        self.present(loginVC2, animated: true, completion: nil) // 코드로 화면 띄우기 방법1 - 모달
//        self.navigationController?.pushViewController(loginVC2, animated: true) // 코드로 화면 띄우기 방법2 - push
    
        
    }

}

