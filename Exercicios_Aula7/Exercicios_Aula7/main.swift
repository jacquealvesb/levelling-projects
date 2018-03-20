//
//  main.swift
//  Exercicios_Aula7
//
//  Created by Turma Manhã on 3/5/18.
//  Copyright © 2018 Turma Manhã. All rights reserved.
//

import Foundation

/*
//Atividade 1 - N ao quadrado

func quadrado(_ n:Int) -> Int {
    return n*n
}

print(quadrado(3))

 */

/*
 
//Atividade 2 - Soma de quadrados

func quadrado(_ n:Int) -> Int {
    return n * n
}

func soma(_ x:Int, _ y:Int) -> Int {
    return x + y
}

print(soma(quadrado(2), quadrado(3)))
 
 */

/*

//Atividade 3 - Raiz quadrada

func raizQuadrada(n: Float, margem: Float) -> Float {
    var r:Float = 4.0
   
    while true {
        r = (r + n/r)/2
        if !((r * r < n - margem) || (r * r > n + margem)) {
            break
        }
    }
    
    return r
}

print(raizQuadrada(n: 16.0, margem: 1.0))

 */

/*

//Atividade 4 - x-ésima potencia

func potencia(base n:Int, expoente x:Int) -> Int {
    var resultado = n
    var i = 1
    
    while i < x {
        resultado *= n
        i += 1
    }
    
    return resultado
}

print(potencia(base: 2, expoente: 10))
 
 */

/*

//Atividade 5 - Soma de matrizes

func somaMatrizes(matriz1:[[Int]], matriz2:[[Int]]) -> [[Int]] {
    let n = matriz1.count
    var matrizSoma:[[Int]] = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)
    var i = 0
    var j = 0
    
    while i < n {
        j = 0
        while j < n {
            matrizSoma[i][j] = matriz1[i][j] + matriz2[i][j]
            j += 1
        }
        i += 1
    }
    
    return matrizSoma
}

let matriz1 = [[0, 1, 2], [3, 4, 5], [6, 7, 8]]
let matriz2 = [[6, 7, 8], [3, 4, 5], [0, 1, 2]]
let matrizSoma = somaMatrizes(matriz1: matriz1, matriz2: matriz2)

print(matrizSoma)
 
 */

/*
 
//Atividade 6 - Multiplicacao de matrizes

func multiplicaMatrizes(matriz1:[[Int]], matriz2:[[Int]]) -> [[Int]] {
    let n = matriz1.count
    var matrizMultiplicacao = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)
    var i = 0
    var j = 0
    var k = 0
    
    while i < n {
        j = 0
        while j < n {
            k = 0
            while k < n {
                matrizMultiplicacao[i][j] += matriz1[i][k] * matriz2[k][j]
                k += 1
            }
            j += 1
        }
        i += 1
    }
    
    return matrizMultiplicacao
}

let matriz1 = [[0, 1, 2], [3, 4, 5], [6, 7, 8]]
let matriz2 = [[6, 7, 8], [3, 4, 5], [0, 1, 2]]
let matrizMultiplicacao:[[Int]] = multiplicaMatrizes(matriz1: matriz1, matriz2: matriz2)

print(matrizMultiplicacao)
 
 */

/*

//Atividade 7 - Vetor em ordem crescente

func vetorCrescente(_ vetor:[Double]) -> [Double]{
    var vetorOrdenado:[Double] = vetor
    var i = 0
    var j = 1
    var menor = 0
    var aux = 0.0
    
    while i < vetorOrdenado.count {
        menor = i
        j = i
        while j < vetorOrdenado.count {
            if(vetorOrdenado[j] < vetorOrdenado[menor]) {
                menor = j
            }
            j += 1
        }
        aux = vetorOrdenado[i]
        vetorOrdenado[i] = vetorOrdenado[menor]
        vetorOrdenado[menor] = aux
        
        i += 1
    }
    
    return vetorOrdenado
}

let vetor = [9.0, 4, 2, 1, 7, 1.5, 0]
print(vetorCrescente(vetor))

*/

/*

//Atividade 8 - Operações com retângulo

struct Ponto {
    var x:Float
    var y:Float
    
    init(_ x:Float, _ y:Float) {
        self.x = x
        self.y = y
    }
}

struct Retangulo {
    var base:Float
    var altura:Float
    var centro:Ponto
    
    func area () -> Float {
        return (self.base * self.altura)
    }
    
    func igual(a ret:Retangulo) -> Bool {
        var iguais = false
        
        if(self.area() == ret.area()) {
            iguais = true
        }
        
        return iguais
    }
    
    func distancia(ate p:Ponto) -> Float {
        return sqrt(pow(p.x - self.centro.x, 2) + pow(p.y - self.centro.y, 2))
    }
}

var ret1 = Retangulo(base: 4.0, altura: 10.0, centro: Ponto(0,0))
var ret2 = Retangulo(base: 3.0, altura: 4.0, centro: Ponto(0,0))

print(ret1.area())
print(ret1.igual(a: ret2))
print(ret1.distancia(ate: Ponto(3,2)))

 */

/*
 
//Atividade 9 - Pokemón

struct Ataque {
    var nome:String
    var dano:Int
}

struct Pokemon {
    var nome:String
    var tipo:Int
    var HPtotal:Int
    var HPatual:Int
    var ataques:[String:Ataque]
    
    init (nome:String, tipo:Int, HPtotal:Int) {
        self.nome = nome
        self.tipo = tipo
        self.HPtotal = HPtotal
        self.HPatual = HPtotal
        self.ataques = [:]
    }
    
    func mesmoTipo(de outro:Pokemon) -> Bool{
        var tiposIguais = false
        
        if(self.tipo == outro.tipo) {
            tiposIguais = true
        }
        
        return tiposIguais
    }
    
    mutating func receberDano (dano:Int) {
        HPatual -= dano
    }
    
    func atacar(_ outro: inout Pokemon, usando ataque:String) {
        if(ataques[ataque] != nil){
            outro.receberDano(dano: ataques[ataque]!.dano)
        } else {
            print("O pokemón não possui esse ataque")
        }
    }
    
}
 
var pokemon1 = Pokemon(nome: "Bulbasaur", tipo: 1, HPtotal: 100)
var pokemon2 = Pokemon(nome: "Charizard", tipo: 3, HPtotal: 100)

pokemon2.ataques["fogo"] = Ataque(nome: "fogo", dano: 20)

print(pokemon1.mesmoTipo(de: pokemon2))

pokemon2.atacar(&pokemon1, usando: "fogo")

print(pokemon1.HPatual)

 */
