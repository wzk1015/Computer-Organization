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
static const char *ng0 = "D:/Computer_Organization/P5/CPU/STOP_controller.v";
static unsigned int ng1[] = {1U, 0U};
static unsigned int ng2[] = {2U, 0U};



static void Always_38_0(char *t0)
{
    char t6[8];
    char t19[8];
    char t35[8];
    char t43[8];
    char t75[8];
    char t87[8];
    char t99[8];
    char t114[8];
    char t122[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    char *t18;
    char *t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    char *t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    char *t42;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    char *t47;
    char *t48;
    char *t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    char *t57;
    char *t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    int t67;
    int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    char *t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    char *t82;
    char *t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    char *t88;
    char *t89;
    char *t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    char *t97;
    char *t98;
    char *t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    char *t113;
    char *t115;
    unsigned int t116;
    unsigned int t117;
    unsigned int t118;
    unsigned int t119;
    unsigned int t120;
    char *t121;
    unsigned int t123;
    unsigned int t124;
    unsigned int t125;
    char *t126;
    char *t127;
    char *t128;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    unsigned int t132;
    unsigned int t133;
    unsigned int t134;
    unsigned int t135;
    char *t136;
    char *t137;
    unsigned int t138;
    unsigned int t139;
    unsigned int t140;
    unsigned int t141;
    unsigned int t142;
    unsigned int t143;
    unsigned int t144;
    unsigned int t145;
    int t146;
    int t147;
    unsigned int t148;
    unsigned int t149;
    unsigned int t150;
    unsigned int t151;
    unsigned int t152;
    unsigned int t153;
    char *t154;
    char *t155;
    char *t156;
    char *t157;
    char *t158;
    char *t159;
    char *t160;
    int t161;
    int t162;
    char *t163;

LAB0:    t1 = (t0 + 5408U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 5728);
    *((int *)t2) = 1;
    t3 = (t0 + 5440);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(38, ng0);

LAB5:    xsi_set_current_line(39, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    memset(t6, 0, 8);
    t4 = (t5 + 4);
    t7 = *((unsigned int *)t4);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB6;

LAB7:    if (*((unsigned int *)t4) != 0)
        goto LAB8;

LAB9:    t13 = (t6 + 4);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t13);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB10;

LAB11:    memcpy(t43, t6, 8);

LAB12:    memset(t75, 0, 8);
    t76 = (t43 + 4);
    t77 = *((unsigned int *)t76);
    t78 = (~(t77));
    t79 = *((unsigned int *)t43);
    t80 = (t79 & t78);
    t81 = (t80 & 1U);
    if (t81 != 0)
        goto LAB24;

LAB25:    if (*((unsigned int *)t76) != 0)
        goto LAB26;

LAB27:    t83 = (t75 + 4);
    t84 = *((unsigned int *)t75);
    t85 = *((unsigned int *)t83);
    t86 = (t84 || t85);
    if (t86 > 0)
        goto LAB28;

LAB29:    memcpy(t122, t75, 8);

LAB30:    t154 = (t0 + 3048);
    xsi_vlogvar_assign_value(t154, t122, 0, 0, 1);
    xsi_set_current_line(40, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB42;

LAB43:    if (*((unsigned int *)t2) != 0)
        goto LAB44;

LAB45:    t5 = (t6 + 4);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t5);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB46;

LAB47:    memcpy(t43, t6, 8);

LAB48:    memset(t75, 0, 8);
    t57 = (t43 + 4);
    t77 = *((unsigned int *)t57);
    t78 = (~(t77));
    t79 = *((unsigned int *)t43);
    t80 = (t79 & t78);
    t81 = (t80 & 1U);
    if (t81 != 0)
        goto LAB60;

LAB61:    if (*((unsigned int *)t57) != 0)
        goto LAB62;

LAB63:    t76 = (t75 + 4);
    t84 = *((unsigned int *)t75);
    t85 = *((unsigned int *)t76);
    t86 = (t84 || t85);
    if (t86 > 0)
        goto LAB64;

LAB65:    memcpy(t122, t75, 8);

LAB66:    t136 = (t0 + 3208);
    xsi_vlogvar_assign_value(t136, t122, 0, 0, 1);
    xsi_set_current_line(41, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB78;

LAB79:    if (*((unsigned int *)t2) != 0)
        goto LAB80;

LAB81:    t5 = (t6 + 4);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t5);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB82;

LAB83:    memcpy(t43, t6, 8);

LAB84:    memset(t75, 0, 8);
    t57 = (t43 + 4);
    t77 = *((unsigned int *)t57);
    t78 = (~(t77));
    t79 = *((unsigned int *)t43);
    t80 = (t79 & t78);
    t81 = (t80 & 1U);
    if (t81 != 0)
        goto LAB96;

LAB97:    if (*((unsigned int *)t57) != 0)
        goto LAB98;

LAB99:    t76 = (t75 + 4);
    t84 = *((unsigned int *)t75);
    t85 = *((unsigned int *)t76);
    t86 = (t84 || t85);
    if (t86 > 0)
        goto LAB100;

LAB101:    memcpy(t122, t75, 8);

LAB102:    t136 = (t0 + 3368);
    xsi_vlogvar_assign_value(t136, t122, 0, 0, 1);
    xsi_set_current_line(42, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB114;

LAB115:    if (*((unsigned int *)t2) != 0)
        goto LAB116;

LAB117:    t5 = (t6 + 4);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t5);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB118;

LAB119:    memcpy(t43, t6, 8);

LAB120:    memset(t75, 0, 8);
    t57 = (t43 + 4);
    t77 = *((unsigned int *)t57);
    t78 = (~(t77));
    t79 = *((unsigned int *)t43);
    t80 = (t79 & t78);
    t81 = (t80 & 1U);
    if (t81 != 0)
        goto LAB132;

LAB133:    if (*((unsigned int *)t57) != 0)
        goto LAB134;

LAB135:    t76 = (t75 + 4);
    t84 = *((unsigned int *)t75);
    t85 = *((unsigned int *)t76);
    t86 = (t84 || t85);
    if (t86 > 0)
        goto LAB136;

LAB137:    memcpy(t122, t75, 8);

LAB138:    t136 = (t0 + 3528);
    xsi_vlogvar_assign_value(t136, t122, 0, 0, 1);
    xsi_set_current_line(43, ng0);
    t2 = (t0 + 3048);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t6, 0, 8);
    t5 = (t4 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (~(t7));
    t9 = *((unsigned int *)t4);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB150;

LAB151:    if (*((unsigned int *)t5) != 0)
        goto LAB152;

LAB153:    t13 = (t6 + 4);
    t14 = *((unsigned int *)t6);
    t15 = (!(t14));
    t16 = *((unsigned int *)t13);
    t22 = (t15 || t16);
    if (t22 > 0)
        goto LAB154;

LAB155:    memcpy(t35, t6, 8);

LAB156:    memset(t43, 0, 8);
    t57 = (t35 + 4);
    t56 = *((unsigned int *)t57);
    t59 = (~(t56));
    t60 = *((unsigned int *)t35);
    t61 = (t60 & t59);
    t62 = (t61 & 1U);
    if (t62 != 0)
        goto LAB164;

LAB165:    if (*((unsigned int *)t57) != 0)
        goto LAB166;

LAB167:    t76 = (t43 + 4);
    t63 = *((unsigned int *)t43);
    t64 = (!(t63));
    t65 = *((unsigned int *)t76);
    t66 = (t64 || t65);
    if (t66 > 0)
        goto LAB168;

LAB169:    memcpy(t87, t43, 8);

LAB170:    memset(t99, 0, 8);
    t121 = (t87 + 4);
    t106 = *((unsigned int *)t121);
    t107 = (~(t106));
    t108 = *((unsigned int *)t87);
    t109 = (t108 & t107);
    t110 = (t109 & 1U);
    if (t110 != 0)
        goto LAB178;

LAB179:    if (*((unsigned int *)t121) != 0)
        goto LAB180;

LAB181:    t127 = (t99 + 4);
    t111 = *((unsigned int *)t99);
    t112 = (!(t111));
    t116 = *((unsigned int *)t127);
    t117 = (t112 || t116);
    if (t117 > 0)
        goto LAB182;

LAB183:    memcpy(t122, t99, 8);

LAB184:    t163 = (t0 + 3688);
    xsi_vlogvar_assign_value(t163, t122, 0, 0, 1);
    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB192;

LAB193:    if (*((unsigned int *)t2) != 0)
        goto LAB194;

LAB195:    t5 = (t6 + 4);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t5);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB196;

LAB197:    memcpy(t43, t6, 8);

LAB198:    memset(t75, 0, 8);
    t57 = (t43 + 4);
    t77 = *((unsigned int *)t57);
    t78 = (~(t77));
    t79 = *((unsigned int *)t43);
    t80 = (t79 & t78);
    t81 = (t80 & 1U);
    if (t81 != 0)
        goto LAB210;

LAB211:    if (*((unsigned int *)t57) != 0)
        goto LAB212;

LAB213:    t76 = (t75 + 4);
    t84 = *((unsigned int *)t75);
    t85 = *((unsigned int *)t76);
    t86 = (t84 || t85);
    if (t86 > 0)
        goto LAB214;

LAB215:    memcpy(t122, t75, 8);

LAB216:    t136 = (t0 + 3848);
    xsi_vlogvar_assign_value(t136, t122, 0, 0, 1);
    xsi_set_current_line(46, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB228;

LAB229:    if (*((unsigned int *)t2) != 0)
        goto LAB230;

LAB231:    t5 = (t6 + 4);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t5);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB232;

LAB233:    memcpy(t43, t6, 8);

LAB234:    memset(t75, 0, 8);
    t57 = (t43 + 4);
    t77 = *((unsigned int *)t57);
    t78 = (~(t77));
    t79 = *((unsigned int *)t43);
    t80 = (t79 & t78);
    t81 = (t80 & 1U);
    if (t81 != 0)
        goto LAB246;

LAB247:    if (*((unsigned int *)t57) != 0)
        goto LAB248;

LAB249:    t76 = (t75 + 4);
    t84 = *((unsigned int *)t75);
    t85 = *((unsigned int *)t76);
    t86 = (t84 || t85);
    if (t86 > 0)
        goto LAB250;

LAB251:    memcpy(t122, t75, 8);

LAB252:    t136 = (t0 + 4008);
    xsi_vlogvar_assign_value(t136, t122, 0, 0, 1);
    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB264;

LAB265:    if (*((unsigned int *)t2) != 0)
        goto LAB266;

LAB267:    t5 = (t6 + 4);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t5);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB268;

LAB269:    memcpy(t43, t6, 8);

LAB270:    memset(t75, 0, 8);
    t57 = (t43 + 4);
    t77 = *((unsigned int *)t57);
    t78 = (~(t77));
    t79 = *((unsigned int *)t43);
    t80 = (t79 & t78);
    t81 = (t80 & 1U);
    if (t81 != 0)
        goto LAB282;

LAB283:    if (*((unsigned int *)t57) != 0)
        goto LAB284;

LAB285:    t76 = (t75 + 4);
    t84 = *((unsigned int *)t75);
    t85 = *((unsigned int *)t76);
    t86 = (t84 || t85);
    if (t86 > 0)
        goto LAB286;

LAB287:    memcpy(t122, t75, 8);

