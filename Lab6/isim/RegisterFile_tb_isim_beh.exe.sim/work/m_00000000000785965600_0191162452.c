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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Alex/Documents/Labs/Lab6/RegisterFile_tb.v";
static int ng1[] = {0, 0};
static const char *ng2 = "lab6.input.test";
static const char *ng3 = "r";
static unsigned int ng4[] = {4294967295U, 0U};
static int ng5[] = {35, 0};
static int ng6[] = {10, 0};
static const char *ng7 = "%b %b %b %b %d %d %d";
static const char *ng8 = "Error: Value of register %b on output 1 should have been %d, but was %d instead";
static const char *ng9 = "Error: Value of register %b on output 2 should have been %d, but was %d instead";
static unsigned int ng10[] = {0U, 0U};
static unsigned int ng11[] = {2U, 0U};
static int ng12[] = {1, 0};
static int ng13[] = {4, 0};
static unsigned int ng14[] = {1U, 0U};
static unsigned int ng15[] = {3U, 0U};



static void Always_37_0(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;

LAB0:    t1 = (t0 + 2364U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 2264);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(37, ng0);
    t4 = (t0 + 1288);
    t5 = (t4 + 36U);
    t6 = *((char **)t5);
    memset(t3, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB8;

LAB6:    if (*((unsigned int *)t7) == 0)
        goto LAB5;

LAB7:    t13 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t13) = 1;

LAB8:    t14 = (t3 + 4);
    t15 = (t6 + 4);
    t16 = *((unsigned int *)t6);
    t17 = (~(t16));
    *((unsigned int *)t3) = t17;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB10;

LAB9:    t22 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t22 & 1U);
    t23 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t23 & 1U);
    t24 = (t0 + 1288);
    xsi_vlogvar_wait_assign_value(t24, t3, 0, 0, 1, 0LL);
    goto LAB2;

LAB5:    *((unsigned int *)t3) = 1;
    goto LAB8;

LAB10:    t18 = *((unsigned int *)t3);
    t19 = *((unsigned int *)t15);
    *((unsigned int *)t3) = (t18 | t19);
    t20 = *((unsigned int *)t14);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t20 | t21);
    goto LAB9;

}

static void Initial_39_1(char *t0)
{
    char t4[8];
    char t32[8];
    char t58[8];
    char t68[8];
    char t71[8];
    char t72[8];
    char t73[8];
    char t74[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
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
    char *t30;
    char *t31;
    char *t33;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    char *t47;
    char *t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    char *t54;
    char *t55;
    char *t56;
    char *t57;
    char *t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    char *t65;
    char *t66;
    char *t67;
    char *t69;
    char *t70;
    char *t75;
    char *t76;
    char *t77;
    char *t78;
    char *t79;
    char *t80;
    char *t81;
    char *t82;

LAB0:    t1 = (t0 + 2508U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(39, ng0);

LAB4:    xsi_set_current_line(42, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 920);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(43, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1012);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(44, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1104);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(45, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1380);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(46, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1196);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(47, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1288);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(51, ng0);
    *((int *)t4) = xsi_vlogfile_file_open_of_cname_ctype(ng2, ng3);
    t2 = (t4 + 4);
    *((int *)t2) = 0;
    t3 = (t0 + 1472);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    xsi_set_current_line(52, ng0);
    t2 = (t0 + 1472);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng1)));
    memset(t4, 0, 8);
    xsi_vlog_signed_equal(t4, 32, t5, 32, t6, 32);
    t7 = (t4 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t4);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB5;

LAB6:
LAB7:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 2408);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB8;

LAB1:    return;
LAB5:    xsi_set_current_line(53, ng0);
    xsi_vlog_finish(1);
    goto LAB7;

LAB8:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 1472);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    *((int *)t4) = xsi_vlogfile_fgetc(*((unsigned int *)t5));
    t6 = (t4 + 4);
    *((int *)t6) = 0;
    t7 = (t0 + 1564);
    xsi_vlogvar_assign_value(t7, t4, 0, 0, 32);
    xsi_set_current_line(59, ng0);

LAB9:    t2 = (t0 + 1564);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng4)));
    memset(t4, 0, 8);
    t7 = (t5 + 4);
    t13 = (t6 + 4);
    t8 = *((unsigned int *)t5);
    t9 = *((unsigned int *)t6);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t7);
    t12 = *((unsigned int *)t13);
    t14 = (t11 ^ t12);
    t15 = (t10 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t13);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB11;

LAB10:    if (t18 != 0)
        goto LAB12;

