//
//  main.swift
//  Exercicios_Aula5
//
//  Created by Turma Manhã on 27/02/18.
//  Copyright © 2018 Turma Manhã. All rights reserved.
//

import Foundation

/*

//Atividade 1 - Médias aritméticas entre 1 e j

var soma:Float = 0.0

if let nStr = readLine(), let n = Int(nStr) {
    for i in 1...n {
        soma = 0
        
        for j in 1...i {
            soma += Float(j)
        }
        
        print("Média aritmética entre 1 e \(i): \(soma/Float(i))")
    }
}
 
 */

/*

//Atividade 2 - Root e pwr

var y = 0.0
var root = 0.0

if let yStr = readLine(), let yInt = Int(yStr) {
    y = Double(yInt)
    
    for pwr in 2...5{
        root = pow(y, 1.0/Double(pwr))
        
        if(root - Double(Int(root)) == 0.0){
            print("Root: \(Int(root))\nPwr: \(Int(pwr))")
            break
        } else {
            root = 0.0
        }
    }
    
    if(root == 0.0) {
        print("O par de números não existe")
    }
    
} else {
    print("Número inválido")
}
 
 */

/*

//Atividade 3 - Jogo de adivinhação

var numeroParaAdivinhar = 0
var palpites = 0
var s = 0

while true {
    if let nStr = readLine(), let n = Int(nStr) {
        if(n >= 1 && n <= 200){
            numeroParaAdivinhar = n
            break
        } else {
            print("Digite um número entre 1 e 200")
        }
    } else {
        print("Número inválido, digite outro")
    }
}

while s != numeroParaAdivinhar {
    if let palpiteStr = readLine(), let palpite = Int(palpiteStr) {
        if(palpite == 1 || palpite == 10 || palpite == 100){
            if(s < numeroParaAdivinhar) {
                s += palpite
                print("Soma atual: \(s)")
            } else {
                s -= palpite
                print("Soma atual: \(s)")
            }
            
            palpites += 1
        } else {
            print("Palpite inválido. Digite 1, 10 ou 100")
        }
    } else {
        print("Número inválido, digite outro")
    }
}

print("A soma chegou ao número a ser adivinhado! Você chegou ao número com \(palpites) palpites.")
 
*/

/*

//Atividade 4 - Tabela de multiplicação

if let nStr = readLine(), let n = Int(nStr) {
    for i in 1...n {
        for j in 1...n {
            print(i*j, terminator: " ")
        }
        print("")
    }
}
 
*/

/*

//Atividade 5 - Círculo

if let rStr = readLine(), let r = Int(rStr) {
    var meio = r / 2
    
    for i in 0...r-1 {
        for j in 0...(r*2)-1 {
            if(r % 2 == 0) {
                if(i == meio || i == (meio + 1)){
                    print("*", terminator: "")
                } else {
                    print(" ", terminator: "")
                }
            } else {
                if(i == meio || i == (meio + 1) || i == (meio - 1)){
                    print("*", terminator: "")
                }
            }
        }
        print("")
    }
}

/*
   ****
 ********
 ********
 ********
   ****
 
 
   ******
 **********
************
************
 **********
   ******
 
 
      **
   ********
 ************
 ************
 ************
   ********
      **
 
 
    ********
  ************
 **************
****************
****************
 **************
  ************
    ********
 
 
 */
 
 */

/*

//Atividade 6 - Soma dos elementos de um array

//let numeros = [10, 20, 30, 40]
let numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9]
var soma = 0

for i in 0...numeros.count-1 {
    soma += numeros[i]
}

print("Soma: \(soma)")
 
*/

/*

//Atividade 7 - Maior número do array

let numeros = [10, 80, 30, 40]
//let numeros = [1, 2, 3, 4, 9, 5, 6, 7, 8]
var maior = numeros[0]

for i in 0...numeros.count-1 {
    if(numeros[i] > maior) {
        maior = numeros[i]
    }
}

print("O maior elemento é \(maior)")
 
*/

