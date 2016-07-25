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
    var aingredientes = [String]()
    @IBOutlet weak var in1: UISwitch!
    @IBOutlet weak var in2: UISwitch!
    @IBOutlet weak var in3: UISwitch!
    @IBOutlet weak var in4: UISwitch!
    @IBOutlet weak var in5: UISwitch!
    @IBOutlet weak var in6: UISwitch!
    
    
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
    
    @IBAction func setIng1(sender: AnyObject) {
        print(cont)
        
        if((sender.on) == true){
            if (cont<5) {
                setIngrediente("jamón")
            } else {
                in1.setOn(false, animated: true)
            }
        } else {
            checkAndDelete("jamón")
        }

    }
    @IBAction func setIng2(sender: AnyObject) {
        if((sender.on) == true){
            if (cont<5) {
                setIngrediente("peperoni")
            } else {
                in2.setOn(false, animated: true)
            }
        } else {
            checkAndDelete("peperoni")
        }
        
    }
    @IBAction func setIng3(sender: AnyObject) {
        if((sender.on) == true){
            if (cont<5) {
                setIngrediente("pavo")
            } else {
                in3.setOn(false, animated: true)
            }
        } else {
            checkAndDelete("pavo")
        }
        
    }
    @IBAction func setIng4(sender: AnyObject) {
        if((sender.on) == true){
            if (cont<5) {
                setIngrediente("salchicha")
            } else {
                in4.setOn(false, animated: true)
            }
        } else {
            checkAndDelete("salchicha")
        }
        
    }
    @IBAction func setIng5(sender: AnyObject) {
        if((sender.on) == true){
            if (cont<5) {
                setIngrediente("aceituna")
            } else {
                in5.setOn(false, animated: true)
            }
        } else {
            checkAndDelete("aceituna")
        }
        
    }
    @IBAction func setIng6(sender: AnyObject) {
        if((sender.on) == true){
            if (cont<5) {
                setIngrediente("cebolla")
            } else {
                in6.setOn(false, animated: true)
            }
        } else {
            checkAndDelete("cebolla")
        }
        
    }
    func setIngrediente(ingre:String) {
        aingredientes.append(ingre)
        cont = cont + 1
        for item in aingredientes {
            print(item)
        }
        
        
    }
    func checkAndDelete(ingr:String) {
        print("borra "+ingr)
        for i in 0 ..< aingredientes.count {
            if(aingredientes[i] == ingr) {
                print("borrando "+aingredientes[i])
                aingredientes.removeAtIndex(i)
                cont = cont - 1
                print("cont:"+String(cont))
                for item in aingredientes {
                    print(item)
                }
                break
            }
        }
    }

    
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if (aingredientes.count>0) {
            var ing:String = aingredientes[0]
            for i in 1 ..< aingredientes.count {
                ing += ", "+aingredientes[i]
            }

        
        let sigVista4=segue.destinationViewController as! ViewController5
        sigVista4.tamaño = tamaño
        sigVista4.masa = masa
        sigVista4.queso = queso
        sigVista4.ing = ing
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