LAB13:    t22 = (t4 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t4);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB14;

LAB15:    xsi_set_current_line(99, ng0);
    t2 = (t0 + 1472);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    xsi_vlogfile_fclose(*((unsigned int *)t5));
    xsi_set_current_line(100, ng0);
    xsi_vlog_finish(1);
    goto LAB1;

LAB11:    *((unsigned int *)t4) = 1;
    goto LAB13;

LAB12:    t21 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB13;

LAB14:    xsi_set_current_line(60, ng0);

LAB16:    xsi_set_current_line(62, ng0);
    t28 = (t0 + 1564);
    t29 = (t28 + 36U);
    t30 = *((char **)t29);
    t31 = ((char*)((ng5)));
    memset(t32, 0, 8);
    t33 = (t30 + 4);
    t34 = (t31 + 4);
    t35 = *((unsigned int *)t30);
    t36 = *((unsigned int *)t31);
    t37 = (t35 ^ t36);
    t38 = *((unsigned int *)t33);
    t39 = *((unsigned int *)t34);
    t40 = (t38 ^ t39);
    t41 = (t37 | t40);
    t42 = *((unsigned int *)t33);
    t43 = *((unsigned int *)t34);
    t44 = (t42 | t43);
    t45 = (~(t44));
    t46 = (t41 & t45);
    if (t46 != 0)
        goto LAB20;

LAB17:    if (t44 != 0)
        goto LAB19;

LAB18:    *((unsigned int *)t32) = 1;

LAB20:    t48 = (t32 + 4);
    t49 = *((unsigned int *)t48);
    t50 = (~(t49));
    t51 = *((unsigned int *)t32);
    t52 = (t51 & t50);
    t53 = (t52 != 0);
    if (t53 > 0)
        goto LAB21;

LAB22:    xsi_set_current_line(71, ng0);

LAB29:    xsi_set_current_line(73, ng0);
    t2 = (t0 + 1564);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = (t0 + 1472);
    t7 = (t6 + 36U);
    t13 = *((char **)t7);
    *((int *)t4) = xsi_vlogfile_ungetc(*((unsigned int *)t5), *((unsigned int *)t13));
    t21 = (t4 + 4);
    *((int *)t21) = 0;
    t22 = (t0 + 1656);
    xsi_vlogvar_assign_value(t22, t4, 0, 0, 32);
    xsi_set_current_line(75, ng0);
    t2 = (t0 + 2408);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB30;
    goto LAB1;

LAB19:    t47 = (t32 + 4);
    *((unsigned int *)t32) = 1;
    *((unsigned int *)t47) = 1;
    goto LAB20;

LAB21:    xsi_set_current_line(63, ng0);

LAB24:    xsi_set_current_line(64, ng0);

LAB25:    t54 = (t0 + 1564);
    t55 = (t54 + 36U);
    t56 = *((char **)t55);
    t57 = ((char*)((ng6)));
    memset(t58, 0, 8);
    xsi_vlog_signed_not_equal(t58, 32, t56, 32, t57, 32);
    t59 = (t58 + 4);
    t60 = *((unsigned int *)t59);
    t61 = (~(t60));
    t62 = *((unsigned int *)t58);
    t63 = (t62 & t61);
    t64 = (t63 != 0);
    if (t64 > 0)
        goto LAB26;

LAB27:
LAB23:    goto LAB9;

LAB26:    xsi_set_current_line(65, ng0);

LAB28:    xsi_set_current_line(66, ng0);
    t65 = (t0 + 1472);
    t66 = (t65 + 36U);
    t67 = *((char **)t66);
    *((int *)t68) = xsi_vlogfile_fgetc(*((unsigned int *)t67));
    t69 = (t68 + 4);
    *((int *)t69) = 0;
    t70 = (t0 + 1564);
    xsi_vlogvar_assign_value(t70, t68, 0, 0, 32);
    goto LAB25;

