//
//  main.m
//  Exercicios_Aula9_ObjectiveC
//
//  Created by Turma Manhã on 3/12/18.
//  Copyright © 2018 Turma Manhã. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Forma:NSObject
    - (float) area;
@end

@interface Ponto:Forma
    @property float x;
    @property float y;
    - (float) area;
@end

@interface Retangulo:Forma
    @property (nonatomic, readwrite) float altura;
    @property float largura;
    @property Ponto *centro;
    - (float) area;
@end

@implementation Ponto

    -(id)init {
        self = [super init];
        return self;
    }

    - (float) area {
        return 0.0;
    }
@end

@implementation Retangulo

    - (id)init {
        self = [super init];
        return self;
    }

    - (float) area {
        NSLog(@"Altura: %.1f, Largura: %.1f", self.altura, self.largura);
        return self.altura*self.largura;
    }
@end

int main(int argc, const char * argv[]) {
    Retangulo *ret = [[Retangulo alloc] init];
    
    ret.altura = 15.0;
    ret.largura = 4.0;
    
    NSLog(@"A área é: %.1f", [ret area]);
    
    return 0;
}
