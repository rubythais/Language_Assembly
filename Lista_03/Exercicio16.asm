# Faça um programa que conte e 
# imprima quantos números primos 
# existem entre a e b, onde a e b 
# são números informados pelo usuário.
.text

input:
	addi $2 $0 5
	syscall
	add $5 $0 $2
	
	addi $2 $0 5
	syscall
	add $6 $0 $2
	
main:
	addi $8 $0  0 # ContadorPrimo
	addi $9 $0  1 #ContadorQnt
	addi $10 $0 0 #Primo or Not

	
for:	
	beq $5 2 Primo 
	
	beq $5 $6 endfor

	secfor: 
		#Ver se Primo or Not é 1
		beq $10 1 midfor 
		
		div $5 $9 # N % J != 0 V
		
		mfhi $20
		#mover MOD pra $20 
		
		beq $20 $0 midfor
		# IF $20 == 0: N Primo
		
		addi $9 $9 1 
		#Incremento de J
		
		beq $9 $5 Primo
		
		j secfor
	
Primo:
	add $8 $8 1 #Contador Primo += 1
	
	add $4 $0 $5
	addi $2 $0 1
	syscall
	
	add $4 $0 '\n'
	addi $2 $0 11
	syscall
	
	
	j midfor
	
	
midfor:	
	addi $5 $5 1 #Incremento
	addi $10 $0 0 #PrN -> Reset
	
	addi $9 $0 2
	#Reset de J
	
	j for
endfor: