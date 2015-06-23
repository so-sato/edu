//
//  MainViewController.swift
//  swift_pjt
//
//  Created by 佐藤宗一郎 on 2015/06/17.
//  Copyright (c) 2015年 佐藤宗一郎. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {
    
    var listView : ListViewController!
    var favoriteView: FavoriteViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Status Barの高さを取得する.
        let barHeight: CGFloat = UIApplication.sharedApplication().statusBarFrame.size.height
        
        listView = ListViewController()
        favoriteView = FavoriteViewController()
       // self.tabBar.items?.append(newElement: UITabBarItem)
       // tabBarItem0:UITabBarItem = self.tabBar.items(objectAtIndex:0)
        listView.tabBarItem = UITabBarItem(title: "記事", image: UIImage(named: "ic_home_on.png"), selectedImage: UIImage(named: "ic_home_off.png"))
        favoriteView.tabBarItem = UITabBarItem(title: "お気に入り", image: UIImage(named: "ic_favorite_on.png"), selectedImage: UIImage(named: "ic_favorite_off.png"))
        
        var ListNavigationController = UINavigationController(rootViewController: listView)
        var favoriteNavigationController = UINavigationController(rootViewController: favoriteView)
        self.setViewControllers([ListNavigationController, favoriteNavigationController], animated: false)

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}