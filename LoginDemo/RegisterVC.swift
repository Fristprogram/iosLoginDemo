//
//  RegisterViewController.swift
//  LoginDemo
//
//  Created by 徐小鹏 on 2022/8/1.
//

import UIKit

class RegisterVC: UIViewController {

    @IBOutlet weak var registerLabel: UILabel!
    @IBOutlet weak var registerTF: UITextField!

    @IBOutlet weak var registerPasswordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerLabel.text = ""
    }

    @IBAction func goLoginClick(_ sender: UIButton) {
        print("直接登录")
        self.navigationController?.popViewController(animated: true)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "success", let destination = segue.destination as? SuccessVC
        else{ return }
        
        destination.text = "注册成功！"
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard identifier == "success" else{
            return true
        }
        
        let useName = registerTF.text ?? ""
        if useName.isEmpty {
            registerLabel.text = "请输入用户名"
            return false
        }
        let password = registerPasswordTF.text ?? ""
        if password.isEmpty{
            registerLabel.text = "请输入密码"
            return false
        }
        registerLabel.text = nil
        return true
    }
}
