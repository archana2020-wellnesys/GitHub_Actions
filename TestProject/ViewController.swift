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
        
        print("getting base URL")
        guard let baseUrl: String = Bundle.main.infoDictionary?["BASE_URL"] as? String else {
            print("Base URL cant be found")
            return
        }
        print("base url val \(baseUrl)")
    }

    func userAlamofire()  {
        SessionManager.default.request("https://httpbin.org/get").responseJSON { response in
            //debugPrint(response)
        }
    }

    //returns the app name
    static func returnTheAppName() -> String {
        //static let baseUrl = "http://34.71.82.187/" //for production http://34.71.82.187/
           //static let baseUrl =  "https://stageapi.gyaanifi.com/"
        
        return "TestProject"
    }
}

