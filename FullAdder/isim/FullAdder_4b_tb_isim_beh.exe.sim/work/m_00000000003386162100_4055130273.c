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
static const char *ng0 = "C:/Users/Alex/Documents/Labs/FullAdder/FullAdder_4b_tb.v";
static const char *ng1 = "output.txt";
static const char *ng2 = "w";
static unsigned int ng3[] = {0U, 0U};
static int ng4[] = {256, 0};
static const char *ng5 = "%b,%b,%b,%b,%b\n";
static int ng6[] = {1, 0};



static void Initial_32_0(char *t0)
{
    char t3[8];
    char t23[8];
    char t28[8];
    char t38[8];
    char *t1;
    char *t2;
    char *t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    int t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;
    char *t37;
    char *t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    char *t46;
    char *t47;

LAB0:    t1 = (t0 + 1720U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(33, ng0);

LAB4:    xsi_set_current_line(34, ng0);
    *((int *)t3) = xsi_vlogfile_file_open_of_cname_ctype(ng1, ng2);
    t2 = (t3 + 4);
    *((int *)t2) = 0;
    t4 = (t0 + 1196);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 32);
    xsi_set_current_line(35, ng0);
    t2 = ((char*)((ng3)));
    t4 = (t0 + 920);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 8);
    xsi_set_current_line(36, ng0);
    t2 = ((char*)((ng4)));
    t4 = (t2 + 4);
    t5 = *((unsigned int *)t4);
    t6 = (~(t5));
    t7 = *((unsigned int *)t2);
    t8 = (t7 & t6);
    t9 = (t0 + 3024);
    *((int *)t9) = t8;

LAB5:    t10 = (t0 + 3024);
    if (*((int *)t10) > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1196);
    t4 = (t2 + 36U);
    t9 = *((char **)t4);
    xsi_vlogfile_fclose(*((unsigned int *)t9));

LAB1:    return;
LAB6:    xsi_set_current_line(37, ng0);

LAB8:    xsi_set_current_line(38, ng0);
    t11 = (t0 + 920);
    t12 = (t11 + 36U);
    t13 = *((char **)t12);
    memset(t3, 0, 8);
    t14 = (t3 + 4);
    t15 = (t13 + 4);
    t16 = *((unsigned int *)t13);
    t17 = (t16 >> 4);
    *((unsigned int *)t3) = t17;
    t18 = *((unsigned int *)t15);
    t19 = (t18 >> 4);
    *((unsigned int *)t14) = t19;
    t20 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t20 & 15U);
    t21 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t21 & 15U);
    t22 = (t0 + 1012);
    xsi_vlogvar_assign_value(t22, t3, 0, 0, 4);
    xsi_set_current_line(39, ng0);
    t2 = (t0 + 920);
    t4 = (t2 + 36U);
    t9 = *((char **)t4);
    memset(t3, 0, 8);
    t10 = (t3 + 4);
    t11 = (t9 + 4);
    t5 = *((unsigned int *)t9);
    t6 = (t5 >> 0);
    *((unsigned int *)t3) = t6;
    t7 = *((unsigned int *)t11);
    t16 = (t7 >> 0);
    *((unsigned int *)t10) = t16;
    t17 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t17 & 15U);
    t18 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t18 & 15U);
    t12 = (t0 + 1104);
    xsi_vlogvar_assign_value(t12, t3, 0, 0, 4);
    xsi_set_current_line(40, ng0);
    t2 = (t0 + 1196);
    t4 = (t2 + 36U);
    t9 = *((char **)t4);
    t10 = (t0 + 600U);
    t11 = *((char **)t10);
    memset(t3, 0, 8);
    t10 = (t3 + 4);
    t12 = (t11 + 4);
    t5 = *((unsigned int *)t11);
    t6 = (t5 >> 3);
    t7 = (t6 & 1);
    *((unsigned int *)t3) = t7;
    t16 = *((unsigned int *)t12);
    t17 = (t16 >> 3);
    t18 = (t17 & 1);
    *((unsigned int *)t10) = t18;
    t13 = (t0 + 600U);
    t14 = *((char **)t13);
    memset(t23, 0, 8);
    t13 = (t23 + 4);
    t15 = (t14 + 4);
    t19 = *((unsigned int *)t14);
    t20 = (t19 >> 2);
    t21 = (t20 & 1);
    *((unsigned int *)t23) = t21;
    t24 = *((unsigned int *)t15);
    t25 = (t24 >> 2);
    t26 = (t25 & 1);
    *((unsigned int *)t13) = t26;
    t22 = (t0 + 600U);
    t27 = *((char **)t22);
    memset(t28, 0, 8);
    t22 = (t28 + 4);
    t29 = (t27 + 4);
    t30 = *((unsigned int *)t27);
    t31 = (t30 >> 1);
    t32 = (t31 & 1);
    *((unsigned int *)t28) = t32;
    t33 = *((unsigned int *)t29);
    t34 = (t33 >> 1);
    t35 = (t34 & 1);
    *((unsigned int *)t22) = t35;
    t36 = (t0 + 600U);
    t37 = *((char **)t36);
    memset(t38, 0, 8);
    t36 = (t38 + 4);
    t39 = (t37 + 4);
    t40 = *((unsigned int *)t37);
    t41 = (t40 >> 0);
    t42 = (t41 & 1);
    *((unsigned int *)t38) = t42;
    t43 = *((unsigned int *)t39);
    t44 = (t43 >> 0);
    t45 = (t44 & 1);
    *((unsigned int *)t36) = t45;
    t46 = (t0 + 692U);
    t47 = *((char **)t46);
    xsi_vlogfile_fwrite(*((unsigned int *)t9), 0, 0, 1, ng5, 6, t0, (char)118, t3, 1, (char)118, t23, 1, (char)118, t28, 1, (char)118, t38, 1, (char)118, t47, 1);
    xsi_set_current_line(41, ng0);
    t2 = (t0 + 1620);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB9;
    goto LAB1;

LAB9:    xsi_set_current_line(42, ng0);
    t4 = (t0 + 920);
    t9 = (t4 + 36U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng6)));
    memset(t3, 0, 8);
    xsi_vlog_unsigned_add(t3, 32, t10, 8, t11, 32);
    t12 = (t0 + 920);
    xsi_vlogvar_assign_value(t12, t3, 0, 0, 8);
    t2 = (t0 + 3024);
    t8 = *((int *)t2);
    *((int *)t2) = (t8 - 1);
    goto LAB5;

}


extern void work_m_00000000003386162100_4055130273_init()
{
	static char *pe[] = {(void *)Initial_32_0};
	xsi_register_didat("work_m_00000000003386162100_4055130273", "isim/FullAdder_4b_tb_isim_beh.exe.sim/work/m_00000000003386162100_4055130273.didat");
	xsi_register_executes(pe);
}
