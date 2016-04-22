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
static const char *ng0 = "C:/Users/Alex/Documents/Labs/Lab7/ControlUnit_tb.v";
static int ng1[] = {0, 0};
static int ng2[] = {16, 0};
static int ng3[] = {1, 0};



static void Initial_39_0(char *t0)
{
    char t14[8];
    char *t1;
    char *t2;
    char *t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    int t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t15;

LAB0:    t1 = (t0 + 2364U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(39, ng0);

LAB4:    xsi_set_current_line(41, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1840);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);
    xsi_set_current_line(44, ng0);
    t2 = (t0 + 2264);
    xsi_process_wait(t2, 50000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(47, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t2 + 4);
    t4 = *((unsigned int *)t3);
    t5 = (~(t4));
    t6 = *((unsigned int *)t2);
    t7 = (t6 & t5);
    t8 = (t0 + 3812);
    *((int *)t8) = t7;

LAB6:    t9 = (t0 + 3812);
    if (*((int *)t9) > 0)
        goto LAB7;

LAB8:    goto LAB1;

LAB7:    xsi_set_current_line(48, ng0);

LAB9:    xsi_set_current_line(49, ng0);
    t10 = (t0 + 1840);
    t11 = (t10 + 36U);
    t12 = *((char **)t11);
    t13 = ((char*)((ng3)));
    memset(t14, 0, 8);
    xsi_vlog_unsigned_add(t14, 32, t12, 5, t13, 32);
    t15 = (t0 + 1840);
    xsi_vlogvar_assign_value(t15, t14, 0, 0, 5);
    xsi_set_current_line(50, ng0);
    t2 = (t0 + 2264);
    xsi_process_wait(t2, 50000LL);
    *((char **)t1) = &&LAB10;
    goto LAB1;

LAB10:    t2 = (t0 + 3812);
    t7 = *((int *)t2);
    *((int *)t2) = (t7 - 1);
    goto LAB6;

}


extern void work_m_00000000000749525117_0437905220_init()
{
	static char *pe[] = {(void *)Initial_39_0};
	xsi_register_didat("work_m_00000000000749525117_0437905220", "isim/ControlUnit_tb_isim_beh.exe.sim/work/m_00000000000749525117_0437905220.didat");
	xsi_register_executes(pe);
}