LAB30:    xsi_set_current_line(76, ng0);
    t3 = (t0 + 1472);
    t5 = (t3 + 36U);
    t6 = *((char **)t5);
    t7 = (t0 + 920);
    t13 = (t7 + 36U);
    t21 = *((char **)t13);
    xsi_vlog_bit_copy(t4, 0, t21, 0, 2);
    t22 = (t0 + 1012);
    t28 = (t22 + 36U);
    t29 = *((char **)t28);
    xsi_vlog_bit_copy(t32, 0, t29, 0, 2);
    t30 = (t0 + 1104);
    t31 = (t30 + 36U);
    t33 = *((char **)t31);
    xsi_vlog_bit_copy(t58, 0, t33, 0, 2);
    t34 = (t0 + 1380);
    t47 = (t34 + 36U);
    t48 = *((char **)t47);
    xsi_vlog_bit_copy(t68, 0, t48, 0, 1);
    t54 = (t0 + 1196);
    t55 = (t54 + 36U);
    t56 = *((char **)t55);
    xsi_vlog_bit_copy(t71, 0, t56, 0, 8);
    t57 = (t0 + 1748);
    t59 = (t57 + 36U);
    t65 = *((char **)t59);
    xsi_vlog_bit_copy(t72, 0, t65, 0, 16);
    t66 = (t0 + 1840);
    t67 = (t66 + 36U);
    t69 = *((char **)t67);
    xsi_vlog_bit_copy(t73, 0, t69, 0, 16);
    *((int *)t74) = xsi_vlogfile_fscanf(*((unsigned int *)t6), ng7, 8, t0, (char)118, t4, 2, (char)118, t32, 2, (char)118, t58, 2, (char)118, t68, 1, (char)118, t71, 8, (char)118, t72, 16, (char)118, t73, 16);
    t70 = (t74 + 4);
    *((int *)t70) = 0;
    t75 = (t0 + 920);
    xsi_vlogvar_assign_value(t75, t4, 0, 0, 2);
    t76 = (t0 + 1012);
    xsi_vlogvar_assign_value(t76, t32, 0, 0, 2);
    t77 = (t0 + 1104);
    xsi_vlogvar_assign_value(t77, t58, 0, 0, 2);
    t78 = (t0 + 1380);
    xsi_vlogvar_assign_value(t78, t68, 0, 0, 1);
    t79 = (t0 + 1196);
    xsi_vlogvar_assign_value(t79, t71, 0, 0, 8);
    t80 = (t0 + 1748);
    xsi_vlogvar_assign_value(t80, t72, 0, 0, 16);
    t81 = (t0 + 1840);
    xsi_vlogvar_assign_value(t81, t73, 0, 0, 16);
    t82 = (t0 + 1656);
    xsi_vlogvar_assign_value(t82, t74, 0, 0, 32);
    xsi_set_current_line(77, ng0);
    t2 = (t0 + 2408);
    xsi_process_wait(t2, 8000LL);
    *((char **)t1) = &&LAB31;
    goto LAB1;

LAB31:    xsi_set_current_line(80, ng0);
    t3 = ((char*)((ng1)));
    t5 = (t0 + 1380);
    t6 = (t5 + 36U);
    t7 = *((char **)t6);
    memset(t4, 0, 8);
    t13 = (t3 + 4);
    t21 = (t7 + 4);
    t8 = *((unsigned int *)t3);
    t9 = *((unsigned int *)t7);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t13);
    t12 = *((unsigned int *)t21);
    t14 = (t11 ^ t12);
    t15 = (t10 | t14);
    t16 = *((unsigned int *)t13);
    t17 = *((unsigned int *)t21);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB35;

LAB32:    if (t18 != 0)
        goto LAB34;

LAB33:    *((unsigned int *)t4) = 1;

LAB35:    t28 = (t4 + 4);
    t23 = *((unsigned int *)t28);
    t24 = (~(t23));
    t25 = *((unsigned int *)t4);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB36;

LAB37:
LAB38:    xsi_set_current_line(93, ng0);
    t2 = (t0 + 2408);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB56;
    goto LAB1;

LAB34:    t22 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t22) = 1;
    goto LAB35;

LAB36:    xsi_set_current_line(81, ng0);

LAB39:    xsi_set_current_line(82, ng0);
    t29 = (t0 + 600U);
    t30 = *((char **)t29);
    t29 = (t0 + 1748);
    t31 = (t29 + 36U);
    t33 = *((char **)t31);
    memset(t32, 0, 8);
    t34 = (t30 + 4);
    t47 = (t33 + 4);
    t35 = *((unsigned int *)t30);
    t36 = *((unsigned int *)t33);
    t37 = (t35 ^ t36);
    t38 = *((unsigned int *)t34);
    t39 = *((unsigned int *)t47);
    t40 = (t38 ^ t39);
    t41 = (t37 | t40);
    t42 = *((unsigned int *)t34);
    t43 = *((unsigned int *)t47);
    t44 = (t42 | t43);
    t45 = (~(t44));
    t46 = (t41 & t45);
    if (t46 != 0)
        goto LAB41;

LAB40:    if (t44 != 0)
        goto LAB42;

