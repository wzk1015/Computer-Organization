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
static const char *ng0 = "D:/Computer_Organization/P4/CPU/ALU.v";
static int ng1[] = {1, 0};
static int ng2[] = {0, 0};
static unsigned int ng3[] = {0U, 0U};
static unsigned int ng4[] = {1U, 0U};
static unsigned int ng5[] = {2U, 0U};
static unsigned int ng6[] = {3U, 0U};



static void Always_30_0(char *t0)
{
    char t4[8];
    char t5[8];
    char t9[8];
    char *t1;
    char *t2;
    char *t3;
    char *t6;
    char *t7;
    char *t8;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t41;
    int t42;
    int t43;
    int t44;

LAB0:    t1 = (t0 + 2848U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 3168);
    *((int *)t2) = 1;
    t3 = (t0 + 2880);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(30, ng0);

LAB5:    xsi_set_current_line(31, ng0);
    t6 = (t0 + 1048U);
    t7 = *((char **)t6);
    t6 = (t0 + 1208U);
    t8 = *((char **)t6);
    memset(t9, 0, 8);
    t6 = (t7 + 4);
    t10 = (t8 + 4);
    t11 = *((unsigned int *)t7);
    t12 = *((unsigned int *)t8);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t10);
    t16 = (t14 ^ t15);
    t17 = (t13 | t16);
    t18 = *((unsigned int *)t6);
    t19 = *((unsigned int *)t10);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB9;

LAB6:    if (t20 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t9) = 1;

LAB9:    memset(t5, 0, 8);
    t24 = (t9 + 4);
    t25 = *((unsigned int *)t24);
    t26 = (~(t25));
    t27 = *((unsigned int *)t9);
    t28 = (t27 & t26);
    t29 = (t28 & 1U);
    if (t29 != 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t24) != 0)
        goto LAB12;

LAB13:    t31 = (t5 + 4);
    t32 = *((unsigned int *)t5);
    t33 = *((unsigned int *)t31);
    t34 = (t32 || t33);
    if (t34 > 0)
        goto LAB14;

LAB15:    t36 = *((unsigned int *)t5);
    t37 = (~(t36));
    t38 = *((unsigned int *)t31);
    t39 = (t37 || t38);
    if (t39 > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t31) > 0)
        goto LAB18;

LAB19:    if (*((unsigned int *)t5) > 0)
        goto LAB20;

LAB21:    memcpy(t4, t40, 8);

LAB22:    t41 = (t0 + 1928);
    xsi_vlogvar_assign_value(t41, t4, 0, 0, 1);
    xsi_set_current_line(32, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);

LAB23:    t2 = ((char*)((ng3)));
    t42 = xsi_vlog_unsigned_case_compare(t3, 2, t2, 2);
    if (t42 == 1)
        goto LAB24;

LAB25:    t2 = ((char*)((ng4)));
    t42 = xsi_vlog_unsigned_case_compare(t3, 2, t2, 2);
    if (t42 == 1)
        goto LAB26;

LAB27:    t2 = ((char*)((ng5)));
    t42 = xsi_vlog_unsigned_case_compare(t3, 2, t2, 2);
    if (t42 == 1)
        goto LAB28;

LAB29:    t2 = ((char*)((ng6)));
    t42 = xsi_vlog_unsigned_case_compare(t3, 2, t2, 2);
    if (t42 == 1)
        goto LAB30;

LAB31:
LAB33:
LAB32:    xsi_set_current_line(37, ng0);
    t2 = ((char*)((ng2)));
    t6 = (t0 + 1768);
    xsi_vlogvar_assign_value(t6, t2, 0, 0, 32);

LAB34:    goto LAB2;

LAB8:    t23 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t23) = 1;
    goto LAB9;

LAB10:    *((unsigned int *)t5) = 1;
    goto LAB13;

LAB12:    t30 = (t5 + 4);
    *((unsigned int *)t5) = 1;
    *((unsigned int *)t30) = 1;
    goto LAB13;

LAB14:    t35 = ((char*)((ng1)));
    goto LAB15;

LAB16:    t40 = ((char*)((ng2)));
    goto LAB17;

LAB18:    xsi_vlog_unsigned_bit_combine(t4, 32, t35, 32, t40, 32);
    goto LAB22;

LAB20:    memcpy(t4, t35, 8);
    goto LAB22;

LAB24:    xsi_set_current_line(33, ng0);
    t6 = (t0 + 1048U);
    t7 = *((char **)t6);
    t6 = (t0 + 1208U);
    t8 = *((char **)t6);
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 32, t7, 32, t8, 32);
    t6 = (t0 + 1768);
    xsi_vlogvar_assign_value(t6, t4, 0, 0, 32);
    goto LAB34;

LAB26:    xsi_set_current_line(34, ng0);
    t6 = (t0 + 1048U);
    t7 = *((char **)t6);
    t6 = (t0 + 1208U);
    t8 = *((char **)t6);
    memset(t4, 0, 8);
    xsi_vlog_unsigned_minus(t4, 32, t7, 32, t8, 32);
    t6 = (t0 + 1768);
    xsi_vlogvar_assign_value(t6, t4, 0, 0, 32);
    goto LAB34;

LAB28:    xsi_set_current_line(35, ng0);
    t6 = (t0 + 1048U);
    t7 = *((char **)t6);
    t6 = (t0 + 1208U);
    t8 = *((char **)t6);
    t11 = *((unsigned int *)t7);
    t12 = *((unsigned int *)t8);
    t13 = (t11 | t12);
    *((unsigned int *)t4) = t13;
    t6 = (t7 + 4);
    t10 = (t8 + 4);
    t23 = (t4 + 4);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t10);
    t16 = (t14 | t15);
    *((unsigned int *)t23) = t16;
    t17 = *((unsigned int *)t23);
    t18 = (t17 != 0);
    if (t18 == 1)
        goto LAB35;

LAB36:
LAB37:    t31 = (t0 + 1768);
    xsi_vlogvar_assign_value(t31, t4, 0, 0, 32);
    goto LAB34;

LAB30:    xsi_set_current_line(36, ng0);
    t6 = ((char*)((ng2)));
    t7 = (t0 + 1768);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    goto LAB34;

LAB35:    t19 = *((unsigned int *)t4);
    t20 = *((unsigned int *)t23);
    *((unsigned int *)t4) = (t19 | t20);
    t24 = (t7 + 4);
    t30 = (t8 + 4);
    t21 = *((unsigned int *)t24);
    t22 = (~(t21));
    t25 = *((unsigned int *)t7);
    t43 = (t25 & t22);
    t26 = *((unsigned int *)t30);
    t27 = (~(t26));
    t28 = *((unsigned int *)t8);
    t44 = (t28 & t27);
    t29 = (~(t43));
    t32 = (~(t44));
    t33 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t33 & t29);
    t34 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t34 & t32);
    goto LAB37;

}


extern void work_m_00000000002339666591_0886308060_init()
{
	static char *pe[] = {(void *)Always_30_0};
	xsi_register_didat("work_m_00000000002339666591_0886308060", "isim/tb_mips_isim_beh.exe.sim/work/m_00000000002339666591_0886308060.didat");
	xsi_register_executes(pe);
}
