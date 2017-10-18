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
static const char *ng0 = "D:/workdirectory/ENCRIPTADOR/ENCRIPTADOR.vhd";
extern char *IEEE_P_2592010699;

char *ieee_p_2592010699_sub_1697423399_503743352(char *, char *, char *, char *, char *, char *);


static void work_a_2555662959_3212880686_p_0(char *t0)
{
    char t8[16];
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 568U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 2000);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(34, ng0);
    t4 = (t0 + 868U);
    t9 = *((char **)t4);
    t4 = (t0 + 3436U);
    t10 = (t0 + 684U);
    t11 = *((char **)t10);
    t10 = (t0 + 3404U);
    t12 = ieee_p_2592010699_sub_1697423399_503743352(IEEE_P_2592010699, t8, t9, t4, t11, t10);
    t13 = (t8 + 12U);
    t14 = *((unsigned int *)t13);
    t15 = (1U * t14);
    t16 = (12U != t15);
    if (t16 == 1)
        goto LAB8;

LAB9:    t17 = (t0 + 2044);
    t18 = (t17 + 32U);
    t19 = *((char **)t18);
    t20 = (t19 + 40U);
    t21 = *((char **)t20);
    memcpy(t21, t12, 12U);
    xsi_driver_first_trans_fast_port(t17);
    xsi_set_current_line(35, ng0);
    t2 = (t0 + 960U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB10;

LAB12:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 2080);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t9 = (t5 + 40U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);

LAB11:    goto LAB3;

LAB5:    t4 = (t0 + 592U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_size_not_matching(12U, t15, 0);
    goto LAB9;

LAB10:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 2080);
    t5 = (t2 + 32U);
    t9 = *((char **)t5);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB11;

}


extern void work_a_2555662959_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2555662959_3212880686_p_0};
	xsi_register_didat("work_a_2555662959_3212880686", "isim/ENCRIPTADOR_TB2_isim_beh.exe.sim/work/a_2555662959_3212880686.didat");
	xsi_register_executes(pe);
}
