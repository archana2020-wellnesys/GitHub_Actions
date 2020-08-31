//
//  ViewController.swift
//  TestProject
//
//  Created by Devaraj N on 22/04/20.
//  Copyright © 2020 Devaraj N. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.userAlamofire()
    }

    func userAlamofire()  {
        SessionManager.default.request("https://httpbin.org/get").responseJSON { response in
            debugPrint(response)
        }
    }

}

