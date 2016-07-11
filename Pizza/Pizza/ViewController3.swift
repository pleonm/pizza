//
//  ViewController3.swift
//  Pizza
//
//  Created by Pedro Leon on 11/07/16.
//  Copyright © 2016 Innova Digital Studio. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {

    @IBOutlet weak var queso: UILabel!
    
    @IBOutlet weak var desc: UITextView!
    var tamaño:String = ""
    var masa:String = ""
    override func viewWillAppear(animated: Bool) {
        desc.text="Tu Pizza:\nTamaño: "+tamaño+"\nMasa:"+masa
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func selectQueso(sender: UIButton) {
        queso.text = String(sender.titleLabel!.text!)
        
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista3=segue.destinationViewController as! ViewController4
        sigVista3.tamaño = tamaño
        sigVista3.masa = masa
        sigVista3.queso = queso.text!
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
