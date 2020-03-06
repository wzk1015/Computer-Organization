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
static const char *ng0 = "D:/Computer_Organization/P5/CPU/FORWARD_controller.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {3U, 0U};
static unsigned int ng4[] = {5U, 0U};
static unsigned int ng5[] = {2U, 0U};
static unsigned int ng6[] = {4U, 0U};



static void Always_40_0(char *t0)
{
    char t6[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
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
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    int t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;

LAB0:    t1 = (t0 + 4288U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 4608);
    *((int *)t2) = 1;
    t3 = (t0 + 4320);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(40, ng0);

LAB5:    xsi_set_current_line(42, ng0);
    t4 = (t0 + 1528U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB9;

LAB6:    if (t18 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(44, ng0);

LAB13:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = (t0 + 1848U);
    t4 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t3 + 4);
    t5 = (t4 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t2);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t2);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB17;

LAB14:    if (t18 != 0)
        goto LAB16;

LAB15:    *((unsigned int *)t6) = 1;

LAB17:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB18;

LAB19:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = (t0 + 2168U);
    t4 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t3 + 4);
    t5 = (t4 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t2);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t2);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB31;

LAB28:    if (t18 != 0)
        goto LAB30;

LAB29:    *((unsigned int *)t6) = 1;

LAB31:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB32;

LAB33:    xsi_set_current_line(61, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3208);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);

LAB34:
LAB20:
LAB12:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB47;

LAB44:    if (t18 != 0)
        goto LAB46;

LAB45:    *((unsigned int *)t6) = 1;

LAB47:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB48;

LAB49:    xsi_set_current_line(66, ng0);

LAB51:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = (t0 + 1848U);
    t4 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t3 + 4);
    t5 = (t4 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t2);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t2);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB55;

LAB52:    if (t18 != 0)
        goto LAB54;

LAB53:    *((unsigned int *)t6) = 1;

LAB55:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB56;

LAB57:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = (t0 + 2168U);
    t4 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t3 + 4);
    t5 = (t4 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t2);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t2);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB69;

LAB66:    if (t18 != 0)
        goto LAB68;

LAB67:    *((unsigned int *)t6) = 1;

LAB69:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB70;

LAB71:    xsi_set_current_line(83, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3048);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);

LAB72:
LAB58:
LAB50:    xsi_set_current_line(86, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB85;

LAB82:    if (t18 != 0)
        goto LAB84;

LAB83:    *((unsigned int *)t6) = 1;

LAB85:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB86;

LAB87:    xsi_set_current_line(88, ng0);

LAB89:    xsi_set_current_line(89, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1848U);
    t4 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t3 + 4);
    t5 = (t4 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t2);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t2);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB93;

LAB90:    if (t18 != 0)
        goto LAB92;

LAB91:    *((unsigned int *)t6) = 1;

LAB93:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB94;

LAB95:    xsi_set_current_line(96, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 2168U);
    t4 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t3 + 4);
    t5 = (t4 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t2);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t2);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB107;

LAB104:    if (t18 != 0)
        goto LAB106;

LAB105:    *((unsigned int *)t6) = 1;

LAB107:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB108;

LAB109:    xsi_set_current_line(105, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);

LAB110:
LAB96:
LAB88:    xsi_set_current_line(108, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB123;

LAB120:    if (t18 != 0)
        goto LAB122;

LAB121:    *((unsigned int *)t6) = 1;

LAB123:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB124;

LAB125:    xsi_set_current_line(110, ng0);

LAB127:    xsi_set_current_line(111, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = (t0 + 1848U);
    t4 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t3 + 4);
    t5 = (t4 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t2);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t2);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB131;

LAB128:    if (t18 != 0)
        goto LAB130;

LAB129:    *((unsigned int *)t6) = 1;

LAB131:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB132;

LAB133:    xsi_set_current_line(118, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = (t0 + 2168U);
    t4 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t3 + 4);
    t5 = (t4 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t2);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t2);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB145;

LAB142:    if (t18 != 0)
        goto LAB144;

LAB143:    *((unsigned int *)t6) = 1;

LAB145:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB146;

LAB147:    xsi_set_current_line(127, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);

