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
        tipsLabel.text = nil
    }

    @IBAction func loginBtn(_ sender: UIButton) {
        if accountTextField.text != nil && passwordTextField.text != nil {
            print("登录成功！！")
        }else{
            print("请输入账号密码")
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "success"{
            if let succ = segue.destination as? SuccessVC {
                succ.text = "登录成功！"
            }
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "success"{
            let useName = accountTextField.text ?? ""
            if useName.isEmpty {
                tipsLabel.text = "请输入用户名"
                return false
            }
            let password = passwordTextField.text ?? ""
            if password.isEmpty{
                tipsLabel.text = "请输入密码"
                return false
            }
            tipsLabel.text = nil
        }
        return true
    }
}

