//
//  RootViewController.swift
//  youwei
//
//  Created by 邵瑞 on 16/3/18.
//  Copyright © 2016年 wondergroup. All rights reserved.
//


import UIKit
import JavaScriptCore

class RootViewController: UIViewController,UITableViewDataSource,UITableViewDelegate
{
 
    /***声明2 section ***/
    var sectionCount:NSInteger!
     /**声明代理 值传递**/ 
    var paramsProtocolDelegate: ParamsProtocol?
/***tableView数据源***/
    var arrData:NSArray!
/***获取网络解析的数据***/
    var  arrMutableData:NSMutableArray!
    
    var jsonDic:NSDictionary!
     /**单列初始化**/

    @IBOutlet weak var _VTop: SwiftTopBanner!

    @IBAction func btnToPush(sender: AnyObject) {
   
        openLeft()

    }
/***声明控件属性UITableView***/
    @IBOutlet weak var tabView: UITableView!
    
    @IBAction func delegateAction(sender: AnyObject) {
        var tow_vc:SwiftDelegateViewController!
        tow_vc =  SwiftDelegateViewController(nibName: "SwiftDelegateViewController" as String, bundle: nil)

        self.navigationController?.pushViewController(tow_vc, animated: false)

        
    }
    
    //TODO: 声明一个输出口
    @IBOutlet weak var modePop: UIButton!
    //MARK: 进入下一个界面
    
    @IBAction func modelPop(sender: AnyObject) {
        
//        var arr = ["1067349543@qq.com","13983441921@139.com"] as Array
//        var isNO:Bool!
//        isNO =  SwiftSingle.sharedInstance.messageSend(arr, messageContent: "nihao 你好！", ViewController: self)
//        print("\(isNO )")
        
        var tow_vc:NextViewController!
        tow_vc =  NextViewController(nibName: "NextViewController" as String, bundle: nil)


        self.navigationController?.presentViewController(tow_vc, animated: false, completion: nil)
/**拨打电话**/
//        SwiftSingle.sharedInstance.messageSend()
//        SwiftSingle.sharedInstance.callPhoneNumberAction("13983441921")

    }
    
    @IBAction func btnRightPushAction(sender: AnyObject) {
        
        //        let  right
        var tow_vc = RightViewController();
        tow_vc =  RightViewController(nibName: "RightViewController" as String, bundle: nil)

        self.navigationController?.pushViewController(tow_vc, animated: true)
//        self.presentViewController(tow_vc, animated: true, completion: nil)
        
        

    }
    //MARK:viewDidLoad
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
      
        sectionCount = 2

        initTableView()
        
        
        
//        
//        var path=NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true)[0] as NSString
//        var filePath=path.stringByAppendingPathComponent("data.archive")
//        //归档
//        var data=NSMutableData()
//        var archiver=NSKeyedArchiver(forWritingWithMutableData: data)
//        archiver.encodeObject(["Bill Gates","Steve Jobs"], forKey: "data");
//        archiver.encodeInt(32, forKey: "age");
//        archiver.encodeObject("test message", forKey: "tip");
//        archiver.finishEncoding()
//        data.writeToFile(filePath, atomically: true)
//        //反归档
//        var unarchiveData=NSData(contentsOfFile: filePath)
//        var unarchiver=NSKeyedUnarchiver(forReadingWithData: unarchiveData!)
//        var decodeData=unarchiver.decodeObjectForKey("data") as! NSArray
//        var decodeAge=unarchiver.decodeIntForKey("age")
//        var decodeTip=unarchiver.decodeObjectForKey("tip") as! NSString
//        NSLog("data=%@,age=%i,tip=%@",decodeData,decodeAge,decodeTip)
        
        

        
        
        var isNOSTU:Bool!
        
//        var sss = SwiftStudent()
//        var student = SwiftStudent()
//            student.textName = "sshhdhs"
//        student.textPhone = "1398383"
//        student.age = 108

