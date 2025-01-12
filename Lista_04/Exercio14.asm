input:
    addi $2 $0 5         # Lê o valor de n (altura do triângulo)
    syscall
    add $4 $0 $2         # $4 = n
    
# =================
# funcao DrawTriangule
# entrada: $5
# saida: ---
DrawTriangule:
    addi $8 $0 1         # Contador de linhas crescente
    addi $9 $0 1         # Contador de asteriscos por linha
    add $4 $0 '*'
    
for:
    # Primeira parte (crescente)
    beq $8 $4 midfor      # Quando $8 == $4 (n), vai para a parte decrescente
    
    # Imprime os asteriscos
    addi $9 $0 1         # Resetando contador de asteriscos
    ffor:
        beq $9 $8 midfor # Quando $9 == $8, pula para o próximo ciclo
        add $4 $0 '*'    
        addi $2 $0 11
        syscall
        addi $9 $9 1
        j ffor
    
    # Imprime a quebra de linha
    midfor:
        add $4 $0 '\n'
        addi $2 $0 11
        syscall
        
    addi $8 $8 1         # Incremento do contador de linhas
    j for

# A parte decrescente vai ser tratada após atingir o valor n
voltar:
    # Decrecendo o número de asteriscos
    addi $8 $8 -1        # Decrementa para iniciar a parte decrescente
    j for

fim:
    addi $2 $0 10        # Fim da execução
    syscall
