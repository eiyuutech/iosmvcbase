//
//  BaseViewController.swift
//  iosmvcbase
//
//  Created by Hoang Eiyuu on 2018/07/29.
//  Copyright © 2018 HUNG HOANG. All rights reserved.
//

import UIKit
import JGProgressHUD
class BaseViewController: UIViewController {

    var waitView: JGProgressHUD!
    
    func showWaitView(status:String, style: JGProgressHUDStyle) -> Void {
        waitView = JGProgressHUD(style: style)
        
        let statusLength = status.count
        if(statusLength>0){
            waitView.textLabel.text = status
        }
        waitView.show(in: self.view)
    }
    
    func hideWaitView() -> Void {
        waitView.dismiss(afterDelay: 3.0)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
