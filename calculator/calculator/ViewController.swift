//  Created by kuldeep singh on 6/8/17.
//  Copyright © 2017 kuldeep singh. All rights reserved.


import UIKit

class ViewController: UIViewController {

    var numberonscreen:Double = 0
    var previousnumber:Double = 0
    var performingmath = false
    var operation = 0
    
    //outlet funcn
    
    @IBOutlet var resultfieldlabel: UILabel!
    
    @IBOutlet var zero: UIButton!
    @IBOutlet var one: UIButton!
    @IBOutlet var two: UIButton!
    @IBOutlet var three: UIButton!
    @IBOutlet var four: UIButton!
    @IBOutlet var five: UIButton!
    @IBOutlet var six: UIButton!
    @IBOutlet var seven: UIButton!
    @IBOutlet var eight: UIButton!
    @IBOutlet var nine: UIButton!
    
    @IBOutlet var add: UIButton!
    @IBOutlet var sub: UIButton!
    @IBOutlet var multiply: UIButton!
    @IBOutlet var division: UIButton!
    @IBOutlet var equal: UIButton!
    
    @IBOutlet var reset: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
   }

//action function
    
    
    @IBAction func z(_ sender: UIButton) {
        if performingmath == true{
            resultfieldlabel.text = String(sender.tag)
            numberonscreen = Double(resultfieldlabel.text!)!
            performingmath = false
        }
        else
        {
            resultfieldlabel.text = resultfieldlabel.text! + String(sender.tag)
            numberonscreen = Double(resultfieldlabel.text!)!
        }
    }
   
    
    // Operators ADD SUB DIV MULTI
    //14
    @IBAction func ad(_ sender: UIButton) {
       
        if resultfieldlabel.text != nil && sender.tag != 10 && sender.tag != 15
        {
         previousnumber = Double(resultfieldlabel.text!)!
            if sender.tag == 14
            {
                resultfieldlabel.text = "+"
            }
            if sender.tag == 13{
                resultfieldlabel.text = "-"
            }
            if sender.tag == 12{
                resultfieldlabel.text = "*"
            }
            if sender.tag == 11{
                resultfieldlabel.text = "/"
            }
            operation = sender.tag
            performingmath = true
        }
            else if sender.tag == 15{
            if operation == 11{
                resultfieldlabel.text = String(previousnumber / numberonscreen)
            }
            else if operation == 12{
                resultfieldlabel.text = String(previousnumber * numberonscreen)
            }
            else if operation == 13{
                resultfieldlabel.text = String(previousnumber - numberonscreen)
            }
            else if operation == 14{
                resultfieldlabel.text = String(previousnumber + numberonscreen)
            }
        }
            else if sender.tag == 10{
            resultfieldlabel.text = ""
            previousnumber = 0
            numberonscreen = 0
        }
    }
    func constrains(){
        
        
    }
}

