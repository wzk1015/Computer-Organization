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
static const char *ng0 = "D:/Computer_Organization/P6/CPU_decoder/MUX_forward.v";
static unsigned int ng1[] = {1U, 0U};
static unsigned int ng2[] = {2U, 0U};
static int ng3[] = {4, 0};
static unsigned int ng4[] = {6U, 0U};
static unsigned int ng5[] = {7U, 0U};
static unsigned int ng6[] = {3U, 0U};
static unsigned int ng7[] = {5U, 0U};
static unsigned int ng8[] = {4U, 0U};
static unsigned int ng9[] = {8U, 0U};
static unsigned int ng10[] = {9U, 0U};
static int ng11[] = {0, 0};



static void Always_101_0(char *t0)
{
    char t9[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;

LAB0:    t1 = (t0 + 3968U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(101, ng0);
    t2 = (t0 + 4288);
    *((int *)t2) = 1;
    t3 = (t0 + 4000);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(101, ng0);

LAB5:    xsi_set_current_line(102, ng0);
    t4 = (t0 + 1368U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t4, 32);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 32);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 32);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 32);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 32);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 32);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 32);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 32);
    if (t6 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng10)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 32);
    if (t6 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng11)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 32);
    if (t6 == 1)
        goto LAB25;

LAB26:
LAB28:
LAB27:    xsi_set_current_line(113, ng0);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 3048);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB29:    goto LAB2;

LAB7:    xsi_set_current_line(103, ng0);
    t7 = (t0 + 1528U);
    t8 = *((char **)t7);
    t7 = (t0 + 3048);
    xsi_vlogvar_assign_value(t7, t8, 0, 0, 32);
    goto LAB29;

LAB9:    xsi_set_current_line(104, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng3)));
    memset(t9, 0, 8);
    xsi_vlog_unsigned_add(t9, 32, t4, 32, t3, 32);
    t7 = (t0 + 3048);
    xsi_vlogvar_assign_value(t7, t9, 0, 0, 32);
    goto LAB29;

LAB11:    xsi_set_current_line(105, ng0);
    t3 = (t0 + 2168U);
    t4 = *((char **)t3);
    t3 = (t0 + 3048);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB29;

LAB13:    xsi_set_current_line(106, ng0);
    t3 = (t0 + 2328U);
    t4 = *((char **)t3);
    t3 = (t0 + 3048);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB29;

LAB15:    xsi_set_current_line(107, ng0);
    t3 = (t0 + 1688U);
    t4 = *((char **)t3);
    t3 = (t0 + 3048);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB29;

LAB17:    xsi_set_current_line(108, ng0);
    t3 = (t0 + 1848U);
    t4 = *((char **)t3);
    t3 = (t0 + 3048);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB29;

LAB19:    xsi_set_current_line(109, ng0);
    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng3)));
    memset(t9, 0, 8);
    xsi_vlog_unsigned_add(t9, 32, t4, 32, t3, 32);
    t7 = (t0 + 3048);
    xsi_vlogvar_assign_value(t7, t9, 0, 0, 32);
    goto LAB29;

LAB21:    xsi_set_current_line(110, ng0);
    t3 = (t0 + 2488U);
    t4 = *((char **)t3);
    t3 = (t0 + 3048);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB29;

LAB23:    xsi_set_current_line(111, ng0);
    t3 = (t0 + 2648U);
    t4 = *((char **)t3);
    t3 = (t0 + 3048);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB29;

LAB25:    xsi_set_current_line(112, ng0);
    t3 = (t0 + 2008U);
    t4 = *((char **)t3);
    t3 = (t0 + 3048);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB29;

}


extern void work_m_00000000002063433318_0143159866_init()
{
	static char *pe[] = {(void *)Always_101_0};
	xsi_register_didat("work_m_00000000002063433318_0143159866", "isim/tb_mips_isim_beh.exe.sim/work/m_00000000002063433318_0143159866.didat");
	xsi_register_executes(pe);
}
