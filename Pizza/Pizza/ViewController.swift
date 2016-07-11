//
//  ViewController.swift
//  Pizza
//
//  Created by Pedro Leon on 10/07/16.
//  Copyright © 2016 Innova Digital Studio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tamaño: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func selectTamaño(sender: UIButton) {
        tamaño.text = String(sender.titleLabel!.text!)
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let resultado=tamaño.text
        let sigVista=segue.destinationViewController as! ViewController2
        sigVista.tamaño = resultado!
    }
    
    }

