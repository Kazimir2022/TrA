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
    var updatingData: String = "" //label сцены 1
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
        // перед появлением экрана вызываетсяся метод 
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateTextFieldData(withText: updatingData)
    }
    // который обновляет текстфилд
    private func updateTextFieldData(withText text: String) {
        dataTextField.text = text
    }
   

}
