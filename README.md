# isPrimeAssembly

## 📌 Sumário

- [Descrição](#descrição)
- [Algoritmo](#algoritmo)
- [Estrutura dos Arquivos](#estrutura-dos-arquivos)
- [Montagem e Execução](#montagem-e-execução)
- [Exemplo de Saída](#exemplo-de-saída)
- [Requisitos](#requisitos)
- [Licença](#licença)

---

## 🧠 Descrição

Este projeto implementa uma verificação de número primo utilizando linguagem Assembly para arquitetura x86-64 no sistema Windows. Ele solicita um número inteiro via terminal, testa se o número é primo e imprime o resultado.

---

## 📊 Algoritmo

O algoritmo de verificação de primos segue os seguintes passos:

1. Se o número for menor que 2, não é primo.
2. Se for igual a 2, é primo.
3. Caso contrário, testa a divisão do número por todos os inteiros de 2 até a sua metade.
4. Se alguma divisão resultar em resto 0, o número **não é primo**.
5. Caso contrário, o número é **primo**.

> A lógica é implementada diretamente usando registradores (RCX, RAX, RBX, etc.) e instruções de divisão.

---

## 📁 Estrutura dos Arquivos

```bash
isPrimeAssembly/
│
├── nasm_gcc.bat       # Script para compilar e executar no Windows (NASM + GCC)
├── primo.asm          # Código Assembly principal (função isprime e main)
└── README.md          # Este arquivo
```

---

## ⚙️ Montagem e Execução

Este projeto foi desenvolvido para sistemas **Windows**, utilizando o assembler NASM e o compilador GCC (MinGW).

### ✅ Passos para Executar

1. Instale o [NASM](https://www.nasm.us/) e o [MinGW GCC](http://www.mingw.org/) e adicione ambos ao PATH.
2. Salve o código `primo.asm` e o script `nasm_gcc.bat` no mesmo diretório.
3. Abra o terminal (cmd) e execute:

```bash
nasm_gcc.bat primo.asm
```

O script realiza:
- Montagem do `.asm` com NASM
- Linkagem com GCC
- Execução automática do programa

---

## 🖨️ Exemplo de Saída

```bash
Digite um numero: 7
Eh primo!
```

```bash
Digite um numero: 9
Nao eh primo!
```

---

## 📦 Requisitos

- Windows (64 bits)
- [NASM](https://www.nasm.us/) (Netwide Assembler)
- [GCC (MinGW)](http://www.mingw.org/) para linkagem

---

## 📝 Licença

Distribuído sob a licença [MIT](https://opensource.org/licenses/MIT). Sinta-se livre para usar, modificar e compartilhar! 
