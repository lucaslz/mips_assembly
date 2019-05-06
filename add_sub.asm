.text

li $s1, 10           #carrega o valor IMEDIATO 10 no registrador s1 (li = load immediate)
li $s2, 15           #carrega o valor IMEDIATO 15 no registrador s2
li $s3, 20	     #carrega o valor IMEDIATO 20 no registrador s3

add $t0, $s2, $s3
sub $t0, $t0, $s3