LAB148:
LAB134:
LAB126:    xsi_set_current_line(130, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB161;

LAB158:    if (t18 != 0)
        goto LAB160;

LAB159:    *((unsigned int *)t6) = 1;

LAB161:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB162;

LAB163:    xsi_set_current_line(132, ng0);

LAB165:    xsi_set_current_line(133, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    t2 = (t0 + 2168U);
    t4 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t3 + 4);
    t5 = (t4 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t2);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t2);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB169;

LAB166:    if (t18 != 0)
        goto LAB168;

LAB167:    *((unsigned int *)t6) = 1;

LAB169:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB170;

LAB171:    xsi_set_current_line(141, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3368);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);

LAB172:
LAB164:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(43, ng0);
    t28 = ((char*)((ng1)));
    t29 = (t0 + 3208);
    xsi_vlogvar_assign_value(t29, t28, 0, 0, 3);
    goto LAB12;

LAB16:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB17;

LAB18:    xsi_set_current_line(45, ng0);

LAB21:    xsi_set_current_line(46, ng0);
    t21 = (t0 + 2008U);
    t22 = *((char **)t21);

LAB22:    t21 = ((char*)((ng2)));
    t30 = xsi_vlog_unsigned_case_compare(t22, 2, t21, 2);
    if (t30 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng3)));
    t30 = xsi_vlog_unsigned_case_compare(t22, 2, t2, 2);
    if (t30 == 1)
        goto LAB25;

LAB26:
LAB27:    goto LAB20;

LAB23:    xsi_set_current_line(47, ng0);
    t28 = ((char*)((ng3)));
    t29 = (t0 + 3208);
    xsi_vlogvar_assign_value(t29, t28, 0, 0, 3);
    goto LAB27;

LAB25:    xsi_set_current_line(48, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 3208);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 3);
    goto LAB27;

LAB30:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB31;

LAB32:    xsi_set_current_line(52, ng0);

LAB35:    xsi_set_current_line(53, ng0);
    t21 = (t0 + 2328U);
    t28 = *((char **)t21);

LAB36:    t21 = ((char*)((ng2)));
    t30 = xsi_vlog_unsigned_case_compare(t28, 2, t21, 2);
    if (t30 == 1)
        goto LAB37;

LAB38:    t2 = ((char*)((ng3)));
    t30 = xsi_vlog_unsigned_case_compare(t28, 2, t2, 2);
    if (t30 == 1)
        goto LAB39;

LAB40:    t2 = ((char*)((ng5)));
    t30 = xsi_vlog_unsigned_case_compare(t28, 2, t2, 2);
    if (t30 == 1)
        goto LAB41;

LAB42:
LAB43:    goto LAB34;

LAB37:    xsi_set_current_line(54, ng0);
    t29 = ((char*)((ng5)));
    t31 = (t0 + 3208);
    xsi_vlogvar_assign_value(t31, t29, 0, 0, 3);
    goto LAB43;

LAB39:    xsi_set_current_line(55, ng0);
    t3 = ((char*)((ng6)));
    t4 = (t0 + 3208);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 3);
    goto LAB43;

LAB41:    xsi_set_current_line(56, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 3208);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 3);
    goto LAB43;

LAB46:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB47;

LAB48:    xsi_set_current_line(65, ng0);
    t21 = ((char*)((ng1)));
    t29 = (t0 + 3048);
    xsi_vlogvar_assign_value(t29, t21, 0, 0, 3);
    goto LAB50;

LAB54:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB55;

LAB56:    xsi_set_current_line(67, ng0);

LAB59:    xsi_set_current_line(68, ng0);
    t21 = (t0 + 2008U);
    t29 = *((char **)t21);

LAB60:    t21 = ((char*)((ng2)));
    t30 = xsi_vlog_unsigned_case_compare(t29, 2, t21, 2);
    if (t30 == 1)
        goto LAB61;

LAB62:    t2 = ((char*)((ng3)));
    t30 = xsi_vlog_unsigned_case_compare(t29, 2, t2, 2);
    if (t30 == 1)
        goto LAB63;

LAB64:
LAB65:    goto LAB58;

LAB61:    xsi_set_current_line(69, ng0);
    t31 = ((char*)((ng3)));
    t32 = (t0 + 3048);
    xsi_vlogvar_assign_value(t32, t31, 0, 0, 3);
    goto LAB65;

LAB63:    xsi_set_current_line(70, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 3048);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 3);
    goto LAB65;

