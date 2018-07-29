//
//  ViewController.swift
//  iosmvcbase
//
//  Created by HUNG HOANG on 2018/07/10.
//  Copyright © 2018 HUNG HOANG. All rights reserved.
//

import UIKit
//import JGProgressHUD
class ViewController: BaseViewController {

    @IBOutlet weak var labelName: UILabel!
    
    //var hud: JGProgressHUD!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.testEnv()
//        super.showWaitView(status: "", style: .dark)
        super.showWaitView(status: "Loading", style: .dark)
        super.hideWaitView()
    }

    func testEnv() -> Void {
//        #if DEVELOP
//            self.labelName.text = "hello em"
//        #elseif STAGING
//            self.labelName.text = "hello co"
//        #else
//            self.labelName.text = "hello ku"
//        #endif
        let hoge = Bundle.main.object(forInfoDictionaryKey: "keiyuuhero") as! String
        self.labelName.text = hoge
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

