.text

main:
	addi $2 $0 100
	addi $3 $0 100
	jal Donkey_Kong
fim:
	addi $2 $0 10
	syscall

# ================================
Donkey_Kong:
	# ===============
	# EMPILHAR
	# ===============
	sw $31 0($29)
	addi $29 $29 -4
	
	add $15 $2 $0
	add $16 $3 $0
	
	addi $2 $0 8	
	addi $3 $0 2
	addi $4 $15 50
	addi $5 $16 2
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 12	
	addi $3 $0 2
	addi $4 $15 44
	addi $5 $16 4
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 14	
	addi $3 $0 2
	addi $4 $15 40
	addi $5 $16 6
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 16
	addi $3 $0 2
	addi $4 $15 38
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 52
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 10
	addi $3 $0 2
	addi $4 $15 36
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 24
	addi $3 $0 2
	addi $4 $15 22
	addi $5 $16 12
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 8
	addi $4 $15 44
	addi $5 $16 12
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 20
	addi $3 $0 2
	addi $4 $15 20
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 20
	addi $3 $0 2
	addi $4 $15 18
	addi $5 $16 16
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 22
	addi $3 $0 2
	addi $4 $15 16
	addi $5 $16 18
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 24
	addi $3 $0 2
	addi $4 $15 14
	addi $5 $16 20
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 30
	addi $3 $0 2
	addi $4 $15 12
	addi $5 $16 22
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 30
	addi $3 $0 2
	addi $4 $15 10
	addi $5 $16 24
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 28
	addi $3 $0 2
	addi $4 $15 10
	addi $5 $16 26
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 30
	addi $3 $0 2
	addi $4 $15 8
	addi $5 $16 28
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 32
	addi $3 $0 2
	addi $4 $15 8
	addi $5 $16 30
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 34
	addi $3 $0 2
	addi $4 $15 8
	addi $5 $16 32
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 36
	addi $3 $0 2
	addi $4 $15 8
	addi $5 $16 34
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 38
	addi $3 $0 2
	addi $4 $15 10
	addi $5 $16 36
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 36
	addi $3 $0 2
	addi $4 $15 12
	addi $5 $16 38
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	# PERNA TRAZEIRA
	addi $2 $0 20
	addi $3 $0 2
	addi $4 $15 10
	addi $5 $16 40
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 18
	addi $3 $0 2
	addi $4 $15 10
	addi $5 $16 42
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 18
	addi $3 $0 2
	addi $4 $15 8
	addi $5 $16 44
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 20
	addi $3 $0 2
	addi $4 $15 6
	addi $5 $16 46
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 22
	addi $3 $0 4
	addi $4 $15 6
	addi $5 $16 48
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 14
	addi $3 $0 2
	addi $4 $15 8
	addi $5 $16 52
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 24
	addi $5 $16 52
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	# PERNA DIANTEIRA MARROM
	
	addi $2 $0 16
	addi $3 $0 4
	addi $4 $15 32
	addi $5 $16 40
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 18
	addi $3 $0 4
	addi $4 $15 34
	addi $5 $16 44
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 22
	addi $3 $0 4
	addi $4 $15 30
	addi $5 $16 48
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 10
	addi $3 $0 2
	addi $4 $15 32
	addi $5 $16 52
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 44
	addi $5 $16 52
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	# PERNA DIANTEIRA
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 38
	addi $5 $16 42
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 4
	addi $4 $15 36
	addi $5 $16 44
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 10
	addi $3 $0 4
	addi $4 $15 32
	addi $5 $16 48
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Draw_Pixel
	
	
	
	# OUTRA PERNA
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 46
	addi $5 $16 44
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 6
	addi $4 $15 44
	addi $5 $16 46
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Draw_Pixel
	
	
	
	
	# PERNA TRAZEIRO
	addi $2 $0 14
	addi $3 $0 2
	addi $4 $15 10
	addi $5 $16 46
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 14
	addi $3 $0 4
	addi $4 $15 8
	addi $5 $16 48
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 24
	addi $5 $16 48
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Draw_Pixel
	
	# PERNA TRAZEIRO DETALHES
	# ** PRETO **
	addi $2 $0 4
	addi $3 $0 4
	addi $4 $15 24
	addi $5 $16 38
	addi $9 $0 0
	ori $9 0x00000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 4
	addi $4 $15 22
	addi $5 $16 40
	addi $9 $0 0
	ori $9 0x00000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 18
	addi $5 $16 44
	addi $9 $0 0
	ori $9 0x00000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 20
	addi $5 $16 46
	addi $9 $0 0
	ori $9 0x00000
	jal Donkey_Kong_Draw_Pixel
	# ** MARROM ESCURO ** #531B02
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 16
	addi $5 $16 44
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 24
	addi $5 $16 44
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 18
	addi $5 $16 42
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 26
	addi $5 $16 42
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 20
	addi $5 $16 38
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Draw_Pixel
	
	# PARTE CIMA DO DETALHE DA PERNA TRAZEIRA
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 22
	addi $5 $16 38
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 14
	addi $5 $16 34
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 18
	addi $5 $16 36
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Draw_Pixel
	# END - PARTE CIMA DO DETALHE DA PERNA TRAZEIRA
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 28
	addi $5 $16 38
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 24
	addi $5 $16 36
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 24
	addi $5 $16 34
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 4
	addi $4 $15 22
	addi $5 $16 30
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 6
	addi $4 $15 22
	addi $5 $16 24
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 24
	addi $5 $16 22
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Draw_Pixel
	
	# DETLAHE PERNA DIANTEIRA #531B02
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 30
	addi $5 $16 40
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 32
	addi $5 $16 44
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 42
	addi $5 $16 42
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 40
	addi $5 $16 42
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 8
	addi $3 $0 4
	addi $4 $15 40
	addi $5 $16 38
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 40
	addi $5 $16 36
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Draw_Pixel
	
		
	addi $2 $0 2
	addi $3 $0 6
	addi $4 $15 38
	addi $5 $16 30
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 6
	addi $4 $15 36
	addi $5 $16 26
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 6
	addi $4 $15 34
	addi $5 $16 22
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 6
	addi $4 $15 32
	addi $5 $16 16
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 28
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 34
	addi $5 $16 12
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Draw_Pixel
	# GRAVATA 9D2445
	
	addi $2 $0 2
	addi $3 $0 8
	addi $4 $15 34
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0x9D2445
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 36
	addi $5 $16 22
	addi $9 $0 0
	ori $9 0x9D2445
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 36
	addi $5 $16 22
	addi $9 $0 0
	ori $9 0x9D2445
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 6
	addi $4 $15 42
	addi $5 $16 36
	addi $9 $0 0
	ori $9 0x9D2445
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 40
	addi $5 $16 34
	addi $9 $0 0
	ori $9 0x9D2445
	jal Donkey_Kong_Draw_Pixel
	
	# DETALHES PRETO
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 44
	addi $5 $16 38
	addi $9 $0 0
	ori $9 0x00000
	jal Donkey_Kong_Draw_Pixel
	
	# ================== ROSTO ===============
	#F6CE9B
	addi $2 $0 8
	addi $3 $0 10
	addi $4 $15 46
	addi $5 $16 12
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 46
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 40
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 6
	addi $4 $15 38
	addi $5 $16 16
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 10
	addi $3 $0 2
	addi $4 $15 38
	addi $5 $16 20
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 14
	addi $3 $0 2
	addi $4 $15 42
	addi $5 $16 22
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 18
	addi $3 $0 2
	addi $4 $15 40
	addi $5 $16 24
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 22
	addi $3 $0 2
	addi $4 $15 38
	addi $5 $16 26
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 24
	addi $3 $0 2
	addi $4 $15 38
	addi $5 $16 28
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 22
	addi $3 $0 2
	addi $4 $15 40
	addi $5 $16 30
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 18
	addi $3 $0 2
	addi $4 $15 42
	addi $5 $16 32
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 14
	addi $3 $0 2
	addi $4 $15 44
	addi $5 $16 34
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 8
	addi $3 $0 2
	addi $4 $15 48
	addi $5 $16 36
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Draw_Pixel
	
	# OLHOS
	addi $2 $0 2
	addi $3 $0 8
	addi $4 $15 48
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0xA13F00
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 50
	addi $5 $16 16
	addi $9 $0 0
	ori $9 0x541B00
	jal Donkey_Kong_Draw_Pixel 
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 52
	addi $5 $16 18
	addi $9 $0 0
	ori $9 0x541B00
	jal Donkey_Kong_Draw_Pixel 
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 50
	addi $5 $16 18
	addi $9 $0 0
	ori $9 0xFFFFFF
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 52
	addi $5 $16 20
	addi $9 $0 0
	ori $9 0x000000
	jal Donkey_Kong_Draw_Pixel
	
	
	addi $2 $0 12
	addi $3 $0 2
	addi $4 $15 50
	addi $5 $16 30
	addi $9 $0 0
	ori $9 0x9F4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 48
	addi $5 $16 28
	addi $9 $0 0
	ori $9 0x9F4000
	jal Donkey_Kong_Draw_Pixel
	
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 46
	addi $5 $16 26
	addi $9 $0 0
	ori $9 0x9F4000
	jal Donkey_Kong_Draw_Pixel
	

	
	
