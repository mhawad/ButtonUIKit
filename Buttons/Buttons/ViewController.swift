//
//  ViewController.swift
//  Buttons
//
//  Created by Mirna Sokar on 1/25/23.
//

import UIKit

class ViewController: UIViewController {
    
    var isSelected = true
    var calls: UILabel!
    var status: UIButton!
    var chats: UIButton!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        let chats = UIButton(type: .system)
        chats.setTitle("Chats", for: .normal)
        
        isSelected = !isSelected
        
        if isSelected {
            chats.setTitle("Chats", for: .normal)

            chats.setTitleColor(.black, for: .normal)
           // chats.backgroundColor = .white

        } else {
            chats.setTitle("Chats", for: .normal)

            chats.setTitleColor(.green, for: .focused)
            //chats.backgroundColor = .black

        }
        chats.frame = CGRect(x: 80, y: 120, width: 100, height: 50)
        
        
        
        let status = UIButton()
        status.setTitle("Status", for: .normal)
        status.frame = CGRect(x: 180, y: 120, width: 100, height: 50)
        status.addTarget(self, action: #selector(configureStatus), for: .touchUpInside)
        
    
        isSelected = !isSelected
        let calls = UILabel()
        calls.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
        calls.text = "Calls"
        calls.textColor = !isSelected ? .white : .black
        view.addSubview(calls)
        
        
        
        
//        let calls = UIButton()
//        calls.setTitle("Calls", for: .normal)
//        calls.frame = CGRect(x: 280, y: 120, width: 100, height: 50)
//
        
        
        view.backgroundColor = .systemPink
        view.addSubview(chats)
        view.addSubview(status)
        view.addSubview(calls)
        
        
    }
    
    
    @objc func configureStatus() {
        
        
        
        isSelected = !isSelected
        
        if isSelected {
            self.status.setTitle("Status", for: .normal)

            self.status.setTitleColor(.black, for: .normal)
           // chats.backgroundColor = .white

        } else {
            self.status.setTitle("Status", for: .normal)

            self.status.setTitleColor(.green, for: .focused)
            //chats.backgroundColor = .black

        }
        
    }
    
}

