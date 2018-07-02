//
//  SecondController.swift
//  test
//
//  Created by 陳雅婷 on 2018/6/19.
//  Copyright © 2018年 陳雅婷. All rights reserved.
//

import UIKit
protocol Person {
    var name: String{ get set }
    var mobile: Int { get set}
    func getAge()
    
}

//class Jack: Person {
//    var name: String
//
//    var mobile: Int
//
//    func getAge() {
//        print("33")
//    }
//
//}

protocol SecondControllerDelegate: class {
    func getNumber(number: Int)
}

class SecondController: UIViewController {
    var number: Int = 0
    var abcd:String = ""
    weak var delegate: SecondControllerDelegate?
    var viewController: ViewController = ViewController()
    
    override func viewDidLoad() {
    
        super.viewDidLoad()
        
        viewController.number = number
        
        
        self.view.backgroundColor = UIColor.magenta
        // Do any additional setup after loading the view.
        
        let btn: UIButton = UIButton(frame: CGRect(x: UIScreen.main.bounds.width / 2 - 100, y: UIScreen.main.bounds.height / 2 - 50, width: 200, height: 100))
        btn.setTitle("click me", for: UIControlState.normal)
        btn.setTitle("oh", for: UIControlState.highlighted)
        btn.backgroundColor = UIColor.blue
        
        let label = UILabel(frame: CGRect(x: 100.0, y: 100.0, width: 200.0, height: 40.0))
        label.text = String(number)
        self.view.addSubview(label)
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.action, target:self, action: #selector(back))
        
//        btn.addTarget(self, action: #selector(pressed), for: UIControlEvents.touchUpInside)
        
//        self.view.addSubview(btn)
    }
    @objc func back(){
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func pressed() {
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func shownumber() {
    self.delegate?.getNumber(number: number)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