LAB68:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB69;

LAB70:    xsi_set_current_line(74, ng0);

LAB73:    xsi_set_current_line(75, ng0);
    t21 = (t0 + 2328U);
    t31 = *((char **)t21);

LAB74:    t21 = ((char*)((ng2)));
    t30 = xsi_vlog_unsigned_case_compare(t31, 2, t21, 2);
    if (t30 == 1)
        goto LAB75;

LAB76:    t2 = ((char*)((ng3)));
    t30 = xsi_vlog_unsigned_case_compare(t31, 2, t2, 2);
    if (t30 == 1)
        goto LAB77;

LAB78:    t2 = ((char*)((ng5)));
    t30 = xsi_vlog_unsigned_case_compare(t31, 2, t2, 2);
    if (t30 == 1)
        goto LAB79;

LAB80:
LAB81:    goto LAB72;

LAB75:    xsi_set_current_line(76, ng0);
    t32 = ((char*)((ng5)));
    t33 = (t0 + 3048);
    xsi_vlogvar_assign_value(t33, t32, 0, 0, 3);
    goto LAB81;

LAB77:    xsi_set_current_line(77, ng0);
    t3 = ((char*)((ng6)));
    t4 = (t0 + 3048);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 3);
    goto LAB81;

LAB79:    xsi_set_current_line(78, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 3048);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 3);
    goto LAB81;

LAB84:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB85;

LAB86:    xsi_set_current_line(87, ng0);
    t21 = ((char*)((ng1)));
    t32 = (t0 + 2728);
    xsi_vlogvar_assign_value(t32, t21, 0, 0, 3);
    goto LAB88;

LAB92:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB93;

LAB94:    xsi_set_current_line(89, ng0);

LAB97:    xsi_set_current_line(90, ng0);
    t21 = (t0 + 2008U);
    t32 = *((char **)t21);

LAB98:    t21 = ((char*)((ng2)));
    t30 = xsi_vlog_unsigned_case_compare(t32, 2, t21, 2);
    if (t30 == 1)
        goto LAB99;

LAB100:    t2 = ((char*)((ng3)));
    t30 = xsi_vlog_unsigned_case_compare(t32, 2, t2, 2);
    if (t30 == 1)
        goto LAB101;

LAB102:
LAB103:    goto LAB96;

LAB99:    xsi_set_current_line(91, ng0);
    t33 = ((char*)((ng3)));
    t34 = (t0 + 2728);
    xsi_vlogvar_assign_value(t34, t33, 0, 0, 3);
    goto LAB103;

LAB101:    xsi_set_current_line(92, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 2728);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 3);
    goto LAB103;

LAB106:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB107;

LAB108:    xsi_set_current_line(96, ng0);

LAB111:    xsi_set_current_line(97, ng0);
    t21 = (t0 + 2328U);
    t33 = *((char **)t21);

LAB112:    t21 = ((char*)((ng2)));
    t30 = xsi_vlog_unsigned_case_compare(t33, 2, t21, 2);
    if (t30 == 1)
        goto LAB113;

LAB114:    t2 = ((char*)((ng3)));
    t30 = xsi_vlog_unsigned_case_compare(t33, 2, t2, 2);
    if (t30 == 1)
        goto LAB115;

LAB116:    t2 = ((char*)((ng5)));
    t30 = xsi_vlog_unsigned_case_compare(t33, 2, t2, 2);
    if (t30 == 1)
        goto LAB117;

LAB118:
LAB119:    goto LAB110;

LAB113:    xsi_set_current_line(98, ng0);
    t34 = ((char*)((ng5)));
    t35 = (t0 + 2728);
    xsi_vlogvar_assign_value(t35, t34, 0, 0, 3);
    goto LAB119;

LAB115:    xsi_set_current_line(99, ng0);
    t3 = ((char*)((ng6)));
    t4 = (t0 + 2728);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 3);
    goto LAB119;

LAB117:    xsi_set_current_line(100, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 2728);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 3);
    goto LAB119;

LAB122:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB123;

LAB124:    xsi_set_current_line(109, ng0);
    t21 = ((char*)((ng1)));
    t34 = (t0 + 2888);
    xsi_vlogvar_assign_value(t34, t21, 0, 0, 3);
    goto LAB126;

LAB130:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB131;