        let student = SwiftStudent(name: "邵瑞", phone: "ssss", age: 33)

        
       isNOSTU = SwiftStringA.sharedInstance.saveWithNSKeyedArchiver(student, filePath:"student.archive")
        print("是否储存成功\(isNOSTU)")
//        var stuModle:SwiftStudent!
    
      
       let  sTTudent = SwiftStringA.sharedInstance.readWithNSKeyedUnarchiver("student.archive", documentsPath: SwiftStringA.sharedInstance.swStringDocumentsPath()) as! SwiftStudent
        
        
        print("textName \(sTTudent.textName)")
        print("textPhone \(sTTudent.textPhone)")
        
        
        
        var isremove:Bool!

//            isremove = SwiftStringA.sharedInstance.deletFileFromDoc("student.archive")
        
        print("是否已出\(isremove)")
        
        var strEmpty:NSString!

        strEmpty = "ee"

        var isNO:Bool!
        
//        var text:NSString = NSString(CString:strEmpty .cStringUsingEncoding(NSUTF8StringEncoding),
//            encoding: NSUTF8StringEncoding)
        isNO = SwiftStringA.sharedInstance.isEmptyString(strEmpty as String)
        
        
        
        print("是否为空\(isNO)")
        
        
        isNO = SwiftStringA.sharedInstance.isStringAEqualStringB(NSString(string: "ABC"), stringB: NSString(string: "ABC"))
        
        var strSub:NSString!
        
        strSub = SwiftStringA.sharedInstance.subFromToIndex(3, objcString: "ABCDFRRw" )

        print("截取之后的字符串 \(strSub)")


        strSub = SwiftStringA.sharedInstance.subStringFromZeroToIndex(5, objcString: "ABCDFRRw" )
        
        print("截取之后的字符串 \(strSub)")

        strSub = SwiftStringA.sharedInstance.subsStringFromWithRange(2, indexB: 6, objcString: "ssqwioiow")
        
        print("截取之2-6 后的字符串 \(strSub)")

        
        strSub = SwiftStringA.sharedInstance.swStringByReplacingOccurrencesOfString("?", stringB: "+", objString: "http://www.comcom.com?type=22&userme=ooo")
        
        print("替换之 后的字符串 \(strSub)")
        strSub = SwiftStringA.sharedInstance.swStringFilterReplacingOccurrencesOfString("?", objString: "http://www.comcom.com?type=22&userme=ooo")
        
        print("过滤之 后的字符串 \(strSub)")


        
        strSub = SwiftStringA.sharedInstance.swStringFilterWhitespaceCharacterOccurrencesOfString(" http:www.com  ")
        
        print("过滤开始 结尾的空白之 后的字符串 \(strSub)")
        
        var arry:NSArray!
        
        arry = SwiftStringA.sharedInstance.swStringSplitCharacterOccurrencesOfString(",", objString: "A,a,B,b,C,cCC,HHH,LL")
        
        print("打印分割之后的字符串 数组个数 \(arry.count)\n")
        print("打印分割之后的字符串  \(arry)")


        print("是否为空\(isNO)")


        print("打印常量字符串\n\(SwiftStringA.sharedInstance.constString)")
        
        
        
        
        
            isNO = SwiftStringA.sharedInstance.saveWithNSUserDefaults("你好", key: "key")
        
        print("\(isNO)")
        
        
        
        var returnString:String
        returnString = SwiftStringA.sharedInstance.readWithNSUserDefaults("key")
        
        print("字符串是 \n \(returnString)")
        
        
        
        returnString = SwiftStringA.sharedInstance.swStringDocumentsPath() as String
        
        
        print("swStringDocumentsPath是 \n \(returnString)")

        returnString = SwiftStringA.sharedInstance.getFilePath("Info", type: "plist")
    
        print("getFilePath plits是 \n \(returnString)")
        
        var arrContent:NSDictionary!
        
        arrContent = NSDictionary(contentsOfFile: returnString)

        var arrayContent:NSArray!

        returnString = SwiftStringA.sharedInstance.getFilePath("areaData", type: "plist")
        
        print("getFilePath plits是 \n \(returnString)")

        arrayContent = NSArray(contentsOfFile: returnString)

        

        
        
        
        var isBool = SwiftStringA.sharedInstance
        
        self._VTop.btnGoback.hidden = true
        self._VTop.lalTitel.text = NSString(string: "有位") as String
        
        
        self.jsonDic = ["key":"sss"]
        print("is json dic \(self.jsonDic)")
        print("is json dic  objectForKey \(self.jsonDic.objectForKey("key"))")

        
        
