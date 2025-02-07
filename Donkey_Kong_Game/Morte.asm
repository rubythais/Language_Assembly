.text

main:
	addi $2 $0 0
	addi $3 $0 0
	jal Death
fim:
	addi $2 $0 10
	syscall
Death:
	sw $31 0($29)
	addi $29 $29 -4
	add $15 $0 $2
	add $16 $0 $3
	
	#BackGround Teto
	addi $2 $0 256	
	addi $3 $0 256
	addi $4 $15 0
	addi $5 $16 0
	addi $9 $0 0
	ori $9 0xD3CDAD
	jal Castle_Draw_Pixel
	
	#BackGround Parede
	addi $2 $0 256	
	addi $3 $0 240
	addi $4 $15 0
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0x777062
	jal Castle_Draw_Pixel
	
	# TETO
	addi $2 $0 256	
	addi $3 $0 10
	addi $4 $15 0
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0x8E6F52
	jal Castle_Draw_Pixel
	
	# 
	addi $2 $0 256	
	addi $3 $0 4
	addi $4 $15 0
	addi $5 $16 18
	addi $9 $0 0
	ori $9 0x52413A
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 10
	addi $4 $15 26
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0x52413A
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 10
	addi $4 $15 54
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0x52413A
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 10
	addi $4 $15 82
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0x52413A
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 10
	addi $4 $15 110
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0x52413A
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 10
	addi $4 $15 138
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0x52413A
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 10
	addi $4 $15 166
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0x52413A
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 10
	addi $4 $15 194
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0x52413A
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 10
	addi $4 $15 222
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0x52413A
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 10
	addi $4 $15 250
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0x52413A
	jal Castle_Draw_Pixel
	
	#DETALHES TIJOLOS
	addi $2 $0 256	
	addi $3 $0 3
	addi $4 $15 0
	addi $5 $16 30
	addi $9 $0 0
	ori $9 0x8C8278
	jal Castle_Draw_Pixel
	
	addi $2 $0 256	
	addi $3 $0 3
	addi $4 $15 0
	addi $5 $16 41
	addi $9 $0 0
	ori $9 0x8C8278
	jal Castle_Draw_Pixel
	
	addi $2 $0 256	
	addi $3 $0 3
	addi $4 $15 0
	addi $5 $16 52
	addi $9 $0 0
	ori $9 0x8C8278
	jal Castle_Draw_Pixel
	
	addi $2 $0 256	
	addi $3 $0 3
	addi $4 $15 0
	addi $5 $16 63
	addi $9 $0 0
	ori $9 0x8C8278
	jal Castle_Draw_Pixel
	
	addi $2 $0 256	
	addi $3 $0 3
	addi $4 $15 0
	addi $5 $16 74
	addi $9 $0 0
	ori $9 0x8C8278
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 256	
	addi $3 $0 3
	addi $4 $15 0
	addi $5 $16 85
	addi $9 $0 0
	ori $9 0x8C8278
	jal Castle_Draw_Pixel
	
	addi $2 $0 256	
	addi $3 $0 3
	addi $4 $15 0
	addi $5 $16 96
	addi $9 $0 0
	ori $9 0x8C8278
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 256	
	addi $3 $0 3
	addi $4 $15 0
	addi $5 $16 107
	addi $9 $0 0
	ori $9 0x8C8278
	jal Castle_Draw_Pixel
	
	addi $2 $0 256	
	addi $3 $0 3
	addi $4 $15 0
	addi $5 $16 118
	addi $9 $0 0
	ori $9 0x8C8278
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 256	
	addi $3 $0 3
	addi $4 $15 0
	addi $5 $16 129
	addi $9 $0 0
	ori $9 0x8C8278
	jal Castle_Draw_Pixel
	
	addi $2 $0 256
	addi $3 $0 3
	addi $4 $15 0
	addi $5 $16 140
	addi $9 $0 0
	ori $9 0x8C8278
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 256
	addi $3 $0 3
	addi $4 $15 0
	addi $5 $16 154
	addi $9 $0 0
	ori $9 0x8C8278
	jal Castle_Draw_Pixel
	
	addi $2 $0 256
	addi $3 $0 3
	addi $4 $15 0
	addi $5 $16 165
	addi $9 $0 0
	ori $9 0x8C8278
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 256
	addi $3 $0 3
	addi $4 $15 0
	addi $5 $16 176
	addi $9 $0 0
	ori $9 0x8C8278
	jal Castle_Draw_Pixel
	
	addi $2 $0 256
	addi $3 $0 3
	addi $4 $15 0
	addi $5 $16 187
	addi $9 $0 0
	ori $9 0x8C8278
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 256
	addi $3 $0 3
	addi $4 $15 0
	addi $5 $16 198
	addi $9 $0 0
	ori $9 0x8C8278
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 256
	addi $3 $0 3
	addi $4 $15 0
	addi $5 $16 209
	addi $9 $0 0
	ori $9 0x8C8278
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 256
	addi $3 $0 3
	addi $4 $15 0
	addi $5 $16 220
	addi $9 $0 0
	ori $9 0x8C8278
	jal Castle_Draw_Pixel
	
	addi $2 $0 256
	addi $3 $0 3
	addi $4 $15 0
	addi $5 $16 231
	addi $9 $0 0
	ori $9 0x8C8278
	jal Castle_Draw_Pixel
	
	#Detalhes 
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 20
	addi $5 $16 22
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 42
	addi $5 $16 22
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 64
	addi $5 $16 22
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 86
	addi $5 $16 22
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 108
	addi $5 $16 22
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 130
	addi $5 $16 22
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 152
	addi $5 $16 22
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 174
	addi $5 $16 22
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 196
	addi $5 $16 22
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 218
	addi $5 $16 22
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 240
	addi $5 $16 22
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	# 
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 10
	addi $5 $16 33
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 32
	addi $5 $16 33
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 54
	addi $5 $16 33
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 76
	addi $5 $16 33
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 98
	addi $5 $16 33
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 120
	addi $5 $16 33
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 142
	addi $5 $16 33
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 164
	addi $5 $16 33
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 186
	addi $5 $16 33
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 208
	addi $5 $16 33
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 230
	addi $5 $16 33
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 252
	addi $5 $16 33
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	#
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 20
	addi $5 $16 44
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 42
	addi $5 $16 44
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 64
	addi $5 $16 44
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 86
	addi $5 $16 44
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 108
	addi $5 $16 44
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 130
	addi $5 $16 44
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 152
	addi $5 $16 44
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 174
	addi $5 $16 44
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 196
	addi $5 $16 44
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 218
	addi $5 $16 44
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 240
	addi $5 $16 44
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 10
	addi $5 $16 55
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 32
	addi $5 $16 55
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 54
	addi $5 $16 55
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 76
	addi $5 $16 55
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 98
	addi $5 $16 55
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 120
	addi $5 $16 55
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 142
	addi $5 $16 55
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 164
	addi $5 $16 55
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 186
	addi $5 $16 55
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 208
	addi $5 $16 55
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 230
	addi $5 $16 55
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 252
	addi $5 $16 55
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	#
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 20
	addi $5 $16 66
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 42
	addi $5 $16 66
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 64
	addi $5 $16 66
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 86
	addi $5 $16 66
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 108
	addi $5 $16 66
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 130
	addi $5 $16 66
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 152
	addi $5 $16 66
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 174
	addi $5 $16 66
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 196
	addi $5 $16 66
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 218
	addi $5 $16 66
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 240
	addi $5 $16 66
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	#
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 10
	addi $5 $16 77
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 32
	addi $5 $16 77
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 54
	addi $5 $16 77
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 76
	addi $5 $16 77
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 98
	addi $5 $16 77
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 120
	addi $5 $16 77
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 142
	addi $5 $16 77
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 164
	addi $5 $16 77
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 186
	addi $5 $16 77
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 208
	addi $5 $16 77
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 230
	addi $5 $16 77
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 252
	addi $5 $16 77
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	#
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 20
	addi $5 $16 88
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 42
	addi $5 $16 88
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 64
	addi $5 $16 88
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 86
	addi $5 $16 88
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 108
	addi $5 $16 88
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 130
	addi $5 $16 88
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 152
	addi $5 $16 88
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 174
	addi $5 $16 88
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 196
	addi $5 $16 88
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 218
	addi $5 $16 88
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 240
	addi $5 $16 88
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	#
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 10
	addi $5 $16 99
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 32
	addi $5 $16 99
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 54
	addi $5 $16 99
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 76
	addi $5 $16 99
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 98
	addi $5 $16 99
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 120
	addi $5 $16 99
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 142
	addi $5 $16 99
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 164
	addi $5 $16 99
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 186
	addi $5 $16 99
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 208
	addi $5 $16 99
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 230
	addi $5 $16 99
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 252
	addi $5 $16 99
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	#
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 20
	addi $5 $16 110
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 42
	addi $5 $16 110
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 64
	addi $5 $16 110
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 86
	addi $5 $16 110
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 108
	addi $5 $16 110
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 130
	addi $5 $16 110
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 152
	addi $5 $16 110
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 174
	addi $5 $16 110
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 196
	addi $5 $16 110
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 218
	addi $5 $16 110
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 240
	addi $5 $16 110
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	#
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 10
	addi $5 $16 121
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 32
	addi $5 $16 121
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 54
	addi $5 $16 121
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 76
	addi $5 $16 121
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 98
	addi $5 $16 121
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 120
	addi $5 $16 121
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 142
	addi $5 $16 121
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 164
	addi $5 $16 121
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 186
	addi $5 $16 121
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 208
	addi $5 $16 121
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 230
	addi $5 $16 121
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 252
	addi $5 $16 121
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	#
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 20
	addi $5 $16 132
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 42
	addi $5 $16 132
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 64
	addi $5 $16 132
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 86
	addi $5 $16 132
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 108
	addi $5 $16 132
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 130
	addi $5 $16 132
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 152
	addi $5 $16 132
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 174
	addi $5 $16 132
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 196
	addi $5 $16 132
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 218
	addi $5 $16 132
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 240
	addi $5 $16 132
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $29 $29 4
	lw $31 0($29)
	jr $31 

Castle_Draw_Pixel:
	sw $31 0($29)
	addi $29 $29 -4
	
	lui $8 0x1001 # Memoria
	addi $6 $0 1024
	mul $6 $6 $5 #Posição Y
	mul $7 $4 4 # Posição X
	add $8 $8 $6
	add $8 $8 $7
	addi $5 $0 0 # Contador 1
	addi $6 $0 0 # Contador 2
	add $7 $8 $0

Castle_Draw_Pixel_For:
	beq $6 $3 End_Castle_Draw_Pixel
	beq $5 $2 Castle_Draw_Pixel_Next_Line
	sw $9 0($8)
	addi $5 $5 1
	addi $8 $8 4
	j Castle_Draw_Pixel_For
	
Castle_Draw_Pixel_Next_Line:
	addi $5 $0 0 # Zerar Contador X
	addi $6 $6 1
	add $8 $7 $0
	addi $8 $8 1024
	addi $7 $7 1024
	j Castle_Draw_Pixel_For

End_Castle_Draw_Pixel:
	addi $29 $29 4
	lw $31 0($29)
	jr $31
