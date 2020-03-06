.data
$LC0:
        .ascii  "%d\000"
$LC1:
        .ascii  "%d \000"
.text
main:
        addiu   $sp,$sp,-1248
        sw      $31,1244($sp)
        sw      $fp,1240($sp)
        move    $fp,$sp
        addiu   $2,$fp,36
        move    $5,$2
        lui     $2,%hi($LC0)
        addiu   $4,$2,%lo($LC0)
        jal     scanf
        nop

        sw      $0,24($fp)
$L5:
        lw      $2,36($fp)
        lw      $3,24($fp)
        nop
        slt     $2,$3,$2
        beq     $2,$0,$L2
        nop

        sw      $0,28($fp)
$L4:
        lw      $2,36($fp)
        lw      $3,28($fp)
        nop
        slt     $2,$3,$2
        beq     $2,$0,$L3
        nop

        addiu   $3,$fp,40
        lw      $2,24($fp)
        nop
        sll     $2,$2,1
        sll     $4,$2,2
        addu    $2,$2,$4
        lw      $4,28($fp)
        nop
        addu    $2,$2,$4
        sll     $2,$2,2
        addu    $2,$3,$2
        move    $5,$2
        lui     $2,%hi($LC0)
        addiu   $4,$2,%lo($LC0)
        jal     scanf
        nop

        lw      $2,28($fp)
        nop
        addiu   $2,$2,1
        sw      $2,28($fp)
        b       $L4
        nop

$L3:
        lw      $2,24($fp)
        nop
        addiu   $2,$2,1
        sw      $2,24($fp)
        b       $L5
        nop

$L2:
        sw      $0,24($fp)
$L9:
        lw      $2,36($fp)
        lw      $3,24($fp)
        nop
        slt     $2,$3,$2
        beq     $2,$0,$L6
        nop

        sw      $0,28($fp)
$L8:
        lw      $2,36($fp)
        lw      $3,28($fp)
        nop
        slt     $2,$3,$2
        beq     $2,$0,$L7
        nop

        addiu   $3,$fp,440
        lw      $2,24($fp)
        nop
        sll     $2,$2,1
        sll     $4,$2,2
        addu    $2,$2,$4
        lw      $4,28($fp)
        nop
        addu    $2,$2,$4
        sll     $2,$2,2
        addu    $2,$3,$2
        move    $5,$2
        lui     $2,%hi($LC0)
        addiu   $4,$2,%lo($LC0)
        jal     scanf
        nop

        lw      $2,28($fp)
        nop
        addiu   $2,$2,1
        sw      $2,28($fp)
        b       $L8
        nop

$L7:
        lw      $2,24($fp)
        nop
        addiu   $2,$2,1
        sw      $2,24($fp)
        b       $L9
        nop

$L6:
        sw      $0,24($fp)
$L15:
        lw      $2,36($fp)
        lw      $3,24($fp)
        nop
        slt     $2,$3,$2
        beq     $2,$0,$L10
        nop

        sw      $0,28($fp)
$L14:
        lw      $2,36($fp)
        lw      $3,28($fp)
        nop
        slt     $2,$3,$2
        beq     $2,$0,$L11
        nop

        lw      $2,24($fp)
        nop
        sll     $2,$2,1
        sll     $3,$2,2
        addu    $2,$2,$3
        lw      $3,28($fp)
        nop
        addu    $2,$2,$3
        sll     $2,$2,2
        addiu   $3,$fp,24
        addu    $2,$3,$2
        sw      $0,816($2)
        sw      $0,32($fp)
$L13:
        lw      $2,36($fp)
        lw      $3,32($fp)
        nop
        slt     $2,$3,$2
        beq     $2,$0,$L12
        nop

        lw      $2,24($fp)
        nop
        sll     $2,$2,1
        sll     $3,$2,2
        addu    $2,$2,$3
        lw      $3,28($fp)
        nop
        addu    $2,$2,$3
        sll     $2,$2,2
        addiu   $3,$fp,24
        addu    $2,$3,$2
        lw      $3,816($2)
        lw      $2,24($fp)
        nop
        sll     $2,$2,1
        sll     $4,$2,2
        addu    $2,$2,$4
        lw      $4,32($fp)
        nop
        addu    $2,$2,$4
        sll     $2,$2,2
        addiu   $4,$fp,24
        addu    $2,$4,$2
        lw      $4,16($2)
        lw      $2,32($fp)
        nop
        sll     $2,$2,1
        sll     $5,$2,2
        addu    $2,$2,$5
        lw      $5,28($fp)
        nop
        addu    $2,$2,$5
        sll     $2,$2,2
        addiu   $5,$fp,24
        addu    $2,$5,$2
        lw      $2,416($2)
        nop
        mult    $4,$2
        mflo    $2
        addu    $3,$3,$2
        lw      $2,24($fp)
        nop
        sll     $2,$2,1
        sll     $4,$2,2
        addu    $2,$2,$4
        lw      $4,28($fp)
        nop
        addu    $2,$2,$4
        sll     $2,$2,2
        addiu   $4,$fp,24
        addu    $2,$4,$2
        sw      $3,816($2)
        lw      $2,32($fp)
        nop
        addiu   $2,$2,1
        sw      $2,32($fp)
        b       $L13
        nop

$L12:
        lw      $2,28($fp)
        nop
        addiu   $2,$2,1
        sw      $2,28($fp)
        b       $L14
        nop

$L11:
        lw      $2,24($fp)
        nop
        addiu   $2,$2,1
        sw      $2,24($fp)
        b       $L15
        nop

$L10:
        sw      $0,24($fp)
$L19:
        lw      $2,36($fp)
        lw      $3,24($fp)
        nop
        slt     $2,$3,$2
        beq     $2,$0,$L16
        nop

        sw      $0,28($fp)
$L18:
        lw      $2,36($fp)
        lw      $3,28($fp)
        nop
        slt     $2,$3,$2
        beq     $2,$0,$L17
        nop

        lw      $2,24($fp)
        nop
        sll     $2,$2,1
        sll     $3,$2,2
        addu    $2,$2,$3
        lw      $3,28($fp)
        nop
        addu    $2,$2,$3
        sll     $2,$2,2
        addiu   $3,$fp,24
        addu    $2,$3,$2
        lw      $2,816($2)
        nop
        move    $5,$2
        lui     $2,%hi($LC1)
        addiu   $4,$2,%lo($LC1)
        jal     printf
        nop

        lw      $2,28($fp)
        nop
        addiu   $2,$2,1
        sw      $2,28($fp)
        b       $L18
        nop

$L17:
        li      $4,10                 # 0xa
        jal     putchar
        nop

        lw      $2,24($fp)
        nop
        addiu   $2,$2,1
        sw      $2,24($fp)
        b       $L19
        nop

$L16:
        move    $2,$0
        move    $sp,$fp
        lw      $31,1244($sp)
        lw      $fp,1240($sp)
        addiu   $sp,$sp,1248
        j       $31
        nop