Donkey_Kong_End:
	# ===============
	# DESEMPILHAR
	# ===============
	addi $29 $29 4
	lw $31 0($29)
	
	jr $31



Donkey_Kong_Draw_END:
	# ===============
	# EMPILHAR
	# ===============
	addi $29 $29 4
	lw $31 0($29)
	
	jr $31
	

Donkey_Kong_Draw_Pixel:
	sw $31 0($29)
	addi $29 $29 -4
	
	lui $8 0x1001 # Memoria
	addi $6 $0 1024
	mul $6 $6 $5 #PosiÃ§Ã£o Y
	mul $7 $4 4 # PosiÃ§Ã£o X
	add $8 $8 $6
	add $8 $8 $7
	addi $5 $0 0 # Contador 1
	addi $6 $0 0 # Contador 2
	add $7 $8 $0

Donkey_Kong_Draw_Pixel_For:
	beq $6 $3 Donkey_Kong_Draw_Pixel_END
	beq $5 $2 Donkey_Kong_Draw_Pixel_Next_Line
	sw $9 0($8)
	addi $5 $5 1
	addi $8 $8 4
	j Donkey_Kong_Draw_Pixel_For
	
Donkey_Kong_Draw_Pixel_Next_Line:
	addi $5 $0 0 # Zerar Contador X
	addi $6 $6 1
	add $8 $7 $0
	addi $8 $8 1024
	addi $7 $7 1024
	j Donkey_Kong_Draw_Pixel_For

Donkey_Kong_Draw_Pixel_END:
	# ===============
	# DESEMPILHAR
	# ===============
	addi $29 $29 4
	lw $31 0($29)
	
	jr $31
