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
    }

    @IBAction func goLoginClick(_ sender: UIButton) {
        print("直接登录")
        self.navigationController?.popViewController(animated: true)
        
    }
}
