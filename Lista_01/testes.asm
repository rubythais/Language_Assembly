.text

main:
	addi $10 $0 23
	addi $20 $0 100
	addi $21 $0 10
	div $10 $20
	mflo $15
	mfhi $16
	div $16 $21