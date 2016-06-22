//
//  MySchoolViewController.swift
//  youwei
//
//  Created by 邵瑞 on 16/6/21.
//  Copyright © 2016年 wondergroup. All rights reserved.
//

import UIKit

class MySchoolViewController: UIViewController {

    @IBOutlet weak var _VTop: SwiftTopBanner!

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self._VTop.btnGoback.backgroundColor = UIColor.clearColor()
        self._VTop.parentController = self.navigationController
        self._VTop.lalTitel.text = "我的校园"
        self.view.addSubview(self._VTop)


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}