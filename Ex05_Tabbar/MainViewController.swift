//
//  ViewController.swift
//  Ex05_Tabbar
//
//  Created by 송윤근 on 2022/01/02.
//

import UIKit

class MainViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let index = self.tabBarController?.selectedIndex{
        print("현재 탭바",index)
        }
    }
    override func viewDidAppear(_ animated: Bool) {
        if let index = self.tabBarController?.selectedIndex{
        print("현재 탭바",index)
        }
        //didload와 did appear값이 다른 경우는 이제 뷰가 정렬되는 시간이 들어서
        // 생명주기로 따지면 appear이 더 뒤다.
    }

    @IBAction func onbtdSecond(_ sender: UIButton) {
        
        self.tabBarController?.selectedIndex = 1
    }
    
}

