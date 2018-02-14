//
//  ViewController.swift
//  QRCode_Generator
//
//  Created by Mehul  Singhal  on 12/09/17.
//  Copyright © 2017 Mehul  Singhal . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    
    @IBOutlet weak var myTextField: UITextField!
    
    
    @IBAction func button(_ sender: Any) {
        
        if let myString = myTextField.text
        {
            let data = myString.data(using: .ascii, allowLossyConversion: false)
            let filter = CIFilter(name: "CIQRCodeGenerator")
            filter?.setValue(data, forKey: "inputMessage")
            
            let  img = UIImage(ciImage: (filter?.outputImage)!)
            myImageView.image = img
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

