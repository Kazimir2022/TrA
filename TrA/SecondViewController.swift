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
    var updatingData: String = "Test" //label сцены 1
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // определяем идентификатор segue
        switch segue.identifier {
        case "toFirstScreen":
            // подготовка к переходу на первый экран
            prepareFirstScreen(segue)
        default:
            break
        }
    }
    
    // подготовка к переходу на экран редактирования
    private func prepareFirstScreen(_ segue: UIStoryboardSegue) {
        // безопасно извлекаем опциональное значение
        guard let destinationController = segue.destination as? ViewController else {
            return
        }
        destinationController.updatedData = dataTextField.text ?? ""
    }
    
    // который обновляет текстфилд
    private func updateTextFieldData(withText text: String) {
        dataTextField.text = text
    }
   

}
