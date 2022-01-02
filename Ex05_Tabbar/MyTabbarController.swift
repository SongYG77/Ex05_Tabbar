//
//  MyTabbarController.swift
//  Ex05_Tabbar
//
//  Created by 송윤근 on 2022/01/02.
//

//탭바 컨트롤러를 설정하기 위해서 기본 제공 서브클래스인
//uitabbercontroller을 상속 받음.


import UIKit

class MyTabbarController: UITabBarController, UITabBarControllerDelegate {
    
    //UITabBarControllerDelegate는 이벤트가 발생시 저길로 던져준다.
    //예를 들어 클릭하여 화면전환하는 이벤트.
    
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate

    override func viewDidLoad() {
        super.viewDidLoad()

        appDelegate.myTabbar = self
        self.delegate = self
        //제어에 대한 것을 자신이 받겟다고 선언.
        
        
    }
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("selected tabbar index : \(tabBarController.selectedIndex)")
        
        if tabBarController.selectedIndex == 0 ||
            tabBarController.selectedIndex == 1 {
            appDelegate.fourthVC?.navigationController?.popToRootViewController(animated: true)
        }
    }

    
}