LAB43:    t54 = (t32 + 4);
    t49 = *((unsigned int *)t54);
    t50 = (~(t49));
    t51 = *((unsigned int *)t32);
    t52 = (t51 & t50);
    t53 = (t52 != 0);
    if (t53 > 0)
        goto LAB44;

LAB45:
LAB46:    xsi_set_current_line(86, ng0);
    t2 = (t0 + 692U);
    t3 = *((char **)t2);
    t2 = (t0 + 1840);
    t5 = (t2 + 36U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t7 = (t3 + 4);
    t13 = (t6 + 4);
    t8 = *((unsigned int *)t3);
    t9 = *((unsigned int *)t6);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t7);
    t12 = *((unsigned int *)t13);
    t14 = (t11 ^ t12);
    t15 = (t10 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t13);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB49;

LAB48:    if (t18 != 0)
        goto LAB50;

LAB51:    t22 = (t4 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t4);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB52;

LAB53:
LAB54:    goto LAB38;

LAB41:    *((unsigned int *)t32) = 1;
    goto LAB43;

LAB42:    t48 = (t32 + 4);
    *((unsigned int *)t32) = 1;
    *((unsigned int *)t48) = 1;
    goto LAB43;

LAB44:    xsi_set_current_line(83, ng0);

LAB47:    xsi_set_current_line(84, ng0);
    t55 = (t0 + 920);
    t56 = (t55 + 36U);
    t57 = *((char **)t56);
    t59 = (t0 + 1748);
    t65 = (t59 + 36U);
    t66 = *((char **)t65);
    t67 = (t0 + 600U);
    t69 = *((char **)t67);
    xsi_vlogfile_write(1, 0, 0, ng8, 4, t0, (char)118, t57, 2, (char)118, t66, 16, (char)118, t69, 8);
    goto LAB46;

LAB49:    *((unsigned int *)t4) = 1;
    goto LAB51;

LAB50:    t21 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB51;

LAB52:    xsi_set_current_line(87, ng0);

LAB55:    xsi_set_current_line(88, ng0);
    t28 = (t0 + 1012);
    t29 = (t28 + 36U);
    t30 = *((char **)t29);
    t31 = (t0 + 1840);
    t33 = (t31 + 36U);
    t34 = *((char **)t33);
    t47 = (t0 + 692U);
    t48 = *((char **)t47);
    xsi_vlogfile_write(1, 0, 0, ng9, 4, t0, (char)118, t30, 2, (char)118, t34, 16, (char)118, t48, 8);
    goto LAB54;

LAB56:    xsi_set_current_line(94, ng0);
    t3 = (t0 + 1472);
    t5 = (t3 + 36U);
    t6 = *((char **)t5);
    *((int *)t4) = xsi_vlogfile_fgetc(*((unsigned int *)t6));
    t7 = (t4 + 4);
    *((int *)t7) = 0;
    t13 = (t0 + 1564);
    xsi_vlogvar_assign_value(t13, t4, 0, 0, 32);
    goto LAB23;

}

static void Initial_105_2(char *t0)
{
    char t10[8];
    char *t1;
    char *t2;
    char *t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    int t7;
    char *t8;
    char *t9;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;

LAB0:    t1 = (t0 + 2652U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(105, ng0);

LAB4:    xsi_set_current_line(107, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 920);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(108, ng0);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 1012);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(109, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 1104);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(110, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 1196);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(111, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1288);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(112, ng0);
    t2 = ((char*)((ng12)));
    t3 = (t0 + 1380);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(115, ng0);
    t2 = ((char*)((ng13)));
    t3 = (t2 + 4);
    t4 = *((unsigned int *)t3);
    t5 = (~(t4));
    t6 = *((unsigned int *)t2);
    t7 = (t6 & t5);
    t8 = (t0 + 4360);
    *((int *)t8) = t7;

LAB5:    t9 = (t0 + 4360);
    if (*((int *)t9) > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(124, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1380);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(125, ng0);
    t2 = (t0 + 2552);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB22;

LAB1:    return;
LAB6:    xsi_set_current_line(116, ng0);

LAB8:    xsi_set_current_line(117, ng0);
    t11 = (t0 + 1288);
    t12 = (t11 + 36U);
    t13 = *((char **)t12);
    memset(t10, 0, 8);
    t14 = (t13 + 4);
    t15 = *((unsigned int *)t14);
    t16 = (~(t15));
    t17 = *((unsigned int *)t13);
    t18 = (t17 & t16);
    t19 = (t18 & 1U);
    if (t19 != 0)
        goto LAB12;

LAB10:    if (*((unsigned int *)t14) == 0)
        goto LAB9;

LAB11:    t20 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t20) = 1;

LAB12:    t21 = (t10 + 4);
    t22 = (t13 + 4);
    t23 = *((unsigned int *)t13);
    t24 = (~(t23));
    *((unsigned int *)t10) = t24;
    *((unsigned int *)t21) = 0;
    if (*((unsigned int *)t22) != 0)
        goto LAB14;

LAB13:    t29 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t29 & 1U);
    t30 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t30 & 1U);
    t31 = (t0 + 1288);
    xsi_vlogvar_assign_value(t31, t10, 0, 0, 1);
    xsi_set_current_line(118, ng0);
    t2 = (t0 + 1288);
    t3 = (t2 + 36U);
    t8 = *((char **)t3);
    memset(t10, 0, 8);
    t9 = (t8 + 4);
    t4 = *((unsigned int *)t9);
    t5 = (~(t4));
    t6 = *((unsigned int *)t8);
    t15 = (t6 & t5);
    t16 = (t15 & 1U);
    if (t16 != 0)
        goto LAB18;

