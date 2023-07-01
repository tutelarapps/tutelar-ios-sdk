//
//  ViewController.swift
//  Demo_Tutelar
//
//  Created by Admin on 30/06/23.
//

import UIKit
import Tutelar
class ViewController: UIViewController, FingerprintDelegate {
    func onSuccess(data: String) {
        DispatchQueue.main.async {
            self.lblDetails.text = "\(data)"
        }
        
        print(data)
    }
    
    func onFailure(message: String) {
        print(message)
    }
    
    @IBOutlet weak var btn: UIButton!
    @IBOutlet weak var lblDetails: UILabel!
    let tutelar = Fingerprint(key: "Your API key")
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func btn(_ sender: Any) {
        
       tutelar.getDeviceDetails(withDelegate: self)
       
    }
}

extension Dictionary {
       
   var jsonData: Data? {
      return try? JSONSerialization.data(withJSONObject: self, options: [.prettyPrinted])
   }
       
   func toJSONString() -> String? {
      if let jsonData = jsonData {
         let jsonString = String(data: jsonData, encoding: .utf8)
         return jsonString
      }
      return nil
   }
}
