//
//  SettingsViewController.swift
//  TipMan
//
//  Created by tamhsc on 3/4/17.
//  Copyright © 2017 Vatsal. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tiplbl2: UILabel!
    @IBOutlet weak var tiplbl1: UILabel!
    @IBOutlet weak var tiplbl3: UILabel!
    @IBOutlet weak var color: UILabel!
    @IBOutlet weak var colorSwitch: UISwitch!
    @IBOutlet weak var badLabel: UILabel!
    @IBOutlet weak var avgLabel: UILabel!
    @IBOutlet weak var goodLabel: UILabel!
    @IBOutlet weak var head1: UILabel!
    @IBOutlet weak var head2: UILabel!
    @IBOutlet weak var colorLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tiplbl1.text = UserDefaults.standard.string(forKey: "TIP_ONE") ?? "15"
        tiplbl2.text = UserDefaults.standard.string(forKey: "TIP_TWO") ?? "18"
        tiplbl3.text = UserDefaults.standard.string(forKey: "TIP_THREE") ?? "20"
        
        let dark = UserDefaults.standard.bool(forKey: "DARK_THEME")
        if !dark{
            color.text = "Light"
            colorSwitch.setOn(false, animated: true)
        } else{
            color.text = "Dark"
            colorSwitch.setOn(true, animated: true)
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setTheme()
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    @IBAction func tip1Ctrl(_ sender: UIStepper) {
        tiplbl1.text = String(format:"%.0f",sender.value)
       
         UserDefaults.standard.set(tiplbl1.text, forKey: "TIP_ONE")
    }
    
    @IBAction func tip2Ctrl(_ sender: UIStepper) {
        tiplbl2.text = String(format:"%.0f",sender.value)
         UserDefaults.standard.set(tiplbl2.text, forKey: "TIP_TWO")
    }
    
    @IBAction func tip3Ctrl(_ sender: UIStepper) {
        tiplbl3.text = String(format:"%.0f",sender.value)
        UserDefaults.standard.set(tiplbl3.text, forKey: "TIP_THREE")
    }
    
    @IBAction func onSwitch(_ sender: UISwitch) {
        
        if colorSwitch.isOn
        {
            color.text = "Dark"
             UserDefaults.standard.set(true, forKey: "DARK_THEME")
        }else{
            color.text = "Light"
            UserDefaults.standard.set(false, forKey: "DARK_THEME")
        }
        setTheme()
    }
    
    func setTheme(){
        let dark = UserDefaults.standard.bool(forKey: "DARK_THEME")
        if dark
        {
            self.view.backgroundColor = UIColor.black
            tiplbl1.textColor = UIColor.white
            tiplbl2.textColor = UIColor.white
            tiplbl3.textColor = UIColor.white
            color.textColor = UIColor.white
            badLabel.textColor = UIColor.white
            avgLabel.textColor = UIColor.white
            goodLabel.textColor = UIColor.white
            head1.textColor = UIColor.white
            head2.textColor = UIColor.white
            colorLabel.textColor = UIColor.white
            
            
        }else{
            self.view.backgroundColor = UIColor.white
            tiplbl1.textColor = UIColor.black
            tiplbl2.textColor = UIColor.black
            tiplbl3.textColor = UIColor.black
            color.textColor = UIColor.black
            badLabel.textColor = UIColor.black
            avgLabel.textColor = UIColor.black
            goodLabel.textColor = UIColor.black
            head1.textColor = UIColor.black
            head2.textColor = UIColor.black
            colorLabel.textColor = UIColor.black
            
        }
    }

    
    
}
