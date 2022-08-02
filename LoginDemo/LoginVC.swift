//
//  LoginVC.swift
//  LoginDemo
//
//  Created by 徐小鹏 on 2022/8/1.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var tipsLabel: UILabel!
    @IBOutlet weak var accountTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginBtn(_ sender: UIButton) {
        if accountTextField.text != nil && passwordTextField.text != nil {
            print("登录成功！！")
        }else{
            print("请输入账号密码")
        }
        
        
    }
    
}