LAB288:    t136 = (t0 + 4168);
    xsi_vlogvar_assign_value(t136, t122, 0, 0, 1);
    xsi_set_current_line(48, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB300;

LAB301:    if (*((unsigned int *)t2) != 0)
        goto LAB302;

LAB303:    t5 = (t6 + 4);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t5);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB304;

LAB305:    memcpy(t43, t6, 8);

LAB306:    memset(t75, 0, 8);
    t57 = (t43 + 4);
    t77 = *((unsigned int *)t57);
    t78 = (~(t77));
    t79 = *((unsigned int *)t43);
    t80 = (t79 & t78);
    t81 = (t80 & 1U);
    if (t81 != 0)
        goto LAB318;

LAB319:    if (*((unsigned int *)t57) != 0)
        goto LAB320;

LAB321:    t76 = (t75 + 4);
    t84 = *((unsigned int *)t75);
    t85 = *((unsigned int *)t76);
    t86 = (t84 || t85);
    if (t86 > 0)
        goto LAB322;

LAB323:    memcpy(t122, t75, 8);

LAB324:    t136 = (t0 + 4328);
    xsi_vlogvar_assign_value(t136, t122, 0, 0, 1);
    xsi_set_current_line(49, ng0);
    t2 = (t0 + 3848);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t6, 0, 8);
    t5 = (t4 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (~(t7));
    t9 = *((unsigned int *)t4);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB336;

LAB337:    if (*((unsigned int *)t5) != 0)
        goto LAB338;

LAB339:    t13 = (t6 + 4);
    t14 = *((unsigned int *)t6);
    t15 = (!(t14));
    t16 = *((unsigned int *)t13);
    t22 = (t15 || t16);
    if (t22 > 0)
        goto LAB340;

LAB341:    memcpy(t35, t6, 8);

LAB342:    memset(t43, 0, 8);
    t57 = (t35 + 4);
    t56 = *((unsigned int *)t57);
    t59 = (~(t56));
    t60 = *((unsigned int *)t35);
    t61 = (t60 & t59);
    t62 = (t61 & 1U);
    if (t62 != 0)
        goto LAB350;

LAB351:    if (*((unsigned int *)t57) != 0)
        goto LAB352;

LAB353:    t76 = (t43 + 4);
    t63 = *((unsigned int *)t43);
    t64 = (!(t63));
    t65 = *((unsigned int *)t76);
    t66 = (t64 || t65);
    if (t66 > 0)
        goto LAB354;

LAB355:    memcpy(t87, t43, 8);

LAB356:    memset(t99, 0, 8);
    t121 = (t87 + 4);
    t106 = *((unsigned int *)t121);
    t107 = (~(t106));
    t108 = *((unsigned int *)t87);
    t109 = (t108 & t107);
    t110 = (t109 & 1U);
    if (t110 != 0)
        goto LAB364;

LAB365:    if (*((unsigned int *)t121) != 0)
        goto LAB366;

LAB367:    t127 = (t99 + 4);
    t111 = *((unsigned int *)t99);
    t112 = (!(t111));
    t116 = *((unsigned int *)t127);
    t117 = (t112 || t116);
    if (t117 > 0)
        goto LAB368;

LAB369:    memcpy(t122, t99, 8);

LAB370:    t163 = (t0 + 4488);
    xsi_vlogvar_assign_value(t163, t122, 0, 0, 1);
    xsi_set_current_line(51, ng0);
    t2 = (t0 + 3688);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t6, 0, 8);
    t5 = (t4 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (~(t7));
    t9 = *((unsigned int *)t4);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB378;

LAB379:    if (*((unsigned int *)t5) != 0)
        goto LAB380;

LAB381:    t13 = (t6 + 4);
    t14 = *((unsigned int *)t6);
    t15 = (!(t14));
    t16 = *((unsigned int *)t13);
    t22 = (t15 || t16);
    if (t22 > 0)
        goto LAB382;

LAB383:    memcpy(t35, t6, 8);

LAB384:    t57 = (t0 + 2888);
    xsi_vlogvar_assign_value(t57, t35, 0, 0, 1);
    goto LAB2;

LAB6:    *((unsigned int *)t6) = 1;
    goto LAB9;

LAB8:    t12 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB9;

LAB10:    t17 = (t0 + 2328U);
    t18 = *((char **)t17);
    t17 = ((char*)((ng1)));
    memset(t19, 0, 8);
    t20 = (t18 + 4);
    t21 = (t17 + 4);
    t22 = *((unsigned int *)t18);
    t23 = *((unsigned int *)t17);
    t24 = (t22 ^ t23);
    t25 = *((unsigned int *)t20);
    t26 = *((unsigned int *)t21);
    t27 = (t25 ^ t26);
    t28 = (t24 | t27);
    t29 = *((unsigned int *)t20);
    t30 = *((unsigned int *)t21);
    t31 = (t29 | t30);
    t32 = (~(t31));
    t33 = (t28 & t32);
    if (t33 != 0)
        goto LAB16;

LAB13:    if (t31 != 0)
        goto LAB15;

LAB14:    *((unsigned int *)t19) = 1;

LAB16:    memset(t35, 0, 8);
    t36 = (t19 + 4);
    t37 = *((unsigned int *)t36);
    t38 = (~(t37));
    t39 = *((unsigned int *)t19);
    t40 = (t39 & t38);
    t41 = (t40 & 1U);
    if (t41 != 0)
        goto LAB17;

LAB18:    if (*((unsigned int *)t36) != 0)
        goto LAB19;

LAB20:    t44 = *((unsigned int *)t6);
    t45 = *((unsigned int *)t35);
    t46 = (t44 & t45);
    *((unsigned int *)t43) = t46;
    t47 = (t6 + 4);
    t48 = (t35 + 4);
    t49 = (t43 + 4);
    t50 = *((unsigned int *)t47);
    t51 = *((unsigned int *)t48);
    t52 = (t50 | t51);
    *((unsigned int *)t49) = t52;
    t53 = *((unsigned int *)t49);
    t54 = (t53 != 0);
    if (t54 == 1)
        goto LAB21;

LAB22:
LAB23:    goto LAB12;

LAB15:    t34 = (t19 + 4);
    *((unsigned int *)t19) = 1;
    *((unsigned int *)t34) = 1;
    goto LAB16;

LAB17:    *((unsigned int *)t35) = 1;
    goto LAB20;

LAB19:    t42 = (t35 + 4);
    *((unsigned int *)t35) = 1;
    *((unsigned int *)t42) = 1;
    goto LAB20;

LAB21:    t55 = *((unsigned int *)t43);
    t56 = *((unsigned int *)t49);
    *((unsigned int *)t43) = (t55 | t56);
    t57 = (t6 + 4);
    t58 = (t35 + 4);
    t59 = *((unsigned int *)t6);
    t60 = (~(t59));
    t61 = *((unsigned int *)t57);
    t62 = (~(t61));
    t63 = *((unsigned int *)t35);
    t64 = (~(t63));
    t65 = *((unsigned int *)t58);
    t66 = (~(t65));
    t67 = (t60 & t62);
    t68 = (t64 & t66);
    t69 = (~(t67));
    t70 = (~(t68));
    t71 = *((unsigned int *)t49);
    *((unsigned int *)t49) = (t71 & t69);
    t72 = *((unsigned int *)t49);
    *((unsigned int *)t49) = (t72 & t70);
    t73 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t73 & t69);
    t74 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t74 & t70);
    goto LAB23;

LAB24:    *((unsigned int *)t75) = 1;
    goto LAB27;

LAB26:    t82 = (t75 + 4);
    *((unsigned int *)t75) = 1;
    *((unsigned int *)t82) = 1;
    goto LAB27;

LAB28:    t88 = (t0 + 1848U);
    t89 = *((char **)t88);
    memset(t87, 0, 8);
    t88 = (t87 + 4);
    t90 = (t89 + 4);
    t91 = *((unsigned int *)t89);
    t92 = (t91 >> 21);
    *((unsigned int *)t87) = t92;
    t93 = *((unsigned int *)t90);
    t94 = (t93 >> 21);
    *((unsigned int *)t88) = t94;
    t95 = *((unsigned int *)t87);
    *((unsigned int *)t87) = (t95 & 31U);
    t96 = *((unsigned int *)t88);
    *((unsigned int *)t88) = (t96 & 31U);
    t97 = (t0 + 2008U);
    t98 = *((char **)t97);
    memset(t99, 0, 8);
    t97 = (t87 + 4);
    t100 = (t98 + 4);
    t101 = *((unsigned int *)t87);
    t102 = *((unsigned int *)t98);
    t103 = (t101 ^ t102);
    t104 = *((unsigned int *)t97);
    t105 = *((unsigned int *)t100);
    t106 = (t104 ^ t105);
    t107 = (t103 | t106);
    t108 = *((unsigned int *)t97);
    t109 = *((unsigned int *)t100);
    t110 = (t108 | t109);
    t111 = (~(t110));
    t112 = (t107 & t111);
    if (t112 != 0)
        goto LAB34;

LAB31:    if (t110 != 0)
        goto LAB33;

LAB32:    *((unsigned int *)t99) = 1;

LAB34:    memset(t114, 0, 8);
    t115 = (t99 + 4);
    t116 = *((unsigned int *)t115);
    t117 = (~(t116));
    t118 = *((unsigned int *)t99);
    t119 = (t118 & t117);
    t120 = (t119 & 1U);
    if (t120 != 0)
        goto LAB35;

LAB36:    if (*((unsigned int *)t115) != 0)
        goto LAB37;

LAB38:    t123 = *((unsigned int *)t75);
    t124 = *((unsigned int *)t114);
    t125 = (t123 & t124);
    *((unsigned int *)t122) = t125;
    t126 = (t75 + 4);
    t127 = (t114 + 4);
    t128 = (t122 + 4);
    t129 = *((unsigned int *)t126);
    t130 = *((unsigned int *)t127);
    t131 = (t129 | t130);
    *((unsigned int *)t128) = t131;
    t132 = *((unsigned int *)t128);
    t133 = (t132 != 0);
    if (t133 == 1)
        goto LAB39;

LAB40:
LAB41:    goto LAB30;

LAB33:    t113 = (t99 + 4);
    *((unsigned int *)t99) = 1;
    *((unsigned int *)t113) = 1;
    goto LAB34;

LAB35:    *((unsigned int *)t114) = 1;
    goto LAB38;

LAB37:    t121 = (t114 + 4);
    *((unsigned int *)t114) = 1;
    *((unsigned int *)t121) = 1;
    goto LAB38;

LAB39:    t134 = *((unsigned int *)t122);
    t135 = *((unsigned int *)t128);
    *((unsigned int *)t122) = (t134 | t135);
    t136 = (t75 + 4);
    t137 = (t114 + 4);
    t138 = *((unsigned int *)t75);
    t139 = (~(t138));
    t140 = *((unsigned int *)t136);
    t141 = (~(t140));
    t142 = *((unsigned int *)t114);
    t143 = (~(t142));
    t144 = *((unsigned int *)t137);
    t145 = (~(t144));
    t146 = (t139 & t141);
    t147 = (t143 & t145);
    t148 = (~(t146));
    t149 = (~(t147));
    t150 = *((unsigned int *)t128);
    *((unsigned int *)t128) = (t150 & t148);
    t151 = *((unsigned int *)t128);
    *((unsigned int *)t128) = (t151 & t149);
    t152 = *((unsigned int *)t122);
    *((unsigned int *)t122) = (t152 & t148);
    t153 = *((unsigned int *)t122);
    *((unsigned int *)t122) = (t153 & t149);
    goto LAB41;

