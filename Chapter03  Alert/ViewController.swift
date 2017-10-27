//
//  ViewController.swift
//  Chapter03  Alert
//
//  Created by Ju young Jung on 2017. 10. 25..
//  Copyright © 2017년 solbat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaultAlertBtn = UIButton(type: .system)
        
        defaultAlertBtn.frame = CGRect(x: 0, y: 100, width: 100, height: 30)
        defaultAlertBtn.center.x = self.view.frame.width / 2
        defaultAlertBtn.setTitle("기본 알림창", for: .normal)
        defaultAlertBtn.addTarget(self, action: #selector(defaultAlert(_:)) , for: .touchUpInside)
        
        self.view.addSubview(defaultAlertBtn)
        
        
        
    }
    
    @objc func defaultAlert(_ sender: Any) {
        // 인스턴스 생성
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
        // 버튼 생성
        let cancelBtn = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        let okBtn = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(cancelBtn)
        alert.addAction(okBtn)
        
        let v = UIViewController()
        
        v.view.backgroundColor = UIColor.red

        alert.setValue(v, forKey: "contentViewController")
        
        
        
        
        
        
        self.present(alert, animated: true)
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

