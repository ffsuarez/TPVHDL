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
static const char *ng0 = "D:/workdirectory/test/SHIFT8.vhd";



static void work_a_2625681708_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;

LAB0:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 936U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 2144);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(34, ng0);
    t4 = (t0 + 868U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB8;

LAB10:    t2 = (t0 + 684U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB11;

LAB12:    t2 = (t0 + 776U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB13;

LAB14:
LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 960U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(35, ng0);
    t4 = (t0 + 3588);
    t12 = (t0 + 2196);
    t13 = (t12 + 32U);
    t14 = *((char **)t13);
    t15 = (t14 + 40U);
    t16 = *((char **)t15);
    memcpy(t16, t4, 8U);
    xsi_driver_first_trans_fast(t12);
    goto LAB9;

LAB11:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 592U);
    t5 = *((char **)t2);
    t2 = (t0 + 2196);
    t8 = (t2 + 32U);
    t11 = *((char **)t8);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    memcpy(t13, t5, 8U);
    xsi_driver_first_trans_fast(t2);
    goto LAB9;

LAB13:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 1144U);
    t5 = *((char **)t2);
    t17 = (6 - 7);
    t18 = (t17 * -1);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t2 = (t5 + t20);
    t6 = *((unsigned char *)t2);
    t8 = (t0 + 2196);
    t11 = (t8 + 32U);
    t12 = *((char **)t11);
    t13 = (t12 + 40U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = t6;
    xsi_driver_first_trans_delta(t8, 0U, 1, 0LL);
    xsi_set_current_line(40, ng0);
    t2 = (t0 + 1144U);
    t4 = *((char **)t2);
    t17 = (5 - 7);
    t18 = (t17 * -1);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t2 = (t4 + t20);
    t1 = *((unsigned char *)t2);
    t5 = (t0 + 2196);
    t8 = (t5 + 32U);
    t11 = *((char **)t8);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t1;
    xsi_driver_first_trans_delta(t5, 1U, 1, 0LL);
    xsi_set_current_line(41, ng0);
    t2 = (t0 + 1144U);
    t4 = *((char **)t2);
    t17 = (4 - 7);
    t18 = (t17 * -1);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t2 = (t4 + t20);
    t1 = *((unsigned char *)t2);
    t5 = (t0 + 2196);
    t8 = (t5 + 32U);
    t11 = *((char **)t8);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t1;
    xsi_driver_first_trans_delta(t5, 2U, 1, 0LL);
    xsi_set_current_line(42, ng0);
    t2 = (t0 + 1144U);
    t4 = *((char **)t2);
    t17 = (3 - 7);
    t18 = (t17 * -1);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t2 = (t4 + t20);
    t1 = *((unsigned char *)t2);
    t5 = (t0 + 2196);
    t8 = (t5 + 32U);
    t11 = *((char **)t8);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t1;
    xsi_driver_first_trans_delta(t5, 3U, 1, 0LL);
    xsi_set_current_line(43, ng0);
    t2 = (t0 + 1144U);
    t4 = *((char **)t2);
    t17 = (2 - 7);
    t18 = (t17 * -1);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t2 = (t4 + t20);
    t1 = *((unsigned char *)t2);
    t5 = (t0 + 2196);
    t8 = (t5 + 32U);
    t11 = *((char **)t8);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t1;
    xsi_driver_first_trans_delta(t5, 4U, 1, 0LL);
    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1144U);
    t4 = *((char **)t2);
    t17 = (1 - 7);
    t18 = (t17 * -1);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t2 = (t4 + t20);
    t1 = *((unsigned char *)t2);
    t5 = (t0 + 2196);
    t8 = (t5 + 32U);
    t11 = *((char **)t8);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t1;
    xsi_driver_first_trans_delta(t5, 5U, 1, 0LL);
    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1144U);
    t4 = *((char **)t2);
    t17 = (0 - 7);
    t18 = (t17 * -1);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t2 = (t4 + t20);
    t1 = *((unsigned char *)t2);
    t5 = (t0 + 2196);
    t8 = (t5 + 32U);
    t11 = *((char **)t8);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t1;
    xsi_driver_first_trans_delta(t5, 6U, 1, 0LL);
    xsi_set_current_line(46, ng0);
    t2 = (t0 + 1144U);
    t4 = *((char **)t2);
    t17 = (7 - 7);
    t18 = (t17 * -1);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t2 = (t4 + t20);
    t1 = *((unsigned char *)t2);
    t5 = (t0 + 2196);
    t8 = (t5 + 32U);
    t11 = *((char **)t8);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t1;
    xsi_driver_first_trans_delta(t5, 7U, 1, 0LL);
    goto LAB9;

}

static void work_a_2625681708_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(52, ng0);

LAB3:    t1 = (t0 + 1144U);
    t2 = *((char **)t1);
    t1 = (t0 + 2232);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 2152);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2625681708_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2625681708_3212880686_p_0,(void *)work_a_2625681708_3212880686_p_1};
	xsi_register_didat("work_a_2625681708_3212880686", "isim/TEST_isim_beh.exe.sim/work/a_2625681708_3212880686.didat");
	xsi_register_executes(pe);
}
