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
    
    @IBAction func saveDataWithProperty(_ sender: UIButton) {
        self.navigationController?.viewControllers.forEach{ viewController in
            (viewController as? ViewController)?.updatedData = dataTextField.text ?? ""
        }
    }
    
    
    // который обновляет текстфилд
    private func updateTextFieldData(withText text: String) {
        dataTextField.text = text
    }
   

}
