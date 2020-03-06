.text #0x00004180
ori $11,$0,50
ori $12,$0,0x7f00
sw $11,4($12) #preset timer0
ori $13,$0,0x0009 #1001
sw $13,0($12) #开始计时
eret