LAB16:    if (*((unsigned int *)t9) == 0)
        goto LAB15;

LAB17:    t11 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t11) = 1;

LAB18:    t12 = (t10 + 4);
    t13 = (t8 + 4);
    t17 = *((unsigned int *)t8);
    t18 = (~(t17));
    *((unsigned int *)t10) = t18;
    *((unsigned int *)t12) = 0;
    if (*((unsigned int *)t13) != 0)
        goto LAB20;

LAB19:    t26 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t26 & 1U);
    t27 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t27 & 1U);
    t14 = (t0 + 1288);
    xsi_vlogvar_assign_value(t14, t10, 0, 0, 1);
    xsi_set_current_line(119, ng0);
    t2 = (t0 + 2552);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB21;
    goto LAB1;

LAB9:    *((unsigned int *)t10) = 1;
    goto LAB12;

LAB14:    t25 = *((unsigned int *)t10);
    t26 = *((unsigned int *)t22);
    *((unsigned int *)t10) = (t25 | t26);
    t27 = *((unsigned int *)t21);
    t28 = *((unsigned int *)t22);
    *((unsigned int *)t21) = (t27 | t28);
    goto LAB13;

LAB15:    *((unsigned int *)t10) = 1;
    goto LAB18;

LAB20:    t19 = *((unsigned int *)t10);
    t23 = *((unsigned int *)t13);
    *((unsigned int *)t10) = (t19 | t23);
    t24 = *((unsigned int *)t12);
    t25 = *((unsigned int *)t13);
    *((unsigned int *)t12) = (t24 | t25);
    goto LAB19;

LAB21:    xsi_set_current_line(120, ng0);
    t2 = (t0 + 1196);
    t3 = (t2 + 36U);
    t8 = *((char **)t3);
    t9 = ((char*)((ng12)));
    memset(t10, 0, 8);
    xsi_vlog_unsigned_add(t10, 32, t8, 8, t9, 32);
    t11 = (t0 + 1196);
    xsi_vlogvar_assign_value(t11, t10, 0, 0, 8);
    xsi_set_current_line(121, ng0);
    t2 = (t0 + 1104);
    t3 = (t2 + 36U);
    t8 = *((char **)t3);
    t9 = ((char*)((ng12)));
    memset(t10, 0, 8);
    xsi_vlog_unsigned_add(t10, 32, t8, 2, t9, 32);
    t11 = (t0 + 1104);
    xsi_vlogvar_assign_value(t11, t10, 0, 0, 2);
    t2 = (t0 + 4360);
    t7 = *((int *)t2);
    *((int *)t2) = (t7 - 1);
    goto LAB5;

LAB22:    xsi_set_current_line(127, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 920);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(128, ng0);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 1012);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(129, ng0);
    t2 = (t0 + 2552);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB23:    xsi_set_current_line(130, ng0);
    t2 = ((char*)((ng14)));
    t3 = (t0 + 920);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(131, ng0);
    t2 = ((char*)((ng15)));
    t3 = (t0 + 1012);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB1;

}


extern void work_m_00000000000785965600_0191162452_init()
{
	static char *pe[] = {(void *)Always_37_0,(void *)Initial_39_1,(void *)Initial_105_2};
	xsi_register_didat("work_m_00000000000785965600_0191162452", "isim/RegisterFile_tb_isim_beh.exe.sim/work/m_00000000000785965600_0191162452.didat");
	xsi_register_executes(pe);
}
