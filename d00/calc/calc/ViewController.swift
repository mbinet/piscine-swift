//
//  ViewController.swift
//  calc
//
//  Created by Maxime BINET on 10/4/16.
//  Copyright © 2016 Maxime BINET. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var res = "0"
    var n1 = "0"
    var n2 = "0"
    var op = "0"
    var eg = "0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = String(res)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateRes () {
        if (op != "0") {
            label.text = n2
        }
        else {
            label.text = n1
        }
        print("n1: " + n1 + " | " + " n2: " + n2)
    }
    
    func nuChange (nu: Int) {
        if (op != "0") {
            if (n2 == "0") {
                n2 = String(nu)
                updateRes()
            }
            else {
                n2 = n2 + String(nu)
                updateRes()
            }
        }
        else if (n1 == "0") {
            n1 = String(nu)
            updateRes()
        }
        else {
            n1 = n1 + String(nu)
            updateRes()
        }
    }
    
    func opChange (ope: String) {
        if (n1 != "0") {
            if (op != "0") {
                calc()
            }
            op = ope
            label.text = op
            print(op)
        }
    }
    
    func calc () {
        let nu1 = Int(n1)!
        let nu2 = Int(n2)!
        if (op == "+") {
            res = String(nu1 + nu2)
        }
        else if (op == "-") {
            res = String(nu1 - nu2)
        }
        else if (op == "x") {
            let (ok, nb)  : (Int, Bool) = Int.multiplyWithOverflow(nu1, nu2)
            if (ok) {
                res = String(nb)
            }
//            res = String(nu1 * nu2)
        }
        else if (op == "/") {
            if (nu2 == 0) {
                res = "Not a number"
            }
            else {
                res = String(nu1 / nu2)
            }
        }
        n1 = String(res)
        n2 = "0"
        op = "0"
        print("Final res: " + res)
        label.text = res
    }
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func btn_0(sender: UIButton) {
        nuChange(0)
    }
    @IBAction func btn_1(sender: UIButton) {
        nuChange(1)
    }
    @IBAction func btn_2(sender: UIButton) {
        nuChange(2)
    }
    @IBAction func btn_3(sender: UIButton) {
        nuChange(3)
    }
    @IBAction func btn_4(sender: UIButton) {
        nuChange(4)
    }
    @IBAction func btn_5(sender: UIButton) {
        nuChange(5)    }
    @IBAction func btn_6(sender: UIButton) {
        nuChange(6)
    }
    @IBAction func btn_7(sender: UIButton) {
        nuChange(7)
    }
    @IBAction func btn_8(sender: UIButton) {
        nuChange(8)
    }
    @IBAction func btn_9(sender: UIButton) {
        nuChange(9)
    }
    @IBAction func btn_plus(sender: UIButton) {
        opChange("+")
    }
    @IBAction func btn_minus(sender: UIButton) {
        opChange("-")
    }
    @IBAction func btn_by(sender: UIButton) {
        opChange("x")
    }
    @IBAction func btn_dash(sender: UIButton) {
        opChange("/")
    }
    @IBAction func btn_ac(sender: UIButton) {
        res = "0"
        n1 = "0"
        n2 = "0"
        op = "0"
        eg = "0"
        label.text = "0"
    }
    @IBAction func btn_neg(sender: UIButton) {
        if (op != "0") {
            n2 = String(-Int(n2)!)
            updateRes()
        }
        else {
            n1 = String(-Int(n1)!)
            updateRes()
        }
    }
    @IBAction func btn_egal(sender: UIButton) {
        calc()
    }

}