LAB132:    xsi_set_current_line(111, ng0);

LAB135:    xsi_set_current_line(112, ng0);
    t21 = (t0 + 2008U);
    t34 = *((char **)t21);

LAB136:    t21 = ((char*)((ng2)));
    t30 = xsi_vlog_unsigned_case_compare(t34, 2, t21, 2);
    if (t30 == 1)
        goto LAB137;

LAB138:    t2 = ((char*)((ng3)));
    t30 = xsi_vlog_unsigned_case_compare(t34, 2, t2, 2);
    if (t30 == 1)
        goto LAB139;

LAB140:
LAB141:    goto LAB134;

LAB137:    xsi_set_current_line(113, ng0);
    t35 = ((char*)((ng3)));
    t36 = (t0 + 2888);
    xsi_vlogvar_assign_value(t36, t35, 0, 0, 3);
    goto LAB141;

LAB139:    xsi_set_current_line(114, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 2888);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 3);
    goto LAB141;

LAB144:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB145;

LAB146:    xsi_set_current_line(118, ng0);

LAB149:    xsi_set_current_line(119, ng0);
    t21 = (t0 + 2328U);
    t35 = *((char **)t21);

LAB150:    t21 = ((char*)((ng2)));
    t30 = xsi_vlog_unsigned_case_compare(t35, 2, t21, 2);
    if (t30 == 1)
        goto LAB151;

LAB152:    t2 = ((char*)((ng3)));
    t30 = xsi_vlog_unsigned_case_compare(t35, 2, t2, 2);
    if (t30 == 1)
        goto LAB153;

LAB154:    t2 = ((char*)((ng5)));
    t30 = xsi_vlog_unsigned_case_compare(t35, 2, t2, 2);
    if (t30 == 1)
        goto LAB155;

LAB156:
LAB157:    goto LAB148;

LAB151:    xsi_set_current_line(120, ng0);
    t36 = ((char*)((ng5)));
    t37 = (t0 + 2888);
    xsi_vlogvar_assign_value(t37, t36, 0, 0, 3);
    goto LAB157;

LAB153:    xsi_set_current_line(121, ng0);
    t3 = ((char*)((ng6)));
    t4 = (t0 + 2888);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 3);
    goto LAB157;

LAB155:    xsi_set_current_line(122, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 2888);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 3);
    goto LAB157;

LAB160:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB161;

LAB162:    xsi_set_current_line(131, ng0);
    t21 = ((char*)((ng1)));
    t36 = (t0 + 3368);
    xsi_vlogvar_assign_value(t36, t21, 0, 0, 3);
    goto LAB164;

LAB168:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB169;

LAB170:    xsi_set_current_line(133, ng0);

LAB173:    xsi_set_current_line(134, ng0);
    t21 = (t0 + 2328U);
    t36 = *((char **)t21);

LAB174:    t21 = ((char*)((ng2)));
    t30 = xsi_vlog_unsigned_case_compare(t36, 2, t21, 2);
    if (t30 == 1)
        goto LAB175;

LAB176:    t2 = ((char*)((ng3)));
    t30 = xsi_vlog_unsigned_case_compare(t36, 2, t2, 2);
    if (t30 == 1)
        goto LAB177;

LAB178:    t2 = ((char*)((ng5)));
    t30 = xsi_vlog_unsigned_case_compare(t36, 2, t2, 2);
    if (t30 == 1)
        goto LAB179;

LAB180:
LAB181:    goto LAB172;

LAB175:    xsi_set_current_line(135, ng0);
    t37 = ((char*)((ng2)));
    t38 = (t0 + 3368);
    xsi_vlogvar_assign_value(t38, t37, 0, 0, 3);
    goto LAB181;

LAB177:    xsi_set_current_line(136, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 3368);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 3);
    goto LAB181;

LAB179:    xsi_set_current_line(137, ng0);
    t3 = ((char*)((ng5)));
    t4 = (t0 + 3368);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 3);
    goto LAB181;

}


extern void work_m_00000000003324499704_2618856524_init()
{
	static char *pe[] = {(void *)Always_40_0};
	xsi_register_didat("work_m_00000000003324499704_2618856524", "isim/tb_mips_isim_beh.exe.sim/work/m_00000000003324499704_2618856524.didat");
	xsi_register_executes(pe);
}