/*

//Atividade 8 - Números ímpares de arrays

let array1 = [1, 2, 3, 4, 9, 5, 6, 7, 8]
let array2 = [23, 17, 38, 20, 46, 2]
var arrayImpares:[Int] = []

for i in 0...array1.count-1 {
    if(array1[i] % 2 != 0) {
        arrayImpares.append(array1[i])
    }
}

for i in 0...array2.count-1 {
    if(array2[i] % 2 != 0) {
        arrayImpares.append(array2[i])
    }
}

for i in 0...arrayImpares.count-1 {
    print(arrayImpares[i], terminator: " ")
}

print("")
 
*/

/*

//Atividade 9 - Array de pontos flutuantes

var numeros = [1.0, 2.5, 3.6, 4.0, 9.3, 5.0, 6.2, 7.8, 8.0]
var index = 0

while index != numeros.count {
    if(numeros[index] - Double(Int(numeros[index])) != 0){
        numeros.remove(at: index)
    } else {
        index += 1
    }
}

for i in 0...numeros.count-1 {
    print(numeros[i], terminator: " ")
}

print("")
 
*/

/*

//Atividade 10 - Array de interseções

let array1 = [1, 2, 3, 4, 9, 5, 6, 7, 8]
let array2 = [23, 1, 38, 4, 46, 2]
var intersecao:[Int] = []
var contemNumero = false

for i in 0...array1.count-1 {
    contemNumero = false
    
    for j in 0...array2.count-1 {
        if(array1[i] == array2[j]){
            contemNumero = true
            break
        }
    }
    
    if(contemNumero == false) {
        intersecao.append(array1[i])
    }
}

for i in 0...intersecao.count-1 {
    print(intersecao[i], terminator: " ")
}

print("")
 
 */

/*

//Atividade 11 - Média aritmética de entradas

var numeros:[Float] = []
var soma:Float = 0.0

while true {
    if let nStr = readLine() {
        if(nStr == "") {
            break
            
        } else {
            if let n = Float(nStr) {
                numeros.append(n)
                
            } else {
                print("Número inválido")
            }
        }
    }
}

for i in 0...numeros.count-1 {
    soma += numeros[i]
}

print("Média: \(soma / Float(numeros.count))")
 
*/

/*

//Atividade 12 - Primos de 2 a N

var primo = false
var arrayPrimos:[Int] = []

if let numeroStr = readLine(), let numero = Int(numeroStr) {
    
    if(numero == 2){
        print("2 é primo")
        
    } else if(numero > 1) {
        for i in 2...numero {
            primo = false
            
            for j in 2...i {
                if(i % j == 0) {
                    if(primo == true){
                        primo = false
                        break
                    } else {
                        primo = true
                    }
                }
            }
            
            if(primo == true){
                arrayPrimos.append(i)
            }
        }
    } else {
        print("Você digitou um número menor ou igual a 2")
    }
} else {
    print("Número inválido")
}

for i in 0...arrayPrimos.count-1 {
    print(arrayPrimos[i], terminator: "")
    
    if(i != arrayPrimos.count-1){
        print(", ", terminator: "")
    }
}

print("")
 
*/

/*

//Atividade 13 - Fatoriais de 1 a N

var fatoriais:[Int] = []
var fat = 1
var numero = 0
var n = 0

while true {
    if let n = Int(readLine()!) {
        numero = n
        break
    } else {
        print("Número inválido")
    }
}

while numero != 0 {
    fat = 1
    n = numero
    
    while (n > 1){
        fat *= n
        n -= 1
    }
    
    fatoriais.insert(fat, at: 0)
    numero -= 1
}

for i in 0...fatoriais.count-1 {
    print(fatoriais[i], terminator: "")
    
    if(i != fatoriais.count-1){
        print(", ", terminator: "")
    }
}

print("")

*/
