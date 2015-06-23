//
//  ViewController.swift
//  swift_pjt
//
//  Created by 佐藤宗一郎 on 2015/06/17.
//  Copyright (c) 2015年 佐藤宗一郎. All rights reserved.
//

import UIKit

class ListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var addBtn: UIBarButtonItem!
    var tableView : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Viewの高さと幅を取得する.
        let displayWidth: CGFloat = self.view.frame.width
        let displayHeight: CGFloat = self.view.frame.height
        
        tableView = UITableView(frame: CGRect(x: 0, y: 0, width: displayWidth, height: displayHeight))
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.rowHeight = 80.0
        
        // tabeleViewに追加する.
        self.view.addSubview(tableView)
        
        self.title = "Home"
        
        // addBtnを設置
        addBtn = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: "onClick")
        self.navigationItem.rightBarButtonItem = addBtn
        
        let url = "http://www.example.com/api"
        
        let manager: AFHTTPRequestOperationManager = AFHTTPRequestOperationManager()
        let params = ["start": 0, "count": 10]
        
        manager.GET(url, parameters: params, success: {
            (operation: AFHTTPRequestOperation!, responseObject: AnyObject!) in
            // レスポンスを処理
            }, failure: {
                (operation: AFHTTPRequestOperation!, error: NSError!) in
                // エラー処理
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // addBtnをタップしたときのアクション
    func onClick() {
        //let second = SecondViewController()
        //self.navigationController?.pushViewController(second, animated: true)
    }
    
    
    // セクション数
    func numberOfSectionsInTableView(tableView: UITableView!) -> Int {
        return 1
    }
    
    // セクションの行数
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1//productList.count
    }
    
    // セル表示
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath:NSIndexPath!) -> UITableViewCell! {
        //cell deque
        //let cell: CTViewCell = self.tableView.dequeueReusableCellWithIdentifier("customCell") as CTViewCell
        //cell中身セット（引数　セル、indexPath）
        //cell.configureCell(productList[indexPath.row], atIndexPath : indexPath)
        
        return UITableViewCell()
    }
}