LAB42:    *((unsigned int *)t6) = 1;
    goto LAB45;

LAB44:    t4 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t4) = 1;
    goto LAB45;

LAB46:    t12 = (t0 + 2328U);
    t13 = *((char **)t12);
    t12 = ((char*)((ng2)));
    memset(t19, 0, 8);
    t17 = (t13 + 4);
    t18 = (t12 + 4);
    t22 = *((unsigned int *)t13);
    t23 = *((unsigned int *)t12);
    t24 = (t22 ^ t23);
    t25 = *((unsigned int *)t17);
    t26 = *((unsigned int *)t18);
    t27 = (t25 ^ t26);
    t28 = (t24 | t27);
    t29 = *((unsigned int *)t17);
    t30 = *((unsigned int *)t18);
    t31 = (t29 | t30);
    t32 = (~(t31));
    t33 = (t28 & t32);
    if (t33 != 0)
        goto LAB52;

LAB49:    if (t31 != 0)
        goto LAB51;

LAB50:    *((unsigned int *)t19) = 1;

LAB52:    memset(t35, 0, 8);
    t21 = (t19 + 4);
    t37 = *((unsigned int *)t21);
    t38 = (~(t37));
    t39 = *((unsigned int *)t19);
    t40 = (t39 & t38);
    t41 = (t40 & 1U);
    if (t41 != 0)
        goto LAB53;

LAB54:    if (*((unsigned int *)t21) != 0)
        goto LAB55;

LAB56:    t44 = *((unsigned int *)t6);
    t45 = *((unsigned int *)t35);
    t46 = (t44 & t45);
    *((unsigned int *)t43) = t46;
    t36 = (t6 + 4);
    t42 = (t35 + 4);
    t47 = (t43 + 4);
    t50 = *((unsigned int *)t36);
    t51 = *((unsigned int *)t42);
    t52 = (t50 | t51);
    *((unsigned int *)t47) = t52;
    t53 = *((unsigned int *)t47);
    t54 = (t53 != 0);
    if (t54 == 1)
        goto LAB57;

LAB58:
LAB59:    goto LAB48;

LAB51:    t20 = (t19 + 4);
    *((unsigned int *)t19) = 1;
    *((unsigned int *)t20) = 1;
    goto LAB52;

LAB53:    *((unsigned int *)t35) = 1;
    goto LAB56;

LAB55:    t34 = (t35 + 4);
    *((unsigned int *)t35) = 1;
    *((unsigned int *)t34) = 1;
    goto LAB56;

LAB57:    t55 = *((unsigned int *)t43);
    t56 = *((unsigned int *)t47);
    *((unsigned int *)t43) = (t55 | t56);
    t48 = (t6 + 4);
    t49 = (t35 + 4);
    t59 = *((unsigned int *)t6);
    t60 = (~(t59));
    t61 = *((unsigned int *)t48);
    t62 = (~(t61));
    t63 = *((unsigned int *)t35);
    t64 = (~(t63));
    t65 = *((unsigned int *)t49);
    t66 = (~(t65));
    t67 = (t60 & t62);
    t68 = (t64 & t66);
    t69 = (~(t67));
    t70 = (~(t68));
    t71 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t71 & t69);
    t72 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t72 & t70);
    t73 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t73 & t69);
    t74 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t74 & t70);
    goto LAB59;

LAB60:    *((unsigned int *)t75) = 1;
    goto LAB63;

LAB62:    t58 = (t75 + 4);
    *((unsigned int *)t75) = 1;
    *((unsigned int *)t58) = 1;
    goto LAB63;

LAB64:    t82 = (t0 + 1848U);
    t83 = *((char **)t82);
    memset(t87, 0, 8);
    t82 = (t87 + 4);
    t88 = (t83 + 4);
    t91 = *((unsigned int *)t83);
    t92 = (t91 >> 21);
    *((unsigned int *)t87) = t92;
    t93 = *((unsigned int *)t88);
    t94 = (t93 >> 21);
    *((unsigned int *)t82) = t94;
    t95 = *((unsigned int *)t87);
    *((unsigned int *)t87) = (t95 & 31U);
    t96 = *((unsigned int *)t82);
    *((unsigned int *)t82) = (t96 & 31U);
    t89 = (t0 + 2008U);
    t90 = *((char **)t89);
    memset(t99, 0, 8);
    t89 = (t87 + 4);
    t97 = (t90 + 4);
    t101 = *((unsigned int *)t87);
    t102 = *((unsigned int *)t90);
    t103 = (t101 ^ t102);
    t104 = *((unsigned int *)t89);
    t105 = *((unsigned int *)t97);
    t106 = (t104 ^ t105);
    t107 = (t103 | t106);
    t108 = *((unsigned int *)t89);
    t109 = *((unsigned int *)t97);
    t110 = (t108 | t109);
    t111 = (~(t110));
    t112 = (t107 & t111);
    if (t112 != 0)
        goto LAB70;

LAB67:    if (t110 != 0)
        goto LAB69;

LAB68:    *((unsigned int *)t99) = 1;

LAB70:    memset(t114, 0, 8);
    t100 = (t99 + 4);
    t116 = *((unsigned int *)t100);
    t117 = (~(t116));
    t118 = *((unsigned int *)t99);
    t119 = (t118 & t117);
    t120 = (t119 & 1U);
    if (t120 != 0)
        goto LAB71;

LAB72:    if (*((unsigned int *)t100) != 0)
        goto LAB73;

LAB74:    t123 = *((unsigned int *)t75);
    t124 = *((unsigned int *)t114);
    t125 = (t123 & t124);
    *((unsigned int *)t122) = t125;
    t115 = (t75 + 4);
    t121 = (t114 + 4);
    t126 = (t122 + 4);
    t129 = *((unsigned int *)t115);
    t130 = *((unsigned int *)t121);
    t131 = (t129 | t130);
    *((unsigned int *)t126) = t131;
    t132 = *((unsigned int *)t126);
    t133 = (t132 != 0);
    if (t133 == 1)
        goto LAB75;

LAB76:
LAB77:    goto LAB66;

LAB69:    t98 = (t99 + 4);
    *((unsigned int *)t99) = 1;
    *((unsigned int *)t98) = 1;
    goto LAB70;

LAB71:    *((unsigned int *)t114) = 1;
    goto LAB74;

LAB73:    t113 = (t114 + 4);
    *((unsigned int *)t114) = 1;
    *((unsigned int *)t113) = 1;
    goto LAB74;

LAB75:    t134 = *((unsigned int *)t122);
    t135 = *((unsigned int *)t126);
    *((unsigned int *)t122) = (t134 | t135);
    t127 = (t75 + 4);
    t128 = (t114 + 4);
    t138 = *((unsigned int *)t75);
    t139 = (~(t138));
    t140 = *((unsigned int *)t127);
    t141 = (~(t140));
    t142 = *((unsigned int *)t114);
    t143 = (~(t142));
    t144 = *((unsigned int *)t128);
    t145 = (~(t144));
    t146 = (t139 & t141);
    t147 = (t143 & t145);
    t148 = (~(t146));
    t149 = (~(t147));
    t150 = *((unsigned int *)t126);
    *((unsigned int *)t126) = (t150 & t148);
    t151 = *((unsigned int *)t126);
    *((unsigned int *)t126) = (t151 & t149);
    t152 = *((unsigned int *)t122);
    *((unsigned int *)t122) = (t152 & t148);
    t153 = *((unsigned int *)t122);
    *((unsigned int *)t122) = (t153 & t149);
    goto LAB77;

LAB78:    *((unsigned int *)t6) = 1;
    goto LAB81;

LAB80:    t4 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t4) = 1;
    goto LAB81;

LAB82:    t12 = (t0 + 2328U);
    t13 = *((char **)t12);
    t12 = ((char*)((ng2)));
    memset(t19, 0, 8);
    t17 = (t13 + 4);
    t18 = (t12 + 4);
    t22 = *((unsigned int *)t13);
    t23 = *((unsigned int *)t12);
    t24 = (t22 ^ t23);
    t25 = *((unsigned int *)t17);
    t26 = *((unsigned int *)t18);
    t27 = (t25 ^ t26);
    t28 = (t24 | t27);
    t29 = *((unsigned int *)t17);
    t30 = *((unsigned int *)t18);
    t31 = (t29 | t30);
    t32 = (~(t31));
    t33 = (t28 & t32);
    if (t33 != 0)
        goto LAB88;

LAB85:    if (t31 != 0)
        goto LAB87;

LAB86:    *((unsigned int *)t19) = 1;

LAB88:    memset(t35, 0, 8);
    t21 = (t19 + 4);
    t37 = *((unsigned int *)t21);
    t38 = (~(t37));
    t39 = *((unsigned int *)t19);
    t40 = (t39 & t38);
    t41 = (t40 & 1U);
    if (t41 != 0)
        goto LAB89;

LAB90:    if (*((unsigned int *)t21) != 0)
        goto LAB91;

LAB92:    t44 = *((unsigned int *)t6);
    t45 = *((unsigned int *)t35);
    t46 = (t44 & t45);
    *((unsigned int *)t43) = t46;
    t36 = (t6 + 4);
    t42 = (t35 + 4);
    t47 = (t43 + 4);
    t50 = *((unsigned int *)t36);
    t51 = *((unsigned int *)t42);
    t52 = (t50 | t51);
    *((unsigned int *)t47) = t52;
    t53 = *((unsigned int *)t47);
    t54 = (t53 != 0);
    if (t54 == 1)
        goto LAB93;

LAB94:
LAB95:    goto LAB84;

LAB87:    t20 = (t19 + 4);
    *((unsigned int *)t19) = 1;
    *((unsigned int *)t20) = 1;
    goto LAB88;

LAB89:    *((unsigned int *)t35) = 1;
    goto LAB92;

LAB91:    t34 = (t35 + 4);
    *((unsigned int *)t35) = 1;
    *((unsigned int *)t34) = 1;
    goto LAB92;

LAB93:    t55 = *((unsigned int *)t43);
    t56 = *((unsigned int *)t47);
    *((unsigned int *)t43) = (t55 | t56);
    t48 = (t6 + 4);
    t49 = (t35 + 4);
    t59 = *((unsigned int *)t6);
    t60 = (~(t59));
    t61 = *((unsigned int *)t48);
    t62 = (~(t61));
    t63 = *((unsigned int *)t35);
    t64 = (~(t63));
    t65 = *((unsigned int *)t49);
    t66 = (~(t65));
    t67 = (t60 & t62);
    t68 = (t64 & t66);
    t69 = (~(t67));
    t70 = (~(t68));
    t71 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t71 & t69);
    t72 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t72 & t70);
    t73 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t73 & t69);
    t74 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t74 & t70);
    goto LAB95;

LAB96:    *((unsigned int *)t75) = 1;
    goto LAB99;

LAB98:    t58 = (t75 + 4);
    *((unsigned int *)t75) = 1;
    *((unsigned int *)t58) = 1;
    goto LAB99;

