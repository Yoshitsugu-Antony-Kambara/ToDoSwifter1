//
//  AddViewController.swift
//  ToDoSwifter1
//
//  Created by 神原良継 on 2019/05/04.
//  Copyright © 2019 YoshitsuguKambara. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {
    
    var array = [String]()

    @IBOutlet var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        
    }
    
    
    
    @IBAction func add(_ sender: Any) {
        //今まで保存されていたものが、また新しく、配列に入れられる。
        //これがないと、毎回まっさらなarrayにデータを入れることになるので、前のデータが消えてしまう
        if UserDefaults.standard.object(forKey: "array") != nil {
            array = UserDefaults.standard.object(forKey: "array") as! [String]
        }
        //配列arrayの中にtextFieldのテキストを加えていく
        array.append(textField.text!)
        
        //アプリ内にarrayという配列を保存した
        UserDefaults.standard.set(array, forKey: "array")
        
        self.navigationController?.popViewController(animated: true)

    }
    
    

}
