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
static const char *ng0 = "D:/workdirectory/PROPIO10/PROPIO10.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1605435078_503743352(char *, unsigned char , unsigned char );


static void work_a_3670377113_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    int t4;
    char *t5;
    char *t6;
    int t7;
    int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned char t13;
    char *t14;
    char *t15;
    unsigned char t16;
    unsigned char t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    xsi_set_current_line(25, ng0);
    t1 = (t0 + 2753);
    *((int *)t1) = 7;
    t2 = (t0 + 2757);
    *((int *)t2) = 0;
    t3 = 7;
    t4 = 0;

LAB2:    if (t3 >= t4)
        goto LAB3;

LAB5:    t1 = (t0 + 1632);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(26, ng0);
    t5 = (t0 + 592U);
    t6 = *((char **)t5);
    t5 = (t0 + 2753);
    t7 = *((int *)t5);
    t8 = (t7 - 7);
    t9 = (t8 * -1);
    xsi_vhdl_check_range_of_index(7, 0, -1, *((int *)t5));
    t10 = (1U * t9);
    t11 = (0 + t10);
    t12 = (t6 + t11);
    t13 = *((unsigned char *)t12);
    t14 = (t0 + 776U);
    t15 = *((char **)t14);
    t16 = *((unsigned char *)t15);
    t17 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t13, t16);
    t14 = (t0 + 1676);
    t18 = (t14 + 32U);
    t19 = *((char **)t18);
    t20 = (t19 + 40U);
    t21 = *((char **)t20);
    *((unsigned char *)t21) = t17;
    xsi_driver_first_trans_fast_port(t14);

LAB4:    t1 = (t0 + 2753);
    t3 = *((int *)t1);
    t2 = (t0 + 2757);
    t4 = *((int *)t2);
    if (t3 == t4)
        goto LAB5;

LAB6:    t7 = (t3 + -1);
    t3 = t7;
    t5 = (t0 + 2753);
    *((int *)t5) = t3;
    goto LAB2;

}


extern void work_a_3670377113_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3670377113_3212880686_p_0};
	xsi_register_didat("work_a_3670377113_3212880686", "isim/PROPIO10_TB_isim_beh.exe.sim/work/a_3670377113_3212880686.didat");
	xsi_register_executes(pe);
}
