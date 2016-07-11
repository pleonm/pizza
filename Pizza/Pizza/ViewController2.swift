//
//  ViewController2.swift
//  Pizza
//
//  Created by Pedro Leon on 11/07/16.
//  Copyright © 2016 Innova Digital Studio. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    @IBOutlet weak var masa: UILabel!
    var tamaño:String = ""
    
    @IBOutlet weak var desc: UITextView!
    override func viewWillAppear(animated: Bool) {
        desc.text="Tu Pizza:\nTamaño: "+String(tamaño)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func selectMasa(sender: UIButton) {
        masa.text = String(sender.titleLabel!.text!)
        
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let resultado2=masa.text
        let sigVista2=segue.destinationViewController as! ViewController3
        sigVista2.tamaño = tamaño
        sigVista2.masa = resultado2!
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
