//
//  ViewController.swift
//  SwiftDemo
//
//  Created by guodong on 2018/10/9.
//  Copyright © 2018年 maizi. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource {
    
    var myTableView :UITableView!
    
    var cellarray : NSMutableArray?
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print (self.cellarray!.count)
        return self.cellarray!.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40.0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = myTableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath) as! UITableViewCell
        let cell = UITableViewCell()
        let text = self.cellarray![indexPath.row]
        print(text)
        
        cell.textLabel?.text = text as? String
        
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.cellarray = ["wangguodong" , "天空白" ,"haha"]
        
        // Do any additional setup after loading the view, typically from a nib.
        
//        self.myTableView = UITableView(frame:CGRectFromString("{{0,0}},{{320,400}}"), style: UITableViewStyle.plain)
        
        // 需设置 frame 大小，才会调用 cellForRowAt  委托方法
//        self.myTableView = UITableView(frame:CGRect(x:0,y:0 ,width:320 ,height:400), style: UITableViewStyle.plain)
        
        self.myTableView = UITableView(frame:CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height), style: UITableViewStyle.plain)
        
        
        
        self.myTableView.backgroundColor? = UIColor.red
        
        self.myTableView.dataSource = self;
        
        self.myTableView.delegate = self;
        
        self.view.addSubview(self.myTableView!)
        
        
        self.view.backgroundColor! = UIColor.green
        
        
//        self.caculateTest()
        
        var str :String
        str = "abc" + "def"
        print(str)
        
    }
    
     func caculateTest(){
        var num : Int = 0;
        print("start")
        var now = Date()
        let startTime:TimeInterval = now.timeIntervalSince1970
        
        for index in 1...1000000000{
            num = num + index
        }
        
        now = Date()
        let endTime:TimeInterval = now.timeIntervalSince1970
        print("\(endTime - startTime)")
        print("end")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

