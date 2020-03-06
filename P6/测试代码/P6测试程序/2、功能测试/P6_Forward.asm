#转发测试文件
#作者能力不足之处，多多指教
#项塔兰作，如有问题，请致信qianlxc@126.com
ori $a0,$0,0xffff
ori $a1,$0,0x0004
ori $a2,$0,0x300c
jal fR_Jr_Rs
nop
jal fR_B_Rs
beqreturn1:nop
jal fR_R_Rs
nop
jal fR_I_Rs
nop
jal fR_L_Rs
nop
jal fR_MD_Rs #MD=mult div
nop
jal fR_MT_Rs
nop
jal fR_S_Rt
nop
jal fR_R_Rt
nop
jal fR_MD_Rt
nop
jal fI_B_Rs
beqreturn2:nop
jal fI_R_Rs
nop
jal fI_I_Rs
nop
jal fI_L_Rs
nop
jal fI_MD_Rs #MD=mult div
nop
jal fI_MT_Rs
nop
jal fI_S_Rt
nop
jal fI_R_Rt
nop
jal fI_MD_Rt
nop
jal fMF_B_Rs
beqreturn3:nop
jal fMF_R_Rs
nop
jal fMF_I_Rs
nop
jal fMF_L_Rs
nop
jal fMF_MD_Rs #MD=mult div
nop
jal fMF_MT_Rs
nop
jal fMF_S_Rt
nop
jal fMF_R_Rt
nop
jal fMF_MD_Rt
nop
jal fL_B_Rs
beqreturn4:nop
jal fL_R_Rs
nop
jal fL_I_Rs
nop
jal fL_L_Rs
nop
jal fL_MD_Rs #MD=mult div
nop
jal fL_MT_Rs
nop
jal fL_S_Rt
nop
jal fL_R_Rt
nop
jal fL_MD_Rt
nop
jal fMD_Stop
nop


fR_Jr_Rs: addu $a2,$a1,$a2
             nop
             jr $a2
             nop
fR_B_Rs: addu $t1,$a1,$0
             nop
             beq $a1,$t1,beqreturn1
             nop
             addi $k0,$k0,1
             jr $ra
             nop
fR_R_Rs: addu $t1,$a0,$0
             addu $t2,$t1,$0
             sw $t2,0($0)
             addu $t3,$t2,$0
             sw $t3,4($0)
             nop
             addu $t4,$t3,$0
             sw $t4,8($0)
             jr $ra
             nop
fR_I_Rs:  addu $t1,$a2,$0
             addiu $t2,$t1,1
             sw $t2,12($0)
             addiu $t3,$t2,2
             nop
             sw $t3,16($0)
             addiu $t4,$t3,3
             sw $t4,20($0)
             jr $ra
             nop
fR_L_Rs: addu $t1,$a1,$0
            lw $t2,16($t1)
            lb $t3,14($t1)
            sw $t3,24($0)
            jr $ra
            nop
fR_MD_Rs: addu $t1,$a0,$0
                mult $t1,$a1
                mfhi $t2
                mflo $t3
                sw $t2,32($0)
                sw $t3,36($0)
                jr $ra
                nop
fR_MT_Rs: addu $t1,$a2,$0
                mthi $t1
                mfhi $t2
                sw $t2,40($0)
                jr $ra
                nop
fR_S_Rt:     addu $t1,$a1,$0
                sw $a2,40($t1)
                jr $ra
                nop
fR_R_Rt:    addu $t1,$a0,$0
               addu $t2,$0,$t1
               sw $t2,48($0)
               addu $t3,$0,$t2
               sw $t3,52($0)
               nop
               addu $t4,$t0,$t3
               sw $t4,56($0)
               jr $ra
               nop
fR_MD_Rt: addu $t1,$a1,$0
                mult $a1,$t1
                mfhi $t2
                mflo $t3
                sw $t2,60($0)
                sw $t3,64($0)
                jr $ra
                nop

#   I-and others
fI_B_Rs: addiu $t1,$0,0x300f
             nop
             beq $a2,$t1,beqreturn2
             nop
             addi $k0,$k0,1
             jr $ra
             nop
fI_R_Rs:  addiu $t1,$0,100
             addu $t2,$t1,$0
             sw $t2,68($0)
             addu $t3,$t2,$0
             sw $t3,72($0)
             nop
             addu $t4,$t3,$0
             sw $t4,76($0)
             jr $ra
             nop
fI_I_Rs:   addiu $t1,$0,200
             addiu $t2,$t1,1
             sw $t2,80($0)
             addiu $t3,$t2,2
             nop
             sw $t3,84($0)
             addiu $t4,$t3,3
             sw $t4,88($0)
             jr $ra
             nop
fI_L_Rs: addiu $t1,$0,84
            lw $t2,0($t1)
            lw $t3,4($t1)
            sw $t2,280($0)
            sw $t3,284($0)
            jr $ra
            nop
fI_MD_Rs: addiu $t1,$0,300
                mult $t1,$a1
                mfhi $t2
                mflo $t3
                sw $t2,100($0)
                sw $t3,104($0)
                jr $ra
                nop