LAB100:    t82 = (t0 + 1848U);
    t83 = *((char **)t82);
    memset(t87, 0, 8);
    t82 = (t87 + 4);
    t88 = (t83 + 4);
    t91 = *((unsigned int *)t83);
    t92 = (t91 >> 21);
    *((unsigned int *)t87) = t92;
    t93 = *((unsigned int *)t88);
    t94 = (t93 >> 21);
    *((unsigned int *)t82) = t94;
    t95 = *((unsigned int *)t87);
    *((unsigned int *)t87) = (t95 & 31U);
    t96 = *((unsigned int *)t82);
    *((unsigned int *)t82) = (t96 & 31U);
    t89 = (t0 + 2008U);
    t90 = *((char **)t89);
    memset(t99, 0, 8);
    t89 = (t87 + 4);
    t97 = (t90 + 4);
    t101 = *((unsigned int *)t87);
    t102 = *((unsigned int *)t90);
    t103 = (t101 ^ t102);
    t104 = *((unsigned int *)t89);
    t105 = *((unsigned int *)t97);
    t106 = (t104 ^ t105);
    t107 = (t103 | t106);
    t108 = *((unsigned int *)t89);
    t109 = *((unsigned int *)t97);
    t110 = (t108 | t109);
    t111 = (~(t110));
    t112 = (t107 & t111);
    if (t112 != 0)
        goto LAB106;

LAB103:    if (t110 != 0)
        goto LAB105;

LAB104:    *((unsigned int *)t99) = 1;

LAB106:    memset(t114, 0, 8);
    t100 = (t99 + 4);
    t116 = *((unsigned int *)t100);
    t117 = (~(t116));
    t118 = *((unsigned int *)t99);
    t119 = (t118 & t117);
    t120 = (t119 & 1U);
    if (t120 != 0)
        goto LAB107;

LAB108:    if (*((unsigned int *)t100) != 0)
        goto LAB109;

LAB110:    t123 = *((unsigned int *)t75);
    t124 = *((unsigned int *)t114);
    t125 = (t123 & t124);
    *((unsigned int *)t122) = t125;
    t115 = (t75 + 4);
    t121 = (t114 + 4);
    t126 = (t122 + 4);
    t129 = *((unsigned int *)t115);
    t130 = *((unsigned int *)t121);
    t131 = (t129 | t130);
    *((unsigned int *)t126) = t131;
    t132 = *((unsigned int *)t126);
    t133 = (t132 != 0);
    if (t133 == 1)
        goto LAB111;

LAB112:
LAB113:    goto LAB102;

LAB105:    t98 = (t99 + 4);
    *((unsigned int *)t99) = 1;
    *((unsigned int *)t98) = 1;
    goto LAB106;

LAB107:    *((unsigned int *)t114) = 1;
    goto LAB110;

LAB109:    t113 = (t114 + 4);
    *((unsigned int *)t114) = 1;
    *((unsigned int *)t113) = 1;
    goto LAB110;

LAB111:    t134 = *((unsigned int *)t122);
    t135 = *((unsigned int *)t126);
    *((unsigned int *)t122) = (t134 | t135);
    t127 = (t75 + 4);
    t128 = (t114 + 4);
    t138 = *((unsigned int *)t75);
    t139 = (~(t138));
    t140 = *((unsigned int *)t127);
    t141 = (~(t140));
    t142 = *((unsigned int *)t114);
    t143 = (~(t142));
    t144 = *((unsigned int *)t128);
    t145 = (~(t144));
    t146 = (t139 & t141);
    t147 = (t143 & t145);
    t148 = (~(t146));
    t149 = (~(t147));
    t150 = *((unsigned int *)t126);
    *((unsigned int *)t126) = (t150 & t148);
    t151 = *((unsigned int *)t126);
    *((unsigned int *)t126) = (t151 & t149);
    t152 = *((unsigned int *)t122);
    *((unsigned int *)t122) = (t152 & t148);
    t153 = *((unsigned int *)t122);
    *((unsigned int *)t122) = (t153 & t149);
    goto LAB113;

LAB114:    *((unsigned int *)t6) = 1;
    goto LAB117;

LAB116:    t4 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t4) = 1;
    goto LAB117;

LAB118:    t12 = (t0 + 2488U);
    t13 = *((char **)t12);
    t12 = ((char*)((ng2)));
    memset(t19, 0, 8);
    t17 = (t13 + 4);
    t18 = (t12 + 4);
    t22 = *((unsigned int *)t13);
    t23 = *((unsigned int *)t12);
    t24 = (t22 ^ t23);
    t25 = *((unsigned int *)t17);
    t26 = *((unsigned int *)t18);
    t27 = (t25 ^ t26);
    t28 = (t24 | t27);
    t29 = *((unsigned int *)t17);
    t30 = *((unsigned int *)t18);
    t31 = (t29 | t30);
    t32 = (~(t31));
    t33 = (t28 & t32);
    if (t33 != 0)
        goto LAB124;

LAB121:    if (t31 != 0)
        goto LAB123;

LAB122:    *((unsigned int *)t19) = 1;

LAB124:    memset(t35, 0, 8);
    t21 = (t19 + 4);
    t37 = *((unsigned int *)t21);
    t38 = (~(t37));
    t39 = *((unsigned int *)t19);
    t40 = (t39 & t38);
    t41 = (t40 & 1U);
    if (t41 != 0)
        goto LAB125;

LAB126:    if (*((unsigned int *)t21) != 0)
        goto LAB127;

LAB128:    t44 = *((unsigned int *)t6);
    t45 = *((unsigned int *)t35);
    t46 = (t44 & t45);
    *((unsigned int *)t43) = t46;
    t36 = (t6 + 4);
    t42 = (t35 + 4);
    t47 = (t43 + 4);
    t50 = *((unsigned int *)t36);
    t51 = *((unsigned int *)t42);
    t52 = (t50 | t51);
    *((unsigned int *)t47) = t52;
    t53 = *((unsigned int *)t47);
    t54 = (t53 != 0);
    if (t54 == 1)
        goto LAB129;

LAB130:
LAB131:    goto LAB120;

LAB123:    t20 = (t19 + 4);
    *((unsigned int *)t19) = 1;
    *((unsigned int *)t20) = 1;
    goto LAB124;

LAB125:    *((unsigned int *)t35) = 1;
    goto LAB128;

LAB127:    t34 = (t35 + 4);
    *((unsigned int *)t35) = 1;
    *((unsigned int *)t34) = 1;
    goto LAB128;

LAB129:    t55 = *((unsigned int *)t43);
    t56 = *((unsigned int *)t47);
    *((unsigned int *)t43) = (t55 | t56);
    t48 = (t6 + 4);
    t49 = (t35 + 4);
    t59 = *((unsigned int *)t6);
    t60 = (~(t59));
    t61 = *((unsigned int *)t48);
    t62 = (~(t61));
    t63 = *((unsigned int *)t35);
    t64 = (~(t63));
    t65 = *((unsigned int *)t49);
    t66 = (~(t65));
    t67 = (t60 & t62);
    t68 = (t64 & t66);
    t69 = (~(t67));
    t70 = (~(t68));
    t71 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t71 & t69);
    t72 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t72 & t70);
    t73 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t73 & t69);
    t74 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t74 & t70);
    goto LAB131;

LAB132:    *((unsigned int *)t75) = 1;
    goto LAB135;

LAB134:    t58 = (t75 + 4);
    *((unsigned int *)t75) = 1;
    *((unsigned int *)t58) = 1;
    goto LAB135;

LAB136:    t82 = (t0 + 1848U);
    t83 = *((char **)t82);
    memset(t87, 0, 8);
    t82 = (t87 + 4);
    t88 = (t83 + 4);
    t91 = *((unsigned int *)t83);
    t92 = (t91 >> 21);
    *((unsigned int *)t87) = t92;
    t93 = *((unsigned int *)t88);
    t94 = (t93 >> 21);
    *((unsigned int *)t82) = t94;
    t95 = *((unsigned int *)t87);
    *((unsigned int *)t87) = (t95 & 31U);
    t96 = *((unsigned int *)t82);
    *((unsigned int *)t82) = (t96 & 31U);
    t89 = (t0 + 2168U);
    t90 = *((char **)t89);
    memset(t99, 0, 8);
    t89 = (t87 + 4);
    t97 = (t90 + 4);
    t101 = *((unsigned int *)t87);
    t102 = *((unsigned int *)t90);
    t103 = (t101 ^ t102);
    t104 = *((unsigned int *)t89);
    t105 = *((unsigned int *)t97);
    t106 = (t104 ^ t105);
    t107 = (t103 | t106);
    t108 = *((unsigned int *)t89);
    t109 = *((unsigned int *)t97);
    t110 = (t108 | t109);
    t111 = (~(t110));
    t112 = (t107 & t111);
    if (t112 != 0)
        goto LAB142;

LAB139:    if (t110 != 0)
        goto LAB141;

LAB140:    *((unsigned int *)t99) = 1;

LAB142:    memset(t114, 0, 8);
    t100 = (t99 + 4);
    t116 = *((unsigned int *)t100);
    t117 = (~(t116));
    t118 = *((unsigned int *)t99);
    t119 = (t118 & t117);
    t120 = (t119 & 1U);
    if (t120 != 0)
        goto LAB143;

LAB144:    if (*((unsigned int *)t100) != 0)
        goto LAB145;

LAB146:    t123 = *((unsigned int *)t75);
    t124 = *((unsigned int *)t114);
    t125 = (t123 & t124);
    *((unsigned int *)t122) = t125;
    t115 = (t75 + 4);
    t121 = (t114 + 4);
    t126 = (t122 + 4);
    t129 = *((unsigned int *)t115);
    t130 = *((unsigned int *)t121);
    t131 = (t129 | t130);
    *((unsigned int *)t126) = t131;
    t132 = *((unsigned int *)t126);
    t133 = (t132 != 0);
    if (t133 == 1)
        goto LAB147;

LAB148:
LAB149:    goto LAB138;

LAB141:    t98 = (t99 + 4);
    *((unsigned int *)t99) = 1;
    *((unsigned int *)t98) = 1;
    goto LAB142;

LAB143:    *((unsigned int *)t114) = 1;
    goto LAB146;

LAB145:    t113 = (t114 + 4);
    *((unsigned int *)t114) = 1;
    *((unsigned int *)t113) = 1;
    goto LAB146;

LAB147:    t134 = *((unsigned int *)t122);
    t135 = *((unsigned int *)t126);
    *((unsigned int *)t122) = (t134 | t135);
    t127 = (t75 + 4);
    t128 = (t114 + 4);
    t138 = *((unsigned int *)t75);
    t139 = (~(t138));
    t140 = *((unsigned int *)t127);
    t141 = (~(t140));
    t142 = *((unsigned int *)t114);
    t143 = (~(t142));
    t144 = *((unsigned int *)t128);
    t145 = (~(t144));
    t146 = (t139 & t141);
    t147 = (t143 & t145);
    t148 = (~(t146));
    t149 = (~(t147));
    t150 = *((unsigned int *)t126);
    *((unsigned int *)t126) = (t150 & t148);
    t151 = *((unsigned int *)t126);
    *((unsigned int *)t126) = (t151 & t149);
    t152 = *((unsigned int *)t122);
    *((unsigned int *)t122) = (t152 & t148);
    t153 = *((unsigned int *)t122);
    *((unsigned int *)t122) = (t153 & t149);
    goto LAB149;

LAB150:    *((unsigned int *)t6) = 1;
    goto LAB153;

LAB152:    t12 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB153;

LAB154:    t17 = (t0 + 3208);
    t18 = (t17 + 56U);
    t20 = *((char **)t18);
    memset(t19, 0, 8);
    t21 = (t20 + 4);
    t23 = *((unsigned int *)t21);
    t24 = (~(t23));
    t25 = *((unsigned int *)t20);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB157;