        var things = "cars"
        let  clouser =
        {
            [things] in
            
        print("i love \(things)")

        }
        things = "ssss"
        clouser()
        
        
        requestUrl("https://www.baidu.com")

        // Do any additional setup after loading the view.
    }
    
//    MARK: swift 网络请求
     func requestUrl(urlString:String)
    {
    
        var url:NSURL!
        
        url = NSURL(string: urlString)! as NSURL
        
        NSLog("打印urlstrinh==%@", "\(url)")
        
        let request:NSURLRequest = NSURLRequest(URL: url)
 
        
        NSURLConnection.sendAsynchronousRequest(request, queue: NSOperationQueue.mainQueue()) { (response, data, error) -> Void in
            
                  }
        
    }
    
    
//    FIXME:代理
    func delegateStart()
    {
        
        var temp:String!
            temp = "代理传入一个字符串"
        var tempArray:NSArray!
        tempArray = ["A","B","C"]
        
      self.paramsProtocolDelegate?.returnParams(temp)
      self.paramsProtocolDelegate?.returmParameArray(tempArray)

        
    }
    
    /***初始化 UITableView***/
    func initTableView()
    {
        
        
        
        var nibCell:NSString!
        nibCell = "RootCell"
        
        var nibTabCell:UINib!
        
        nibTabCell  = UINib(nibName: nibCell as String, bundle: nil)
        
        self.tabView.registerNib(nibTabCell, forCellReuseIdentifier: nibCell as String)
        
        var nibCellTwo:NSString!
        nibCellTwo = "RootCellTwo"
        
        var nibTabCellTwo:UINib!
        
        nibTabCellTwo  = UINib(nibName: nibCellTwo as String, bundle: nil)
        
        self.tabView.registerNib(nibTabCellTwo, forCellReuseIdentifier: nibCellTwo as String)
        
        
        
//        self.tabView.registerNib(UINib(nibName: "RootCellTwo", bundle: nil), forCellReuseIdentifier: "RootCellTwo")
//
//        self.tabView.registerNib(UINib(nibName: "RootCell", bundle: nil), forCellReuseIdentifier: "RootCell")
        self.tabView.separatorStyle = UITableViewCellSeparatorStyle.None
        self.tabView.dataSource = self

        self.tabView.delegate = self

//        设置tableView头部视图
            let tabHead = HeaderTabView()
//        设置Frame
            tabHead.frame = tabHead.loadNibFrame().frame;
            tabHead.conteroller = self
            self.tabView.tableHeaderView = tabHead
        
    }
 
    
//    func showPopUp()
//    {
//        let storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
//        if let loginVC = storyboard.instantiateViewControllerWithIdentifier(
//            "LoginViewController") as? LoginViewController {
//                loginVC.delegate = self
//                self.presentViewController(loginVC, animated: true, completion: nil)
//        }
//    }
    

    
    //TODO:实现UITableViewDataSource
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2;
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(section==0)
        {
            return 1
        }
        else if (section==1)
        {
            return sectionCount
        }
        else
        {
        return 0
        }

}
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell:UITableViewCell!
        
        
        if indexPath.section==0
        {
            cell = tableView.dequeueReusableCellWithIdentifier("RootCell")
            
            if(cell == nil){
                cell = UITableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier:"RootCell");
            }

//            return cell!
        }
        else if indexPath.section==1
            
        {
            
             cell = tableView.dequeueReusableCellWithIdentifier("RootCellTwo")
            
        if (cell==nil)
            {
                cell = UITableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier: "RootCellTwo")
            }
//            return cell!
            
        }
            return cell!

        
        

    
    }
    
    
    func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        var  indexsection:NSInteger!
            indexsection = indexPath.section
        var indexHeight:CGFloat!
        indexHeight = 0.0
        
        if indexsection == 0
        {
         indexHeight = 160.00
            return indexHeight
        }
        else if indexsection == 1
        {
            indexHeight = 60.00

            return indexHeight
        }
        else
        {
            return indexHeight
        }
//        switch indexsection
//        {
//        case 0:
//            
//            break;
//        case 1:
//            break
//        default
//            break;
//            
//        }
        
        
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
