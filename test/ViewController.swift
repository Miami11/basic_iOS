//
//  ViewController.swift
//  test
//
//  Created by 陳雅婷 on 2018/6/19.
//  Copyright © 2018年 陳雅婷. All rights reserved.
//

import UIKit


class ViewController: UIViewController , SecondControllerDelegate, UITableViewDataSource{
    var number: Int = 0
    
    var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initiateTableView()
    }
//        var stringArr: [String] = ["a","O","D"]
//        print(stringArr[0])
//         title = "OPPPPPP"
        // Do any additional setup after loading the view, typically from a nib.
//        let label: UILabel = UILabel(frame: CGRect(x: UIScreen.main.bounds.width / 2 - 50, y: UIScreen.main.bounds.height - 100, width: 100, height: 100))
//        label.text = "I'm label"
//
//        self.view.addSubview(label)
        
        func initiateTableView() {
            tableView = UITableView(frame: self.view.frame)
            tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
            tableView.dataSource = self
            self.view.addSubview(tableView)
        }
   
        
        // ref to dictionary !
        // struct model
        // table view
//        let btn: UIButton = UIButton(frame: CGRect(x: UIScreen.main.bounds.width / 2 - 100, y: UIScreen.main.bounds.height / 2 - 50, width: 200, height: 100))
//        btn.setTitle("click me", for: UIControlState.normal)
//        btn.setTitle("oh", for: UIControlState.highlighted)
//        btn.backgroundColor = UIColor.blue
        
//        btn.addTarget(self, action: #selector(pressed), for: UIControlEvents.touchUpInside)
//        btn.addTarget(self, action: #selector(pushToSecond), for: .touchUpInside)
        
        
//         self.view.addSubview(btn)
        
       
//        self.navigationController?.navigationBar
    
    @objc func pushToSecond(){
        let detail = SecondController()
        detail.number = 456
        detail.delegate = self
        self.navigationController?.pushViewController(Second, animated: true)
    }
    
    @objc func pressed() {
        self.navigationController?.pushViewController(SecondController(), animated: true)
    }

    func getNumber(number: Int) {
        print(456)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int ) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> Bool {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for:indexPath)
    }

}

