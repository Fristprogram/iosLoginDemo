//
//  SuccessVC.swift
//  LoginDemo
//
//  Created by 徐小鹏 on 2022/8/1.
//

import UIKit

class SuccessVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func clickExitBtn(_ sender: UIButton) {
        dismiss(animated: true,completion: nil)
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
