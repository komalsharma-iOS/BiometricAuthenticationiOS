//
//  ViewController.swift
//  fingerPrintAuthentication
//
//  Created by iApp on 22/04/21.
//  Copyright © 2021 iApp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btnAction(_ sender: Any) {
        
        
        FingerprintAuth.share.accessAuth { (success, error) in
            
            if success {
                
                guard let vc = self.storyboard?.instantiateViewController(identifier: "SuccessViewController") as? SuccessViewController else {
                    return
                }
                self.navigationController?.pushViewController(vc, animated: true)
                
            }
            
            
        }
        
        
    }
}

