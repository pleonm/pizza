//
//  ViewController4.swift
//  Pizza
//
//  Created by Pedro Leon on 11/07/16.
//  Copyright © 2016 Innova Digital Studio. All rights reserved.
//

import UIKit

class ViewController4: UIViewController {

    @IBOutlet weak var desc: UITextView!
    @IBOutlet weak var ingredientes: UILabel!
    var cont:Int = 0
    
    var tamaño:String = ""
    var masa:String = ""
    var queso:String = ""
    override func viewWillAppear(animated: Bool) {
        desc.text="Tu Pizza:\nTamaño: "+tamaño+"\nMasa:"+masa+"\nQueso:"+queso
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addIngrediente(sender: UIButton) {
        var ing:String = ingredientes.text!
        let new:String = String(sender.titleLabel!.text!)
        if (ing != "") {
            ing = ing+", "
        }
        cont = cont + 1
        if (cont < 6) {
            ingredientes.text = ing + new
        }
        
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista4=segue.destinationViewController as! ViewController5
        sigVista4.tamaño = tamaño
        sigVista4.masa = masa
        sigVista4.queso = queso
        sigVista4.ing = ingredientes.text!
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
