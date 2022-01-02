//
//  FourthViewController.swift
//  Ex05_Tabbar
//
//  Created by 송윤근 on 2022/01/02.
//
// 네번째 화면을 틀어놓은 후 탭바를 통하 다른 화면갔다 3번째 화면 오면
// 네번째 화면이 나오게 된다. 이를 세번째 화면이 나오게 하기 위해서.
// 설정을 해줄 예정.


import UIKit

class FourthViewController: UIViewController {
    
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate

    override func viewDidLoad() {
        super.viewDidLoad()

        appDelegate.fourthVC = self
        
    }
    

  

}
