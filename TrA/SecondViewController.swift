//
//  SecondViewController.swift
//  TrA
//
//  Created by Kazimir on 3.04.23.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet var dataTextField: UITextField!
    // изменяемое значение
    var updatingData: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateTextFieldData(withText: updatingData)
    }
    // обновляем данные в текстовом поле
    private func updateTextFieldData(withText text: String) {
        dataTextField.text = text
    }
   

}
