#include <stdio.h>
#include <string.h>
#include <stdbool.h>

typedef enum {GUERREIRO, SACERDOTE, MAGO} CLASSE;

typedef struct{
    CLASSE sub;
    union{
        struct{
            char nome[256];
            int idade;
            float altura;
            char arma[256];
        }guerreiro;
        struct{
            char nome[256];
            int idade;
            float altura;
            bool reza;
        }sacerdote;
        struct{
            char nome[256];
            int idade;
            float altura;
            char cajado[256];
        }mago;
    }dados;
} Classe;

void printarClasse(Classe c){
    switch(c.sub){
        case GUERREIRO: 
            printf("Nome: %s\nIdade: %d\nAltura: %f\nArma: %s\n\n", c.dados.guerreiro.nome, c.dados.guerreiro.idade,c.dados.guerreiro.altura,c.dados.guerreiro.arma);
            break;
        case MAGO:
            printf("Nome: %s\nIdade: %d\nAltura: %f\nArma: %s\n\n", c.dados.mago.nome, c.dados.mago.idade,c.dados.mago.altura,c.dados.mago.cajado);
            break;
        case SACERDOTE:
            printf("Nome: %s\nIdade: %d\nAltura: %f\nReza: %s\n\n", c.dados.sacerdote.nome, c.dados.sacerdote.idade,c.dados.sacerdote.altura,c.dados.sacerdote.reza ? "Sim" : "Não");
            break;
        default:
            break;
    }
}

int main(void){
    Classe c1 = {.sub=GUERREIRO, {.guerreiro.nome="Cristian", .guerreiro.idade=40, .guerreiro.altura=1.87, .guerreiro.arma="Espada"}};
    Classe c2 = {.sub=MAGO, {.mago.nome="Marcos", .mago.idade=52, .mago.altura=1.82, .mago.cajado="Cajado de Fogo"}};
    printarClasse(c1);
    printarClasse(c2);

    return 0;
}