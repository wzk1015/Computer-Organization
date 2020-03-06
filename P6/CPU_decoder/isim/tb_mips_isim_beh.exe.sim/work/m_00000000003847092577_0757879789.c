/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/Computer_Organization/P6/CPU_decoder/D.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {14, 0};
static int ng3[] = {4, 0};
static unsigned int ng4[] = {12288U, 0U};



static void Cont_109_0(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;

LAB0:    t1 = (t0 + 3328U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(109, ng0);
    t2 = (t0 + 1048U);
    t4 = *((char **)t2);
    memset(t3, 0, 8);
    t2 = (t3 + 4);
    t5 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 0);
    *((unsigned int *)t3) = t7;
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 0);
    *((unsigned int *)t2) = t9;
    t10 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t10 & 67108863U);
    t11 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t11 & 67108863U);
    t12 = (t0 + 3992);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memset(t16, 0, 8);
    t17 = 67108863U;
    t18 = t17;
    t19 = (t3 + 4);
    t20 = *((unsigned int *)t3);
    t17 = (t17 & t20);
    t21 = *((unsigned int *)t19);
    t18 = (t18 & t21);
    t22 = (t16 + 4);
    t23 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t23 | t17);
    t24 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t24 | t18);
    xsi_driver_vfirst_trans(t12, 0, 25);
    t25 = (t0 + 3896);
    *((int *)t25) = 1;

LAB1:    return;
}

static void Always_110_1(char *t0)
{
    char t11[8];
    char t13[8];
    char t23[8];
    char t34[8];
    char t41[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t12;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t24;
    char *t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    char *t42;

LAB0:    t1 = (t0 + 3576U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(110, ng0);
    t2 = (t0 + 3912);
    *((int *)t2) = 1;
    t3 = (t0 + 3608);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(110, ng0);

LAB5:    xsi_set_current_line(111, ng0);
    t4 = (t0 + 1688U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(114, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(120, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB12:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(111, ng0);

LAB9:    xsi_set_current_line(112, ng0);
    t12 = ((char*)((ng1)));
    t14 = (t0 + 2008U);
    t15 = *((char **)t14);
    memset(t13, 0, 8);
    t14 = (t13 + 4);
    t16 = (t15 + 4);
    t17 = *((unsigned int *)t15);
    t18 = (t17 >> 0);
    *((unsigned int *)t13) = t18;
    t19 = *((unsigned int *)t16);
    t20 = (t19 >> 0);
    *((unsigned int *)t14) = t20;
    t21 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t21 & 67108863U);
    t22 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t22 & 67108863U);
    t24 = (t0 + 1208U);
    t25 = *((char **)t24);
    memset(t23, 0, 8);
    t24 = (t23 + 4);
    t26 = (t25 + 4);
    t27 = *((unsigned int *)t25);
    t28 = (t27 >> 28);
    *((unsigned int *)t23) = t28;
    t29 = *((unsigned int *)t26);
    t30 = (t29 >> 28);
    *((unsigned int *)t24) = t30;
    t31 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t31 & 15U);
    t32 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t32 & 15U);
    xsi_vlogtype_concat(t11, 32, 32, 3U, t23, 4, t13, 26, t12, 2);
    t33 = (t0 + 2408);
    xsi_vlogvar_assign_value(t33, t11, 0, 0, 32);
    goto LAB8;

LAB10:    xsi_set_current_line(114, ng0);

LAB13:    xsi_set_current_line(115, ng0);
    t4 = (t0 + 1368U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t17 = *((unsigned int *)t4);
    t18 = (~(t17));
    t19 = *((unsigned int *)t5);
    t20 = (t19 & t18);
    t21 = (t20 != 0);
    if (t21 > 0)
        goto LAB14;

LAB15:    xsi_set_current_line(118, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng3)));
    memset(t11, 0, 8);
    xsi_vlog_unsigned_add(t11, 32, t3, 32, t2, 32);
    t4 = (t0 + 2408);
    xsi_vlogvar_assign_value(t4, t11, 0, 0, 32);

LAB16:    goto LAB12;

LAB14:    xsi_set_current_line(116, ng0);
    t12 = (t0 + 1208U);
    t14 = *((char **)t12);
    t12 = ((char*)((ng1)));
    t15 = (t0 + 2008U);
    t16 = *((char **)t15);
    memset(t13, 0, 8);
    t15 = (t13 + 4);
    t24 = (t16 + 4);
    t22 = *((unsigned int *)t16);
    t27 = (t22 >> 0);
    *((unsigned int *)t13) = t27;
    t28 = *((unsigned int *)t24);
    t29 = (t28 >> 0);
    *((unsigned int *)t15) = t29;
    t30 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t30 & 65535U);
    t31 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t31 & 65535U);
    t25 = ((char*)((ng2)));
    t26 = (t0 + 2008U);
    t33 = *((char **)t26);
    memset(t34, 0, 8);
    t26 = (t34 + 4);
    t35 = (t33 + 4);
    t32 = *((unsigned int *)t33);
    t36 = (t32 >> 15);
    t37 = (t36 & 1);
    *((unsigned int *)t34) = t37;
    t38 = *((unsigned int *)t35);
    t39 = (t38 >> 15);
    t40 = (t39 & 1);
    *((unsigned int *)t26) = t40;
    xsi_vlog_mul_concat(t23, 14, 1, t25, 1U, t34, 1);
    xsi_vlogtype_concat(t11, 32, 32, 3U, t23, 14, t13, 16, t12, 2);
    memset(t41, 0, 8);
    xsi_vlog_unsigned_add(t41, 32, t14, 32, t11, 32);
    t42 = (t0 + 2408);
    xsi_vlogvar_assign_value(t42, t41, 0, 0, 32);
    goto LAB16;

}


extern void work_m_00000000003847092577_0757879789_init()
{
	static char *pe[] = {(void *)Cont_109_0,(void *)Always_110_1};
	xsi_register_didat("work_m_00000000003847092577_0757879789", "isim/tb_mips_isim_beh.exe.sim/work/m_00000000003847092577_0757879789.didat");
	xsi_register_executes(pe);
}
