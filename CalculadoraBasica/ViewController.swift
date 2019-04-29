//
//  ViewController.swift
//  CalculadoraBasica
//
//  Created by Jesus Martinez on 4/28/19.
//  Copyright © 2019 Jesus Martinez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label_result: UILabel!
    @IBOutlet weak var bnt_1: UIButton!
    @IBOutlet weak var btn_2: UIButton!
    @IBOutlet weak var btn_3: UIButton!
    @IBOutlet weak var btn_4: UIButton!
    @IBOutlet weak var btn_5: UIButton!
    @IBOutlet weak var btn_6: UIButton!
    @IBOutlet weak var btn_7: UIButton!
    @IBOutlet weak var btn_8: UIButton!
    @IBOutlet weak var btn_9: UIButton!
    @IBOutlet weak var btn_0: UIButton!
    
    @IBOutlet weak var btn_c: UIButton!
    
    @IBOutlet weak var btn_suma: UIButton!
    @IBOutlet weak var btn_resta: UIButton!
    @IBOutlet weak var btn_division: UIButton!
    @IBOutlet weak var btn_multiplicacion: UIButton!
    @IBOutlet weak var btn_igual: UIButton!
    var calculadora = Calculadora()
    //MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        label_result.text = ""
        bnt_1.addTarget(self, action: #selector(didButtonClick), for: .touchUpInside)
        btn_2.addTarget(self, action: #selector(didButtonClick), for: .touchUpInside)
        btn_3.addTarget(self, action: #selector(didButtonClick), for: .touchUpInside)
        btn_4.addTarget(self, action: #selector(didButtonClick), for: .touchUpInside)
        btn_5.addTarget(self, action: #selector(didButtonClick), for: .touchUpInside)
        btn_6.addTarget(self, action: #selector(didButtonClick), for: .touchUpInside)
        btn_7.addTarget(self, action: #selector(didButtonClick), for: .touchUpInside)
        btn_8.addTarget(self, action: #selector(didButtonClick), for: .touchUpInside)
        btn_9.addTarget(self, action: #selector(didButtonClick), for: .touchUpInside)
        btn_0.addTarget(self, action: #selector(didButtonClick), for: .touchUpInside)
        
        btn_suma.addTarget(self, action: #selector(didButtonOpe), for: .touchUpInside)
        btn_resta.addTarget(self, action: #selector(didButtonOpe), for: .touchUpInside)
        btn_multiplicacion.addTarget(self, action: #selector(didButtonOpe), for: .touchUpInside)
        btn_division.addTarget(self, action: #selector(didButtonOpe), for: .touchUpInside)
        
        btn_igual.addTarget(self, action: #selector(getOR), for: .touchUpInside)
        btn_c.addTarget(self, action: #selector(resetLabe), for: .touchUpInside)
        
    }

    @objc func didButtonClick(_ sender: UIButton) {
        let contador = label_result!.text!
        let valor = sender.titleLabel!.text!
        label_result.text = "\(contador)\(valor)"
    }
    
    @objc func didButtonOpe(_ sender: UIButton) {
        self.setLabelResult(value :label_result!.text!)
        if(sender === btn_suma){
            calculadora.operacion = 0
        } else if(sender === btn_resta){
            calculadora.operacion = 1
        } else if(sender === btn_multiplicacion){
            calculadora.operacion = 2
        } else if(sender === btn_division){
            calculadora.operacion = 3
        }
    }
    
    
    @objc func resetLabe(_ sender: UIButton){
        label_result.text = ""
    }
    
    @objc func getOR(_ sender: UIButton){
        self.setLabelResult(value :label_result!.text!)
        let contador = calculadora.resultado
        label_result.text = "\(contador)"
        calculadora.operacion = -1
    }
    
    fileprivate func setLabelResult (value: String) {
        let res = Double(value)!
        self.valueOpe(value: res)
    }
    
    fileprivate func valueOpe(value: Double){
        if(calculadora.operacion != -1){
            calculadora.number_b = value
        } else {
            calculadora.number_a = value
        }
        label_result.text = ""
    }
    
}