fI_MT_Rs:  addiu $t1,$0,400
                mthi $t1
                mfhi $t2
                sw $t2,108($0)
                jr $ra
                nop
fI_S_Rt:     addu $t1,$0,112
                sw $a2,0($t1)
                jr $ra
                nop
fI_R_Rt:    addiu $t1,$0,100
               addu $t2,$0,$t1
               sw $t2,116($0)
               addu $t3,$0,$t2
               sw $t3,120($0)
               nop
               addu $t4,$t0,$t3
               sw $t4,124($0)
               jr $ra
               nop
fI_MD_Rt:  addiu $t1,$0,200
                mult $a1,$t1
                mfhi $t2
                mflo $t3
                sw $t2,128($0)
                sw $t3,132($0)
                jr $ra
                nop
#MF and others
fMF_B_Rs:
             mthi $t1 
             mfhi $t2
             nop
             beq $t2,$t1,beqreturn3
             nop
             addi $k0,$k0,1
             jr $ra
             nop
fMF_R_Rs: 
             mthi $a1
             mfhi $t2
             addu $t3,$t2,$0
             addu $t4,$t2,$0
             sw $t2,136($0)
             sw $t3,140($0)
             sw $t4,8($0)
             jr $ra
             nop
fMF_I_Rs:  
             mthi $a0
             mfhi $t1
             addiu $t2,$t1,1
             addiu $t3,$t1,2
             sw $t1,144($0)
             sw $t2,148($0)
             sw $t3,152($0)
             jr $ra
             nop
fMF_L_Rs: 
            mthi $a1
            mfhi $t1
            lw $t8,20($t1)
            lw $t9,24($t1)
            jr $ra
            nop
fMF_MD_Rs: 
                mthi $a2
                mfhi $t1
                mult $t1,$a1
                mfhi $t2
                mflo $t3
                sw $t2,156($0)
                sw $t3,160($0)
                jr $ra
                nop
fMF_MT_Rs: 
                mthi $a2
                mfhi $t2
                mtlo $t2
                mflo $t3
                sw $t3,164($0)
                jr $ra
                nop
fMF_S_Rt:  mthi $a1
                mfhi $t1
                sw $a2,164($t1)
                jr $ra
                nop
fMF_R_Rt:                 
             mthi $a1
             mfhi $t2
             addu $t3,$0,$t2
             addu $t4,$0,$t2
             sw $t2,172($0)
             sw $t3,176($0)
             sw $t4,180($0)
             jr $ra
             nop
fMF_MD_Rt:  
                mthi $a2
                mfhi $t1
                mult $a1,$t1
                mfhi $t2
                mflo $t3
                sw $t2,184($0)
                sw $t3,188($0)
                jr $ra
                nop
#Load and others
fL_B_Rs:  lw $t1,188($0)
             nop
             beq $t1,$t3,beqreturn4
             nop 
             addi $k0,$k0,1
             jr $ra
             nop
fL_R_Rs:  lw $t1,188($0)
             addu $t2,$t1,$0
             addu $t3,$t1,$0
             sw $t1,192($0)
             sw $t2,196($0)
             sw $t3,200($0)
             nop
             jr $ra
             nop
fL_I_Rs:   lw $t1,200($0)
             addiu $t2,$t1,5
             addiu $t3,$t1,2
             sw $t2,204($0)
             sw $t3,208($0)
             jr $ra
             nop
fL_L_Rs: ori $a1,$0,4
           sw $a1,208($0)
           nop
           nop
           nop
            lw $t1,208($0)
            lw $s5,212($t1)
            lw $s6,216($t1)
            jr $ra
            nop
fL_MD_Rs: lw $t1,208($0)
                mult $t1,$a1
                mfhi $t2
                mflo $t3
                sw $t2,220($0)
                sw $t3,224($0)
                jr $ra
                nop
fL_MT_Rs:  lw $t1,224($0)
                mthi $t1
                mfhi $t2
                sw $t2,228($0)
                jr $ra
                nop
fL_S_Rt: 
               ori $t1,228
               sw $t1,28($0)
               lw $t2,28($0)
                sw $a2,-136($t2)
                jr $ra
                nop
fL_R_Rt:    lw $t1,228($0)
             addu $t2,$0,$t1
             addu $t3,$0,$t1
             sw $t1,232($0)
             sw $t2,236($0)
             sw $t3,240($0)
             nop
             jr $ra
             nop
fL_MD_Rt:  lw $t1,208($0)
                mult $a1,$t1
                mfhi $t2
                mflo $t3
                sw $t2,244($0)
                sw $t3,248($0)
                jr $ra
                nop
#Mult Stop!!
fMD_Stop: mult $a1,$a2
                mfhi $s1
                mflo $s2
                div $a1,$a2
                mfhi $s3
                mflo $s4
                sw $s1,252($0)
                sw $s2,256($0)
                sw $s3,260($0)
                sw $s4,264($0)
                mthi $t2
                mtlo $t3

loop: j loop
        nop


































