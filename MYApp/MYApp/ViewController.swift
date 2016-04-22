//
//  ViewController.swift
//  MYApp
//
//  Created by Mac on 16/4/22.
//  Copyright © 2016年 张喜波. All rights reserved.
//

import UIKit
class ViewController: UIViewController,UITableViewDataSource {
    var submitButton : UIButton!
    var nameLabel : UILabel!
    var passwordLabel : UILabel!
    var userText : UITextField!
    var passwordText : UITextField!
    var loginDateText : UITextField!
    var loginDatePicker:UIDatePicker!
    var backImage:UIImageView!
    var tableView:UITableView!
    var items :NSMutableArray?
    override func viewDidLoad() {
        print("load Controller")
        super.viewDidLoad()
        
        nameLabel=UILabel()
        nameLabel.frame=CGRectMake(0, 20, 100, 30)
        nameLabel.text="用户名"
        nameLabel.textAlignment=NSTextAlignment.Center
        nameLabel.textColor=UIColor.greenColor()
        
        userText=UITextField()
        userText.frame=CGRectMake(110, 20, 100, 30)
        userText.text="用户名"
        userText.textAlignment=NSTextAlignment.Center
        userText.textColor=UIColor.grayColor()
        userText.borderStyle=UITextBorderStyle.Bezel
        
        passwordLabel=UILabel()
        passwordLabel.frame=CGRectMake(0, 60, 100, 30)
        passwordLabel.text="密码"
        passwordLabel.textAlignment=NSTextAlignment.Center
        passwordLabel.textColor=UIColor.greenColor()
        
        
        passwordText=UITextField()
        passwordText.frame=CGRectMake(110, 60, 100, 30)
        passwordText.text="密码"
        passwordText.textAlignment=NSTextAlignment.Center
        passwordText.textColor=UIColor.grayColor()
        passwordText.secureTextEntry=true//密码
        passwordText.borderStyle=UITextBorderStyle.Line//边框
        
        loginDatePicker=UIDatePicker()
        
        loginDatePicker.datePickerMode=UIDatePickerMode.Date
        loginDatePicker.locale = NSLocale(localeIdentifier: "zh_CN")
        
        
        loginDateText=UITextField()
        loginDateText.frame=CGRectMake(0, 100, 100, 30)
        loginDateText.text=loginDatePicker.date.description
        loginDateText.textAlignment=NSTextAlignment.Center
        
        
        
        
        loginDateText.inputView=loginDatePicker
        
        backImage=UIImageView(frame:self.view.bounds)
        backImage.image=UIImage(named:"mainBack")
        
        //button define
        submitButton=UIButton() //实例化
        submitButton.frame=CGRectMake(0,140,200,30)//大小、位置
        submitButton.backgroundColor=UIColor.redColor()//背景色
        submitButton.setTitle("登录",forState:UIControlState.Normal)//文本
        submitButton.addTarget(self,action:"submitInfo:",forControlEvents:UIControlEvents.TouchUpInside)//事件
        
        
        
        tableView=UITableView()
        tableView.frame=CGRectMake(0, 200, 400, 400)
        tableView.dataSource=self
        
        self.items = NSMutableArray()
        self.items?.addObject("abc")
        self.items?.addObject("hhh")
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.view.addSubview(backImage)
        self.view.addSubview(loginDateText)
        self.view.addSubview(passwordLabel)
        self.view.addSubview(passwordText)
        self.view.addSubview(userText)
        self.view.addSubview(nameLabel)
        self.view.addSubview(submitButton)
        
       
        self.view.addSubview(tableView);
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func submitInfo(button: UIView) {
        let alert = UIAlertView()
        alert.title = "计时完成！"
               alert.addButtonWithTitle("OK")
        alert.show()
    }
    func tableView(tableView: UITableView!, titleForFooterInSection section: Int) -> String! {
        return "foot"
    }
    func tableView(tableView: UITableView!, titleForHeaderInSection section: Int) -> String! {
        return "header"
    }
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        let cell = tableView .dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        
        
        return cell
    }
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int
    {
        return self.items!.count
    }
}