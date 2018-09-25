  v: .word  1 2 3 0 0 0 0 0
  m: .word  1 2 3 4 5 6 7 8 9
  
 .text
	
	la $t0 v #pointer to v
	la $t1 m #pointer to m
	ori $s0 ,$s0, 3   #i
	#ori $s1, $s1,3   #j
	#S3 Acumulador
	
	for1:
		bne $s0,$zero,tofor2 
			finfor:
			j endMain
		
		tofor2:
			ori  $s1,$s1,3
		for2:
			
			
			bne $s1, $zero,operations
				Endloops:
					addi $s0, $s0,-1
					j for1
				
				operations:		
					addi $s1,$s1,-1
					j for2
	
	endMain:	