LAB158:    if (*((unsigned int *)t21) != 0)
        goto LAB159;

LAB160:    t28 = *((unsigned int *)t6);
    t29 = *((unsigned int *)t19);
    t30 = (t28 | t29);
    *((unsigned int *)t35) = t30;
    t36 = (t6 + 4);
    t42 = (t19 + 4);
    t47 = (t35 + 4);
    t31 = *((unsigned int *)t36);
    t32 = *((unsigned int *)t42);
    t33 = (t31 | t32);
    *((unsigned int *)t47) = t33;
    t37 = *((unsigned int *)t47);
    t38 = (t37 != 0);
    if (t38 == 1)
        goto LAB161;

LAB162:
LAB163:    goto LAB156;

LAB157:    *((unsigned int *)t19) = 1;
    goto LAB160;

LAB159:    t34 = (t19 + 4);
    *((unsigned int *)t19) = 1;
    *((unsigned int *)t34) = 1;
    goto LAB160;

LAB161:    t39 = *((unsigned int *)t35);
    t40 = *((unsigned int *)t47);
    *((unsigned int *)t35) = (t39 | t40);
    t48 = (t6 + 4);
    t49 = (t19 + 4);
    t41 = *((unsigned int *)t48);
    t44 = (~(t41));
    t45 = *((unsigned int *)t6);
    t67 = (t45 & t44);
    t46 = *((unsigned int *)t49);
    t50 = (~(t46));
    t51 = *((unsigned int *)t19);
    t68 = (t51 & t50);
    t52 = (~(t67));
    t53 = (~(t68));
    t54 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t54 & t52);
    t55 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t55 & t53);
    goto LAB163;

LAB164:    *((unsigned int *)t43) = 1;
    goto LAB167;

LAB166:    t58 = (t43 + 4);
    *((unsigned int *)t43) = 1;
    *((unsigned int *)t58) = 1;
    goto LAB167;

LAB168:    t82 = (t0 + 3368);
    t83 = (t82 + 56U);
    t88 = *((char **)t83);
    memset(t75, 0, 8);
    t89 = (t88 + 4);
    t69 = *((unsigned int *)t89);
    t70 = (~(t69));
    t71 = *((unsigned int *)t88);
    t72 = (t71 & t70);
    t73 = (t72 & 1U);
    if (t73 != 0)
        goto LAB171;

LAB172:    if (*((unsigned int *)t89) != 0)
        goto LAB173;

LAB174:    t74 = *((unsigned int *)t43);
    t77 = *((unsigned int *)t75);
    t78 = (t74 | t77);
    *((unsigned int *)t87) = t78;
    t97 = (t43 + 4);
    t98 = (t75 + 4);
    t100 = (t87 + 4);
    t79 = *((unsigned int *)t97);
    t80 = *((unsigned int *)t98);
    t81 = (t79 | t80);
    *((unsigned int *)t100) = t81;
    t84 = *((unsigned int *)t100);
    t85 = (t84 != 0);
    if (t85 == 1)
        goto LAB175;

LAB176:
LAB177:    goto LAB170;

LAB171:    *((unsigned int *)t75) = 1;
    goto LAB174;

LAB173:    t90 = (t75 + 4);
    *((unsigned int *)t75) = 1;
    *((unsigned int *)t90) = 1;
    goto LAB174;

LAB175:    t86 = *((unsigned int *)t87);
    t91 = *((unsigned int *)t100);
    *((unsigned int *)t87) = (t86 | t91);
    t113 = (t43 + 4);
    t115 = (t75 + 4);
    t92 = *((unsigned int *)t113);
    t93 = (~(t92));
    t94 = *((unsigned int *)t43);
    t146 = (t94 & t93);
    t95 = *((unsigned int *)t115);
    t96 = (~(t95));
    t101 = *((unsigned int *)t75);
    t147 = (t101 & t96);
    t102 = (~(t146));
    t103 = (~(t147));
    t104 = *((unsigned int *)t100);
    *((unsigned int *)t100) = (t104 & t102);
    t105 = *((unsigned int *)t100);
    *((unsigned int *)t100) = (t105 & t103);
    goto LAB177;

LAB178:    *((unsigned int *)t99) = 1;
    goto LAB181;

LAB180:    t126 = (t99 + 4);
    *((unsigned int *)t99) = 1;
    *((unsigned int *)t126) = 1;
    goto LAB181;

LAB182:    t128 = (t0 + 3528);
    t136 = (t128 + 56U);
    t137 = *((char **)t136);
    memset(t114, 0, 8);
    t154 = (t137 + 4);
    t118 = *((unsigned int *)t154);
    t119 = (~(t118));
    t120 = *((unsigned int *)t137);
    t123 = (t120 & t119);
    t124 = (t123 & 1U);
    if (t124 != 0)
        goto LAB185;

LAB186:    if (*((unsigned int *)t154) != 0)
        goto LAB187;

LAB188:    t125 = *((unsigned int *)t99);
    t129 = *((unsigned int *)t114);
    t130 = (t125 | t129);
    *((unsigned int *)t122) = t130;
    t156 = (t99 + 4);
    t157 = (t114 + 4);
    t158 = (t122 + 4);
    t131 = *((unsigned int *)t156);
    t132 = *((unsigned int *)t157);
    t133 = (t131 | t132);
    *((unsigned int *)t158) = t133;
    t134 = *((unsigned int *)t158);
    t135 = (t134 != 0);
    if (t135 == 1)
        goto LAB189;

LAB190:
LAB191:    goto LAB184;

LAB185:    *((unsigned int *)t114) = 1;
    goto LAB188;

LAB187:    t155 = (t114 + 4);
    *((unsigned int *)t114) = 1;
    *((unsigned int *)t155) = 1;
    goto LAB188;

LAB189:    t138 = *((unsigned int *)t122);
    t139 = *((unsigned int *)t158);
    *((unsigned int *)t122) = (t138 | t139);
    t159 = (t99 + 4);
    t160 = (t114 + 4);
    t140 = *((unsigned int *)t159);
    t141 = (~(t140));
    t142 = *((unsigned int *)t99);
    t161 = (t142 & t141);
    t143 = *((unsigned int *)t160);
    t144 = (~(t143));
    t145 = *((unsigned int *)t114);
    t162 = (t145 & t144);
    t148 = (~(t161));
    t149 = (~(t162));
    t150 = *((unsigned int *)t158);
    *((unsigned int *)t158) = (t150 & t148);
    t151 = *((unsigned int *)t158);
    *((unsigned int *)t158) = (t151 & t149);
    goto LAB191;

LAB192:    *((unsigned int *)t6) = 1;
    goto LAB195;

LAB194:    t4 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t4) = 1;
    goto LAB195;

LAB196:    t12 = (t0 + 2328U);
    t13 = *((char **)t12);
    t12 = ((char*)((ng1)));
    memset(t19, 0, 8);
    t17 = (t13 + 4);
    t18 = (t12 + 4);
    t22 = *((unsigned int *)t13);
    t23 = *((unsigned int *)t12);
    t24 = (t22 ^ t23);
    t25 = *((unsigned int *)t17);
    t26 = *((unsigned int *)t18);
    t27 = (t25 ^ t26);
    t28 = (t24 | t27);
    t29 = *((unsigned int *)t17);
    t30 = *((unsigned int *)t18);
    t31 = (t29 | t30);
    t32 = (~(t31));
    t33 = (t28 & t32);
    if (t33 != 0)
        goto LAB202;

LAB199:    if (t31 != 0)
        goto LAB201;

LAB200:    *((unsigned int *)t19) = 1;

LAB202:    memset(t35, 0, 8);
    t21 = (t19 + 4);
    t37 = *((unsigned int *)t21);
    t38 = (~(t37));
    t39 = *((unsigned int *)t19);
    t40 = (t39 & t38);
    t41 = (t40 & 1U);
    if (t41 != 0)
        goto LAB203;

LAB204:    if (*((unsigned int *)t21) != 0)
        goto LAB205;

LAB206:    t44 = *((unsigned int *)t6);
    t45 = *((unsigned int *)t35);
    t46 = (t44 & t45);
    *((unsigned int *)t43) = t46;
    t36 = (t6 + 4);
    t42 = (t35 + 4);
    t47 = (t43 + 4);
    t50 = *((unsigned int *)t36);
    t51 = *((unsigned int *)t42);
    t52 = (t50 | t51);
    *((unsigned int *)t47) = t52;
    t53 = *((unsigned int *)t47);
    t54 = (t53 != 0);
    if (t54 == 1)
        goto LAB207;

LAB208:
LAB209:    goto LAB198;

LAB201:    t20 = (t19 + 4);
    *((unsigned int *)t19) = 1;
    *((unsigned int *)t20) = 1;
    goto LAB202;

LAB203:    *((unsigned int *)t35) = 1;
    goto LAB206;

LAB205:    t34 = (t35 + 4);
    *((unsigned int *)t35) = 1;
    *((unsigned int *)t34) = 1;
    goto LAB206;

LAB207:    t55 = *((unsigned int *)t43);
    t56 = *((unsigned int *)t47);
    *((unsigned int *)t43) = (t55 | t56);
    t48 = (t6 + 4);
    t49 = (t35 + 4);
    t59 = *((unsigned int *)t6);
    t60 = (~(t59));
    t61 = *((unsigned int *)t48);
    t62 = (~(t61));
    t63 = *((unsigned int *)t35);
    t64 = (~(t63));
    t65 = *((unsigned int *)t49);
    t66 = (~(t65));
    t67 = (t60 & t62);
    t68 = (t64 & t66);
    t69 = (~(t67));
    t70 = (~(t68));
    t71 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t71 & t69);
    t72 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t72 & t70);
    t73 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t73 & t69);
    t74 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t74 & t70);
    goto LAB209;

LAB210:    *((unsigned int *)t75) = 1;
    goto LAB213;

LAB212:    t58 = (t75 + 4);
    *((unsigned int *)t75) = 1;
    *((unsigned int *)t58) = 1;
    goto LAB213;

LAB214:    t82 = (t0 + 1848U);
    t83 = *((char **)t82);
    memset(t87, 0, 8);
    t82 = (t87 + 4);
    t88 = (t83 + 4);
    t91 = *((unsigned int *)t83);
    t92 = (t91 >> 16);
    *((unsigned int *)t87) = t92;
    t93 = *((unsigned int *)t88);
    t94 = (t93 >> 16);
    *((unsigned int *)t82) = t94;
    t95 = *((unsigned int *)t87);
    *((unsigned int *)t87) = (t95 & 31U);
    t96 = *((unsigned int *)t82);
    *((unsigned int *)t82) = (t96 & 31U);
    t89 = (t0 + 2008U);
    t90 = *((char **)t89);
    memset(t99, 0, 8);
    t89 = (t87 + 4);
    t97 = (t90 + 4);
    t101 = *((unsigned int *)t87);
    t102 = *((unsigned int *)t90);
    t103 = (t101 ^ t102);
    t104 = *((unsigned int *)t89);
    t105 = *((unsigned int *)t97);
    t106 = (t104 ^ t105);
    t107 = (t103 | t106);
    t108 = *((unsigned int *)t89);
    t109 = *((unsigned int *)t97);
    t110 = (t108 | t109);
    t111 = (~(t110));
    t112 = (t107 & t111);
    if (t112 != 0)
        goto LAB220;

LAB217:    if (t110 != 0)
        goto LAB219;

