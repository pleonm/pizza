//
//  ViewController5.swift
//  Pizza
//
//  Created by Pedro Leon on 11/07/16.
//  Copyright © 2016 Innova Digital Studio. All rights reserved.
//

import UIKit

class ViewController5: UIViewController {

    @IBOutlet weak var msg: UILabel!
    @IBOutlet weak var desc: UITextView!
    var tamaño:String = ""
    var masa:String = ""
    var queso:String = ""
    var ing:String = ""
    override func viewWillAppear(animated: Bool) {
        desc.text="Tu Pizza:\nTamaño: "+tamaño+"\nMasa:"+masa+"\nQueso:"+queso+"\nIngredientes:"+ing
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func aceptar(sender: AnyObject) {
        if (tamaño != "" && masa != "" && queso != "" && ing != "") {
             msg.text = "Tu Pizza fue solicitada"
        } else {
             msg.text = "Faltan datos en tu pedido"
        }
       
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
