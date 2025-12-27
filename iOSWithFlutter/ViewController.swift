//
//  ViewController.swift
//  iOSWithFlutter
//
//  Created by Shivyan on 26/12/25.
//

import UIKit
import Flutter

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapMe(){
        let flutterEngine = (UIApplication.shared.delegate as! AppDelegate).flutterEngine
        let flutterVC = FlutterViewController(engine: flutterEngine, nibName: nil, bundle: nil)
        self.present(flutterVC, animated: true, completion: nil)
    }

}

