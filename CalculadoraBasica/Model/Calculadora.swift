//
//  Calculadora.swift
//  CalculadoraBasica
//
//  Created by Jesus Martinez on 4/28/19.
//  Copyright © 2019 Jesus Martinez. All rights reserved.
//

import Foundation
struct Calculadora {
    private var _number_a: Double = 0.0
    var number_a: Double {
        set {
            
            _number_a = newValue}
        get { return _number_a}
    }
    private var _number_b: Double = 0.0
    var number_b: Double {
        set {
            _number_b = newValue}
        get { return _number_b}
    }
    private var _operacion: Int = -1
    var operacion: Int {
        set {
            _operacion = newValue}
        get { return _operacion}
    }
    private var _resultado: Double = 0.0
    var resultado: Double {
        set { _resultado = newValue}
        get {
            var op:Double = 0
            print(self.number_a)
            print(self.number_b)
            switch self.operacion {
            case 0:
                op = self.number_a + self.number_b
            case 1:
                op = self.number_a - self.number_b
            case 2:
                op = self.number_a * self.number_b
            case 3:
                op = self.number_a / self.number_b
            default:
                return 0.0
            }
            print(self.operacion)
            print(op)
            return op
        }
    }
}
