//
//  main.swift
//  Trivia
//
//  Created by Turma Manhã on 21/02/18.
//  Copyright © 2018 Turma Manhã. All rights reserved.
//

import Foundation

var perguntas = ["Qual a capital da Croácia?", "Em que ano Swift 1.0 tornou-se disponível?", "Qual o nome do segundo álbum do Vampire Weekend?", "Qual é o sobrenome dos irmaos Monica e Ross do seriado Friends?", "Qual é o nome do dragao do Soluço, personagem principal do filme 'Como treinar seu dragao'?"]

var respostas = ["Zagreb", "2014", "Contra", "Geller", "Banguela"]

var perguntaAtual = 0
var pontos = 0
var palpite = ""

while perguntaAtual < perguntas.count {
    
    print(perguntas[perguntaAtual] + "\nR:", terminator: " ")
    
    palpite = readLine()!
    
    if (palpite == respostas[perguntaAtual]) {
        pontos = pontos + 1
        print("\nBoa, garoto!!\n")
    } else {
        pontos = pontos - 1
        print("\nVoce é burro, cara...\n")
    }
    
    perguntaAtual += 1
}

print("Sua pontuação foi \(pontos)!")

if(pontos >= 5){
    print("Parabéns, tu é o cara!\n")
}