LAB218:    *((unsigned int *)t99) = 1;

LAB220:    memset(t114, 0, 8);
    t100 = (t99 + 4);
    t116 = *((unsigned int *)t100);
    t117 = (~(t116));
    t118 = *((unsigned int *)t99);
    t119 = (t118 & t117);
    t120 = (t119 & 1U);
    if (t120 != 0)
        goto LAB221;

LAB222:    if (*((unsigned int *)t100) != 0)
        goto LAB223;

LAB224:    t123 = *((unsigned int *)t75);
    t124 = *((unsigned int *)t114);
    t125 = (t123 & t124);
    *((unsigned int *)t122) = t125;
    t115 = (t75 + 4);
    t121 = (t114 + 4);
    t126 = (t122 + 4);
    t129 = *((unsigned int *)t115);
    t130 = *((unsigned int *)t121);
    t131 = (t129 | t130);
    *((unsigned int *)t126) = t131;
    t132 = *((unsigned int *)t126);
    t133 = (t132 != 0);
    if (t133 == 1)
        goto LAB225;

LAB226:
LAB227:    goto LAB216;

LAB219:    t98 = (t99 + 4);
    *((unsigned int *)t99) = 1;
    *((unsigned int *)t98) = 1;
    goto LAB220;

LAB221:    *((unsigned int *)t114) = 1;
    goto LAB224;

LAB223:    t113 = (t114 + 4);
    *((unsigned int *)t114) = 1;
    *((unsigned int *)t113) = 1;
    goto LAB224;

LAB225:    t134 = *((unsigned int *)t122);
    t135 = *((unsigned int *)t126);
    *((unsigned int *)t122) = (t134 | t135);
    t127 = (t75 + 4);
    t128 = (t114 + 4);
    t138 = *((unsigned int *)t75);
    t139 = (~(t138));
    t140 = *((unsigned int *)t127);
    t141 = (~(t140));
    t142 = *((unsigned int *)t114);
    t143 = (~(t142));
    t144 = *((unsigned int *)t128);
    t145 = (~(t144));
    t146 = (t139 & t141);
    t147 = (t143 & t145);
    t148 = (~(t146));
    t149 = (~(t147));
    t150 = *((unsigned int *)t126);
    *((unsigned int *)t126) = (t150 & t148);
    t151 = *((unsigned int *)t126);
    *((unsigned int *)t126) = (t151 & t149);
    t152 = *((unsigned int *)t122);
    *((unsigned int *)t122) = (t152 & t148);
    t153 = *((unsigned int *)t122);
    *((unsigned int *)t122) = (t153 & t149);
    goto LAB227;

LAB228:    *((unsigned int *)t6) = 1;
    goto LAB231;

LAB230:    t4 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t4) = 1;
    goto LAB231;

LAB232:    t12 = (t0 + 2328U);
    t13 = *((char **)t12);
    t12 = ((char*)((ng2)));
    memset(t19, 0, 8);
    t17 = (t13 + 4);
    t18 = (t12 + 4);
    t22 = *((unsigned int *)t13);
    t23 = *((unsigned int *)t12);
    t24 = (t22 ^ t23);
    t25 = *((unsigned int *)t17);
    t26 = *((unsigned int *)t18);
    t27 = (t25 ^ t26);
    t28 = (t24 | t27);
    t29 = *((unsigned int *)t17);
    t30 = *((unsigned int *)t18);
    t31 = (t29 | t30);
    t32 = (~(t31));
    t33 = (t28 & t32);
    if (t33 != 0)
        goto LAB238;

LAB235:    if (t31 != 0)
        goto LAB237;

LAB236:    *((unsigned int *)t19) = 1;

LAB238:    memset(t35, 0, 8);
    t21 = (t19 + 4);
    t37 = *((unsigned int *)t21);
    t38 = (~(t37));
    t39 = *((unsigned int *)t19);
    t40 = (t39 & t38);
    t41 = (t40 & 1U);
    if (t41 != 0)
        goto LAB239;

LAB240:    if (*((unsigned int *)t21) != 0)
        goto LAB241;

LAB242:    t44 = *((unsigned int *)t6);
    t45 = *((unsigned int *)t35);
    t46 = (t44 & t45);
    *((unsigned int *)t43) = t46;
    t36 = (t6 + 4);
    t42 = (t35 + 4);
    t47 = (t43 + 4);
    t50 = *((unsigned int *)t36);
    t51 = *((unsigned int *)t42);
    t52 = (t50 | t51);
    *((unsigned int *)t47) = t52;
    t53 = *((unsigned int *)t47);
    t54 = (t53 != 0);
    if (t54 == 1)
        goto LAB243;

LAB244:
LAB245:    goto LAB234;

LAB237:    t20 = (t19 + 4);
    *((unsigned int *)t19) = 1;
    *((unsigned int *)t20) = 1;
    goto LAB238;

LAB239:    *((unsigned int *)t35) = 1;
    goto LAB242;

LAB241:    t34 = (t35 + 4);
    *((unsigned int *)t35) = 1;
    *((unsigned int *)t34) = 1;
    goto LAB242;

LAB243:    t55 = *((unsigned int *)t43);
    t56 = *((unsigned int *)t47);
    *((unsigned int *)t43) = (t55 | t56);
    t48 = (t6 + 4);
    t49 = (t35 + 4);
    t59 = *((unsigned int *)t6);
    t60 = (~(t59));
    t61 = *((unsigned int *)t48);
    t62 = (~(t61));
    t63 = *((unsigned int *)t35);
    t64 = (~(t63));
    t65 = *((unsigned int *)t49);
    t66 = (~(t65));
    t67 = (t60 & t62);
    t68 = (t64 & t66);
    t69 = (~(t67));
    t70 = (~(t68));
    t71 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t71 & t69);
    t72 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t72 & t70);
    t73 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t73 & t69);
    t74 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t74 & t70);
    goto LAB245;

LAB246:    *((unsigned int *)t75) = 1;
    goto LAB249;

LAB248:    t58 = (t75 + 4);
    *((unsigned int *)t75) = 1;
    *((unsigned int *)t58) = 1;
    goto LAB249;

LAB250:    t82 = (t0 + 1848U);
    t83 = *((char **)t82);
    memset(t87, 0, 8);
    t82 = (t87 + 4);
    t88 = (t83 + 4);
    t91 = *((unsigned int *)t83);
    t92 = (t91 >> 16);
    *((unsigned int *)t87) = t92;
    t93 = *((unsigned int *)t88);
    t94 = (t93 >> 16);
    *((unsigned int *)t82) = t94;
    t95 = *((unsigned int *)t87);
    *((unsigned int *)t87) = (t95 & 31U);
    t96 = *((unsigned int *)t82);
    *((unsigned int *)t82) = (t96 & 31U);
    t89 = (t0 + 2008U);
    t90 = *((char **)t89);
    memset(t99, 0, 8);
    t89 = (t87 + 4);
    t97 = (t90 + 4);
    t101 = *((unsigned int *)t87);
    t102 = *((unsigned int *)t90);
    t103 = (t101 ^ t102);
    t104 = *((unsigned int *)t89);
    t105 = *((unsigned int *)t97);
    t106 = (t104 ^ t105);
    t107 = (t103 | t106);
    t108 = *((unsigned int *)t89);
    t109 = *((unsigned int *)t97);
    t110 = (t108 | t109);
    t111 = (~(t110));
    t112 = (t107 & t111);
    if (t112 != 0)
        goto LAB256;

LAB253:    if (t110 != 0)
        goto LAB255;

LAB254:    *((unsigned int *)t99) = 1;

LAB256:    memset(t114, 0, 8);
    t100 = (t99 + 4);
    t116 = *((unsigned int *)t100);
    t117 = (~(t116));
    t118 = *((unsigned int *)t99);
    t119 = (t118 & t117);
    t120 = (t119 & 1U);
    if (t120 != 0)
        goto LAB257;

LAB258:    if (*((unsigned int *)t100) != 0)
        goto LAB259;

LAB260:    t123 = *((unsigned int *)t75);
    t124 = *((unsigned int *)t114);
    t125 = (t123 & t124);
    *((unsigned int *)t122) = t125;
    t115 = (t75 + 4);
    t121 = (t114 + 4);
    t126 = (t122 + 4);
    t129 = *((unsigned int *)t115);
    t130 = *((unsigned int *)t121);
    t131 = (t129 | t130);
    *((unsigned int *)t126) = t131;
    t132 = *((unsigned int *)t126);
    t133 = (t132 != 0);
    if (t133 == 1)
        goto LAB261;

LAB262:
LAB263:    goto LAB252;

LAB255:    t98 = (t99 + 4);
    *((unsigned int *)t99) = 1;
    *((unsigned int *)t98) = 1;
    goto LAB256;

LAB257:    *((unsigned int *)t114) = 1;
    goto LAB260;

LAB259:    t113 = (t114 + 4);
    *((unsigned int *)t114) = 1;
    *((unsigned int *)t113) = 1;
    goto LAB260;

LAB261:    t134 = *((unsigned int *)t122);
    t135 = *((unsigned int *)t126);
    *((unsigned int *)t122) = (t134 | t135);
    t127 = (t75 + 4);
    t128 = (t114 + 4);
    t138 = *((unsigned int *)t75);
    t139 = (~(t138));
    t140 = *((unsigned int *)t127);
    t141 = (~(t140));
    t142 = *((unsigned int *)t114);
    t143 = (~(t142));
    t144 = *((unsigned int *)t128);
    t145 = (~(t144));
    t146 = (t139 & t141);
    t147 = (t143 & t145);
    t148 = (~(t146));
    t149 = (~(t147));
    t150 = *((unsigned int *)t126);
    *((unsigned int *)t126) = (t150 & t148);
    t151 = *((unsigned int *)t126);
    *((unsigned int *)t126) = (t151 & t149);
    t152 = *((unsigned int *)t122);
    *((unsigned int *)t122) = (t152 & t148);
    t153 = *((unsigned int *)t122);
    *((unsigned int *)t122) = (t153 & t149);
    goto LAB263;

LAB264:    *((unsigned int *)t6) = 1;
    goto LAB267;

LAB266:    t4 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t4) = 1;
    goto LAB267;

LAB268:    t12 = (t0 + 2328U);
    t13 = *((char **)t12);
    t12 = ((char*)((ng2)));
    memset(t19, 0, 8);
    t17 = (t13 + 4);
    t18 = (t12 + 4);
    t22 = *((unsigned int *)t13);
    t23 = *((unsigned int *)t12);
    t24 = (t22 ^ t23);
    t25 = *((unsigned int *)t17);
    t26 = *((unsigned int *)t18);
    t27 = (t25 ^ t26);
    t28 = (t24 | t27);
    t29 = *((unsigned int *)t17);
    t30 = *((unsigned int *)t18);
    t31 = (t29 | t30);
    t32 = (~(t31));
    t33 = (t28 & t32);
    if (t33 != 0)
        goto LAB274;

LAB271:    if (t31 != 0)
        goto LAB273;

LAB272:    *((unsigned int *)t19) = 1;

LAB274:    memset(t35, 0, 8);
    t21 = (t19 + 4);
    t37 = *((unsigned int *)t21);
    t38 = (~(t37));
    t39 = *((unsigned int *)t19);
    t40 = (t39 & t38);
    t41 = (t40 & 1U);
    if (t41 != 0)
        goto LAB275;

LAB276:    if (*((unsigned int *)t21) != 0)
        goto LAB277;

