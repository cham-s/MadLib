//
//  RootViewController.swift
//  MadLib
//
//  Created by gecko on 30/09/16.
//  Copyright © 2016 StellarTech Media. All rights reserved.
//

import Cocoa

class RootViewController: NSViewController {

    @IBOutlet weak var pastTenseVerbTextField: NSTextField!
    @IBOutlet weak var singularNounComboBox: NSComboBox!
    @IBOutlet weak var pluralNountPopUp: NSPopUpButton!
    
    var pluralNouns: [String]!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    override func awakeFromNib() {
        pastTenseVerbTextField.stringValue = "ate"
        let singularNouns = ["dog", "muppet", "ninja", "fat dude"]
        singularNounComboBox.removeAllItems()
        singularNounComboBox.addItems(withObjectValues: singularNouns)
        singularNounComboBox.selectItem(at: 2)
        
        pluralNouns = ["tacos", "rainbows", "iPhones", "cousins"]
        pluralNountPopUp.addItems(withTitles: pluralNouns)
        pluralNountPopUp.selectItem(at: 0)
    }
    
}
