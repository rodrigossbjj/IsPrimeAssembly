bits 64
default rel

section .data
    msg_ask     db "Digite um numero: ", 0
    fmt_in      db "%d", 0
    fmt_out     db "%s", 0
    msg_primo   db "Eh primo!", 10, 0
    msg_nao     db "Nao eh primo!", 10, 0

section .bss
    num         resq 1    ; espaço para armazenar o número lido (64 bits)

section .text
global main
extern printf, scanf, ExitProcess

;-----------------------------------------------------
; Função: isprime
; Entrada: RCX = número a testar
; Saída:  RAX = 1 (primo), 0 (não primo)
;-----------------------------------------------------
isprime:
    push rbp
    mov  rbp, rsp
    push rbx
    push rdx

    mov rax, rcx
    cmp rax, 2
    jl  .nao_primo
    je  .eh_primo

    mov rbx, 2

.loop:
    mov rax, rcx
    xor rdx, rdx
    div rbx
    cmp rdx, 0
    je  .nao_primo

    inc rbx
    mov rax, rcx
    mov rdx, 0
    mov rsi, 2
    div rsi
    cmp rbx, rax
    jbe .loop

.eh_primo:
    mov rax, 1
    jmp .fim

.nao_primo:
    mov rax, 0

.fim:
    pop rdx
    pop rbx
    pop rbp
    ret

;-----------------------------------------------------
; Função principal
;-----------------------------------------------------
main:
    push rbp
    mov  rbp, rsp

    ; Imprime: "Digite um numero: "
    lea rcx, [msg_ask]
    call printf

    ; scanf("%d", &num)
    lea rcx, [fmt_in]
    lea rdx, [num]
    call scanf

    ; isprime(num)
    mov rcx, [num]
    call isprime

    cmp rax, 1
    je .mostrar_primo

.nao_primo:
    lea rcx, [fmt_out]
    lea rdx, [msg_nao]
    call printf
    jmp .fim

.mostrar_primo:
    lea rcx, [fmt_out]
    lea rdx, [msg_primo]
    call printf

.fim:
    xor rax, rax
    call ExitProcess