LAB278:    t44 = *((unsigned int *)t6);
    t45 = *((unsigned int *)t35);
    t46 = (t44 & t45);
    *((unsigned int *)t43) = t46;
    t36 = (t6 + 4);
    t42 = (t35 + 4);
    t47 = (t43 + 4);
    t50 = *((unsigned int *)t36);
    t51 = *((unsigned int *)t42);
    t52 = (t50 | t51);
    *((unsigned int *)t47) = t52;
    t53 = *((unsigned int *)t47);
    t54 = (t53 != 0);
    if (t54 == 1)
        goto LAB279;

LAB280:
LAB281:    goto LAB270;

LAB273:    t20 = (t19 + 4);
    *((unsigned int *)t19) = 1;
    *((unsigned int *)t20) = 1;
    goto LAB274;

LAB275:    *((unsigned int *)t35) = 1;
    goto LAB278;

LAB277:    t34 = (t35 + 4);
    *((unsigned int *)t35) = 1;
    *((unsigned int *)t34) = 1;
    goto LAB278;

LAB279:    t55 = *((unsigned int *)t43);
    t56 = *((unsigned int *)t47);
    *((unsigned int *)t43) = (t55 | t56);
    t48 = (t6 + 4);
    t49 = (t35 + 4);
    t59 = *((unsigned int *)t6);
    t60 = (~(t59));
    t61 = *((unsigned int *)t48);
    t62 = (~(t61));
    t63 = *((unsigned int *)t35);
    t64 = (~(t63));
    t65 = *((unsigned int *)t49);
    t66 = (~(t65));
    t67 = (t60 & t62);
    t68 = (t64 & t66);
    t69 = (~(t67));
    t70 = (~(t68));
    t71 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t71 & t69);
    t72 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t72 & t70);
    t73 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t73 & t69);
    t74 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t74 & t70);
    goto LAB281;

LAB282:    *((unsigned int *)t75) = 1;
    goto LAB285;

LAB284:    t58 = (t75 + 4);
    *((unsigned int *)t75) = 1;
    *((unsigned int *)t58) = 1;
    goto LAB285;

LAB286:    t82 = (t0 + 1848U);
    t83 = *((char **)t82);
    memset(t87, 0, 8);
    t82 = (t87 + 4);
    t88 = (t83 + 4);
    t91 = *((unsigned int *)t83);
    t92 = (t91 >> 16);
    *((unsigned int *)t87) = t92;
    t93 = *((unsigned int *)t88);
    t94 = (t93 >> 16);
    *((unsigned int *)t82) = t94;
    t95 = *((unsigned int *)t87);
    *((unsigned int *)t87) = (t95 & 31U);
    t96 = *((unsigned int *)t82);
    *((unsigned int *)t82) = (t96 & 31U);
    t89 = (t0 + 2008U);
    t90 = *((char **)t89);
    memset(t99, 0, 8);
    t89 = (t87 + 4);
    t97 = (t90 + 4);
    t101 = *((unsigned int *)t87);
    t102 = *((unsigned int *)t90);
    t103 = (t101 ^ t102);
    t104 = *((unsigned int *)t89);
    t105 = *((unsigned int *)t97);
    t106 = (t104 ^ t105);
    t107 = (t103 | t106);
    t108 = *((unsigned int *)t89);
    t109 = *((unsigned int *)t97);
    t110 = (t108 | t109);
    t111 = (~(t110));
    t112 = (t107 & t111);
    if (t112 != 0)
        goto LAB292;

LAB289:    if (t110 != 0)
        goto LAB291;

LAB290:    *((unsigned int *)t99) = 1;

LAB292:    memset(t114, 0, 8);
    t100 = (t99 + 4);
    t116 = *((unsigned int *)t100);
    t117 = (~(t116));
    t118 = *((unsigned int *)t99);
    t119 = (t118 & t117);
    t120 = (t119 & 1U);
    if (t120 != 0)
        goto LAB293;

LAB294:    if (*((unsigned int *)t100) != 0)
        goto LAB295;

LAB296:    t123 = *((unsigned int *)t75);
    t124 = *((unsigned int *)t114);
    t125 = (t123 & t124);
    *((unsigned int *)t122) = t125;
    t115 = (t75 + 4);
    t121 = (t114 + 4);
    t126 = (t122 + 4);
    t129 = *((unsigned int *)t115);
    t130 = *((unsigned int *)t121);
    t131 = (t129 | t130);
    *((unsigned int *)t126) = t131;
    t132 = *((unsigned int *)t126);
    t133 = (t132 != 0);
    if (t133 == 1)
        goto LAB297;

LAB298:
LAB299:    goto LAB288;

LAB291:    t98 = (t99 + 4);
    *((unsigned int *)t99) = 1;
    *((unsigned int *)t98) = 1;
    goto LAB292;

LAB293:    *((unsigned int *)t114) = 1;
    goto LAB296;

LAB295:    t113 = (t114 + 4);
    *((unsigned int *)t114) = 1;
    *((unsigned int *)t113) = 1;
    goto LAB296;

LAB297:    t134 = *((unsigned int *)t122);
    t135 = *((unsigned int *)t126);
    *((unsigned int *)t122) = (t134 | t135);
    t127 = (t75 + 4);
    t128 = (t114 + 4);
    t138 = *((unsigned int *)t75);
    t139 = (~(t138));
    t140 = *((unsigned int *)t127);
    t141 = (~(t140));
    t142 = *((unsigned int *)t114);
    t143 = (~(t142));
    t144 = *((unsigned int *)t128);
    t145 = (~(t144));
    t146 = (t139 & t141);
    t147 = (t143 & t145);
    t148 = (~(t146));
    t149 = (~(t147));
    t150 = *((unsigned int *)t126);
    *((unsigned int *)t126) = (t150 & t148);
    t151 = *((unsigned int *)t126);
    *((unsigned int *)t126) = (t151 & t149);
    t152 = *((unsigned int *)t122);
    *((unsigned int *)t122) = (t152 & t148);
    t153 = *((unsigned int *)t122);
    *((unsigned int *)t122) = (t153 & t149);
    goto LAB299;

LAB300:    *((unsigned int *)t6) = 1;
    goto LAB303;

LAB302:    t4 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t4) = 1;
    goto LAB303;

LAB304:    t12 = (t0 + 2488U);
    t13 = *((char **)t12);
    t12 = ((char*)((ng2)));
    memset(t19, 0, 8);
    t17 = (t13 + 4);
    t18 = (t12 + 4);
    t22 = *((unsigned int *)t13);
    t23 = *((unsigned int *)t12);
    t24 = (t22 ^ t23);
    t25 = *((unsigned int *)t17);
    t26 = *((unsigned int *)t18);
    t27 = (t25 ^ t26);
    t28 = (t24 | t27);
    t29 = *((unsigned int *)t17);
    t30 = *((unsigned int *)t18);
    t31 = (t29 | t30);
    t32 = (~(t31));
    t33 = (t28 & t32);
    if (t33 != 0)
        goto LAB310;

LAB307:    if (t31 != 0)
        goto LAB309;

LAB308:    *((unsigned int *)t19) = 1;

LAB310:    memset(t35, 0, 8);
    t21 = (t19 + 4);
    t37 = *((unsigned int *)t21);
    t38 = (~(t37));
    t39 = *((unsigned int *)t19);
    t40 = (t39 & t38);
    t41 = (t40 & 1U);
    if (t41 != 0)
        goto LAB311;

LAB312:    if (*((unsigned int *)t21) != 0)
        goto LAB313;

LAB314:    t44 = *((unsigned int *)t6);
    t45 = *((unsigned int *)t35);
    t46 = (t44 & t45);
    *((unsigned int *)t43) = t46;
    t36 = (t6 + 4);
    t42 = (t35 + 4);
    t47 = (t43 + 4);
    t50 = *((unsigned int *)t36);
    t51 = *((unsigned int *)t42);
    t52 = (t50 | t51);
    *((unsigned int *)t47) = t52;
    t53 = *((unsigned int *)t47);
    t54 = (t53 != 0);
    if (t54 == 1)
        goto LAB315;

LAB316:
LAB317:    goto LAB306;

LAB309:    t20 = (t19 + 4);
    *((unsigned int *)t19) = 1;
    *((unsigned int *)t20) = 1;
    goto LAB310;

LAB311:    *((unsigned int *)t35) = 1;
    goto LAB314;

LAB313:    t34 = (t35 + 4);
    *((unsigned int *)t35) = 1;
    *((unsigned int *)t34) = 1;
    goto LAB314;

LAB315:    t55 = *((unsigned int *)t43);
    t56 = *((unsigned int *)t47);
    *((unsigned int *)t43) = (t55 | t56);
    t48 = (t6 + 4);
    t49 = (t35 + 4);
    t59 = *((unsigned int *)t6);
    t60 = (~(t59));
    t61 = *((unsigned int *)t48);
    t62 = (~(t61));
    t63 = *((unsigned int *)t35);
    t64 = (~(t63));
    t65 = *((unsigned int *)t49);
    t66 = (~(t65));
    t67 = (t60 & t62);
    t68 = (t64 & t66);
    t69 = (~(t67));
    t70 = (~(t68));
    t71 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t71 & t69);
    t72 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t72 & t70);
    t73 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t73 & t69);
    t74 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t74 & t70);
    goto LAB317;

LAB318:    *((unsigned int *)t75) = 1;
    goto LAB321;

LAB320:    t58 = (t75 + 4);
    *((unsigned int *)t75) = 1;
    *((unsigned int *)t58) = 1;
    goto LAB321;

LAB322:    t82 = (t0 + 1848U);
    t83 = *((char **)t82);
    memset(t87, 0, 8);
    t82 = (t87 + 4);
    t88 = (t83 + 4);
    t91 = *((unsigned int *)t83);
    t92 = (t91 >> 16);
    *((unsigned int *)t87) = t92;
    t93 = *((unsigned int *)t88);
    t94 = (t93 >> 16);
    *((unsigned int *)t82) = t94;
    t95 = *((unsigned int *)t87);
    *((unsigned int *)t87) = (t95 & 31U);
    t96 = *((unsigned int *)t82);
    *((unsigned int *)t82) = (t96 & 31U);
    t89 = (t0 + 2168U);
    t90 = *((char **)t89);
    memset(t99, 0, 8);
    t89 = (t87 + 4);
    t97 = (t90 + 4);
    t101 = *((unsigned int *)t87);
    t102 = *((unsigned int *)t90);
    t103 = (t101 ^ t102);
    t104 = *((unsigned int *)t89);
    t105 = *((unsigned int *)t97);
    t106 = (t104 ^ t105);
    t107 = (t103 | t106);
    t108 = *((unsigned int *)t89);
    t109 = *((unsigned int *)t97);
    t110 = (t108 | t109);
    t111 = (~(t110));
    t112 = (t107 & t111);
    if (t112 != 0)
        goto LAB328;

LAB325:    if (t110 != 0)
        goto LAB327;

LAB326:    *((unsigned int *)t99) = 1;

LAB328:    memset(t114, 0, 8);
    t100 = (t99 + 4);
    t116 = *((unsigned int *)t100);
    t117 = (~(t116));
    t118 = *((unsigned int *)t99);
    t119 = (t118 & t117);
    t120 = (t119 & 1U);
    if (t120 != 0)
        goto LAB329;

LAB330:    if (*((unsigned int *)t100) != 0)
        goto LAB331;

