//
//  LoginViewController.swift
//  SecondApp
//
//  Created by Admin on 2021/08/23.
//

import UIKit

protocol LoginResultProtocol {
    func setId(id:String)
}

class LoginViewController: UIViewController {

    
    @IBOutlet weak var idField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    // 로그인 화면을 오픈한 viewController 인스턴스를 할당하는 변수
    var resultViewController:LoginResultProtocol?
    
    @IBAction func cancel(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func pushLogin(_ sender: Any) {
//        var id = idField.text
//        var password = passwordField.text
        
        guard let idValue = idField.text,
              let pwValue = passwordField.text else {
            return
        }
        
        self.resultViewController?.setId(id: idValue)
    
        
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
