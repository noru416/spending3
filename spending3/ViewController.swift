//
//  ViewController.swift
//  spending3
//
//  Created by R nD on 2018. 2. 4..
//  Copyright © 2018년 R nD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var priceTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        addButtonToTextField(textField: priceTextField)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func addButtonToTextField(textField: UITextField){
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        let doneBtn = UIBarButtonItem(
            title: "Done",
            style: .done,
            target: self,
            action: #selector(doneBtnPressed)
        )
        let flexibleSpace = UIBarButtonItem(
            barButtonSystemItem: .flexibleSpace,
            target: nil,
            action: nil
        )
        toolBar.items = [flexibleSpace, doneBtn, flexibleSpace]
        textField.inputAccessoryView = toolBar
    }
    
    @objc func doneBtnPressed() {
        let inputText = priceTextField.text!
        print(inputText)
        performSegue(withIdentifier: "PriceToCategory", sender: inputText)
    }

}