LAB332:    t123 = *((unsigned int *)t75);
    t124 = *((unsigned int *)t114);
    t125 = (t123 & t124);
    *((unsigned int *)t122) = t125;
    t115 = (t75 + 4);
    t121 = (t114 + 4);
    t126 = (t122 + 4);
    t129 = *((unsigned int *)t115);
    t130 = *((unsigned int *)t121);
    t131 = (t129 | t130);
    *((unsigned int *)t126) = t131;
    t132 = *((unsigned int *)t126);
    t133 = (t132 != 0);
    if (t133 == 1)
        goto LAB333;

LAB334:
LAB335:    goto LAB324;

LAB327:    t98 = (t99 + 4);
    *((unsigned int *)t99) = 1;
    *((unsigned int *)t98) = 1;
    goto LAB328;

LAB329:    *((unsigned int *)t114) = 1;
    goto LAB332;

LAB331:    t113 = (t114 + 4);
    *((unsigned int *)t114) = 1;
    *((unsigned int *)t113) = 1;
    goto LAB332;

LAB333:    t134 = *((unsigned int *)t122);
    t135 = *((unsigned int *)t126);
    *((unsigned int *)t122) = (t134 | t135);
    t127 = (t75 + 4);
    t128 = (t114 + 4);
    t138 = *((unsigned int *)t75);
    t139 = (~(t138));
    t140 = *((unsigned int *)t127);
    t141 = (~(t140));
    t142 = *((unsigned int *)t114);
    t143 = (~(t142));
    t144 = *((unsigned int *)t128);
    t145 = (~(t144));
    t146 = (t139 & t141);
    t147 = (t143 & t145);
    t148 = (~(t146));
    t149 = (~(t147));
    t150 = *((unsigned int *)t126);
    *((unsigned int *)t126) = (t150 & t148);
    t151 = *((unsigned int *)t126);
    *((unsigned int *)t126) = (t151 & t149);
    t152 = *((unsigned int *)t122);
    *((unsigned int *)t122) = (t152 & t148);
    t153 = *((unsigned int *)t122);
    *((unsigned int *)t122) = (t153 & t149);
    goto LAB335;

LAB336:    *((unsigned int *)t6) = 1;
    goto LAB339;

LAB338:    t12 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB339;

LAB340:    t17 = (t0 + 4008);
    t18 = (t17 + 56U);
    t20 = *((char **)t18);
    memset(t19, 0, 8);
    t21 = (t20 + 4);
    t23 = *((unsigned int *)t21);
    t24 = (~(t23));
    t25 = *((unsigned int *)t20);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB343;

LAB344:    if (*((unsigned int *)t21) != 0)
        goto LAB345;

LAB346:    t28 = *((unsigned int *)t6);
    t29 = *((unsigned int *)t19);
    t30 = (t28 | t29);
    *((unsigned int *)t35) = t30;
    t36 = (t6 + 4);
    t42 = (t19 + 4);
    t47 = (t35 + 4);
    t31 = *((unsigned int *)t36);
    t32 = *((unsigned int *)t42);
    t33 = (t31 | t32);
    *((unsigned int *)t47) = t33;
    t37 = *((unsigned int *)t47);
    t38 = (t37 != 0);
    if (t38 == 1)
        goto LAB347;

LAB348:
LAB349:    goto LAB342;

LAB343:    *((unsigned int *)t19) = 1;
    goto LAB346;

LAB345:    t34 = (t19 + 4);
    *((unsigned int *)t19) = 1;
    *((unsigned int *)t34) = 1;
    goto LAB346;

LAB347:    t39 = *((unsigned int *)t35);
    t40 = *((unsigned int *)t47);
    *((unsigned int *)t35) = (t39 | t40);
    t48 = (t6 + 4);
    t49 = (t19 + 4);
    t41 = *((unsigned int *)t48);
    t44 = (~(t41));
    t45 = *((unsigned int *)t6);
    t67 = (t45 & t44);
    t46 = *((unsigned int *)t49);
    t50 = (~(t46));
    t51 = *((unsigned int *)t19);
    t68 = (t51 & t50);
    t52 = (~(t67));
    t53 = (~(t68));
    t54 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t54 & t52);
    t55 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t55 & t53);
    goto LAB349;

LAB350:    *((unsigned int *)t43) = 1;
    goto LAB353;

LAB352:    t58 = (t43 + 4);
    *((unsigned int *)t43) = 1;
    *((unsigned int *)t58) = 1;
    goto LAB353;

LAB354:    t82 = (t0 + 4168);
    t83 = (t82 + 56U);
    t88 = *((char **)t83);
    memset(t75, 0, 8);
    t89 = (t88 + 4);
    t69 = *((unsigned int *)t89);
    t70 = (~(t69));
    t71 = *((unsigned int *)t88);
    t72 = (t71 & t70);
    t73 = (t72 & 1U);
    if (t73 != 0)
        goto LAB357;

LAB358:    if (*((unsigned int *)t89) != 0)
        goto LAB359;

LAB360:    t74 = *((unsigned int *)t43);
    t77 = *((unsigned int *)t75);
    t78 = (t74 | t77);
    *((unsigned int *)t87) = t78;
    t97 = (t43 + 4);
    t98 = (t75 + 4);
    t100 = (t87 + 4);
    t79 = *((unsigned int *)t97);
    t80 = *((unsigned int *)t98);
    t81 = (t79 | t80);
    *((unsigned int *)t100) = t81;
    t84 = *((unsigned int *)t100);
    t85 = (t84 != 0);
    if (t85 == 1)
        goto LAB361;

LAB362:
LAB363:    goto LAB356;

LAB357:    *((unsigned int *)t75) = 1;
    goto LAB360;

LAB359:    t90 = (t75 + 4);
    *((unsigned int *)t75) = 1;
    *((unsigned int *)t90) = 1;
    goto LAB360;

LAB361:    t86 = *((unsigned int *)t87);
    t91 = *((unsigned int *)t100);
    *((unsigned int *)t87) = (t86 | t91);
    t113 = (t43 + 4);
    t115 = (t75 + 4);
    t92 = *((unsigned int *)t113);
    t93 = (~(t92));
    t94 = *((unsigned int *)t43);
    t146 = (t94 & t93);
    t95 = *((unsigned int *)t115);
    t96 = (~(t95));
    t101 = *((unsigned int *)t75);
    t147 = (t101 & t96);
    t102 = (~(t146));
    t103 = (~(t147));
    t104 = *((unsigned int *)t100);
    *((unsigned int *)t100) = (t104 & t102);
    t105 = *((unsigned int *)t100);
    *((unsigned int *)t100) = (t105 & t103);
    goto LAB363;

LAB364:    *((unsigned int *)t99) = 1;
    goto LAB367;

LAB366:    t126 = (t99 + 4);
    *((unsigned int *)t99) = 1;
    *((unsigned int *)t126) = 1;
    goto LAB367;

LAB368:    t128 = (t0 + 4328);
    t136 = (t128 + 56U);
    t137 = *((char **)t136);
    memset(t114, 0, 8);
    t154 = (t137 + 4);
    t118 = *((unsigned int *)t154);
    t119 = (~(t118));
    t120 = *((unsigned int *)t137);
    t123 = (t120 & t119);
    t124 = (t123 & 1U);
    if (t124 != 0)
        goto LAB371;

LAB372:    if (*((unsigned int *)t154) != 0)
        goto LAB373;

LAB374:    t125 = *((unsigned int *)t99);
    t129 = *((unsigned int *)t114);
    t130 = (t125 | t129);
    *((unsigned int *)t122) = t130;
    t156 = (t99 + 4);
    t157 = (t114 + 4);
    t158 = (t122 + 4);
    t131 = *((unsigned int *)t156);
    t132 = *((unsigned int *)t157);
    t133 = (t131 | t132);
    *((unsigned int *)t158) = t133;
    t134 = *((unsigned int *)t158);
    t135 = (t134 != 0);
    if (t135 == 1)
        goto LAB375;

LAB376:
LAB377:    goto LAB370;

LAB371:    *((unsigned int *)t114) = 1;
    goto LAB374;

LAB373:    t155 = (t114 + 4);
    *((unsigned int *)t114) = 1;
    *((unsigned int *)t155) = 1;
    goto LAB374;

LAB375:    t138 = *((unsigned int *)t122);
    t139 = *((unsigned int *)t158);
    *((unsigned int *)t122) = (t138 | t139);
    t159 = (t99 + 4);
    t160 = (t114 + 4);
    t140 = *((unsigned int *)t159);
    t141 = (~(t140));
    t142 = *((unsigned int *)t99);
    t161 = (t142 & t141);
    t143 = *((unsigned int *)t160);
    t144 = (~(t143));
    t145 = *((unsigned int *)t114);
    t162 = (t145 & t144);
    t148 = (~(t161));
    t149 = (~(t162));
    t150 = *((unsigned int *)t158);
    *((unsigned int *)t158) = (t150 & t148);
    t151 = *((unsigned int *)t158);
    *((unsigned int *)t158) = (t151 & t149);
    goto LAB377;

LAB378:    *((unsigned int *)t6) = 1;
    goto LAB381;

LAB380:    t12 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB381;

LAB382:    t17 = (t0 + 4488);
    t18 = (t17 + 56U);
    t20 = *((char **)t18);
    memset(t19, 0, 8);
    t21 = (t20 + 4);
    t23 = *((unsigned int *)t21);
    t24 = (~(t23));
    t25 = *((unsigned int *)t20);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB385;

LAB386:    if (*((unsigned int *)t21) != 0)
        goto LAB387;

LAB388:    t28 = *((unsigned int *)t6);
    t29 = *((unsigned int *)t19);
    t30 = (t28 | t29);
    *((unsigned int *)t35) = t30;
    t36 = (t6 + 4);
    t42 = (t19 + 4);
    t47 = (t35 + 4);
    t31 = *((unsigned int *)t36);
    t32 = *((unsigned int *)t42);
    t33 = (t31 | t32);
    *((unsigned int *)t47) = t33;
    t37 = *((unsigned int *)t47);
    t38 = (t37 != 0);
    if (t38 == 1)
        goto LAB389;

LAB390:
LAB391:    goto LAB384;

LAB385:    *((unsigned int *)t19) = 1;
    goto LAB388;

LAB387:    t34 = (t19 + 4);
    *((unsigned int *)t19) = 1;
    *((unsigned int *)t34) = 1;
    goto LAB388;

LAB389:    t39 = *((unsigned int *)t35);
    t40 = *((unsigned int *)t47);
    *((unsigned int *)t35) = (t39 | t40);
    t48 = (t6 + 4);
    t49 = (t19 + 4);
    t41 = *((unsigned int *)t48);
    t44 = (~(t41));
    t45 = *((unsigned int *)t6);
    t67 = (t45 & t44);
    t46 = *((unsigned int *)t49);
    t50 = (~(t46));
    t51 = *((unsigned int *)t19);
    t68 = (t51 & t50);
    t52 = (~(t67));
    t53 = (~(t68));
    t54 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t54 & t52);
    t55 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t55 & t53);
    goto LAB391;

}


extern void work_m_00000000000121253491_1742365919_init()
{
	static char *pe[] = {(void *)Always_38_0};
	xsi_register_didat("work_m_00000000000121253491_1742365919", "isim/tb_mips_isim_beh.exe.sim/work/m_00000000000121253491_1742365919.didat");
	xsi_register_executes(pe);
}
