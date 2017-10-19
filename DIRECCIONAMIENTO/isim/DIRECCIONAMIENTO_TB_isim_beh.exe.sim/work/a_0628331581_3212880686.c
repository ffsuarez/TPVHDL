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
static const char *ng0 = "D:/workdirectory/DIRECCIONAMIENTO/DIRECCIONAMIENTO.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_1242562249_sub_2110375371_1035706684(char *, char *, char *, char *, char *);


static void work_a_0628331581_3212880686_p_0(char *t0)
{
    char t18[16];
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
    char *t17;
    unsigned int t19;
    unsigned int t20;
    int t21;
    int t22;
    char *t23;
    char *t24;

LAB0:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 660U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 1144U);
    t4 = *((char **)t2);
    t2 = (t0 + 5572U);
    t5 = (t0 + 1752U);
    t8 = *((char **)t5);
    t5 = (t0 + 5588U);
    t1 = ieee_p_1242562249_sub_2110375371_1035706684(IEEE_P_1242562249, t4, t2, t8, t5);
    if (t1 != 0)
        goto LAB11;

LAB13:    t2 = (t0 + 1420U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)1);
    if (t3 != 0)
        goto LAB14;

LAB15:    t2 = (t0 + 1420U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)2);
    if (t3 != 0)
        goto LAB18;

LAB19:
LAB12:
LAB3:    t2 = (t0 + 2792);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(53, ng0);
    t4 = (t0 + 592U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB8;

LAB10:
LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 684U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(54, ng0);
    t4 = xsi_get_transient_memory(2U);
    memset(t4, 0, 2U);
    t11 = t4;
    memset(t11, (unsigned char)2, 2U);
    t12 = (t0 + 2852);
    t13 = (t12 + 32U);
    t14 = *((char **)t13);
    t15 = (t14 + 40U);
    t16 = *((char **)t15);
    memcpy(t16, t4, 2U);
    xsi_driver_first_trans_fast(t12);
    xsi_set_current_line(55, ng0);
    t2 = (t0 + 5838);
    t5 = (t0 + 2888);
    t8 = (t5 + 32U);
    t11 = *((char **)t8);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    memcpy(t13, t2, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(56, ng0);
    t2 = (t0 + 2924);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t8 = (t5 + 40U);
    t11 = *((char **)t8);
    *((int *)t11) = 0;
    xsi_driver_first_trans_fast(t2);
    goto LAB9;

LAB11:    xsi_set_current_line(60, ng0);
    t11 = xsi_get_transient_memory(2U);
    memset(t11, 0, 2U);
    t12 = t11;
    memset(t12, (unsigned char)2, 2U);
    t13 = (t0 + 2852);
    t14 = (t13 + 32U);
    t15 = *((char **)t14);
    t16 = (t15 + 40U);
    t17 = *((char **)t16);
    memcpy(t17, t11, 2U);
    xsi_driver_first_trans_fast(t13);
    goto LAB12;

LAB14:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 1144U);
    t5 = *((char **)t2);
    t2 = (t0 + 5572U);
    t8 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t18, t5, t2, 1);
    t11 = (t18 + 12U);
    t19 = *((unsigned int *)t11);
    t20 = (1U * t19);
    t6 = (2U != t20);
    if (t6 == 1)
        goto LAB16;

LAB17:    t12 = (t0 + 2852);
    t13 = (t12 + 32U);
    t14 = *((char **)t13);
    t15 = (t14 + 40U);
    t16 = *((char **)t15);
    memcpy(t16, t8, 2U);
    xsi_driver_first_trans_fast(t12);
    xsi_set_current_line(63, ng0);
    t2 = (t0 + 1236U);
    t4 = *((char **)t2);
    t2 = (t0 + 5604U);
    t5 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t18, t4, t2, 1);
    t8 = (t0 + 2888);
    t11 = (t8 + 32U);
    t12 = *((char **)t11);
    t13 = (t12 + 40U);
    t14 = *((char **)t13);
    memcpy(t14, t5, 4U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 1328U);
    t4 = *((char **)t2);
    t21 = *((int *)t4);
    t22 = (t21 + 1);
    t2 = (t0 + 2924);
    t5 = (t2 + 32U);
    t8 = *((char **)t5);
    t11 = (t8 + 40U);
    t12 = *((char **)t11);
    *((int *)t12) = t22;
    xsi_driver_first_trans_fast(t2);
    goto LAB12;

LAB16:    xsi_size_not_matching(2U, t20, 0);
    goto LAB17;

LAB18:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 1236U);
    t5 = *((char **)t2);
    t2 = (t0 + 5842);
    t6 = 1;
    if (4U == 4U)
        goto LAB23;

LAB24:    t6 = 0;

LAB25:    if (t6 != 0)
        goto LAB20;

LAB22:
LAB21:    goto LAB12;

LAB20:    xsi_set_current_line(67, ng0);
    t13 = (t0 + 5846);
    t15 = (t0 + 2888);
    t16 = (t15 + 32U);
    t17 = *((char **)t16);
    t23 = (t17 + 40U);
    t24 = *((char **)t23);
    memcpy(t24, t13, 4U);
    xsi_driver_first_trans_fast(t15);
    xsi_set_current_line(68, ng0);
    t2 = (t0 + 2924);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t8 = (t5 + 40U);
    t11 = *((char **)t8);
    *((int *)t11) = 0;
    xsi_driver_first_trans_fast(t2);
    goto LAB21;

LAB23:    t19 = 0;

LAB26:    if (t19 < 4U)
        goto LAB27;
    else
        goto LAB25;

LAB27:    t11 = (t5 + t19);
    t12 = (t2 + t19);
    if (*((unsigned char *)t11) != *((unsigned char *)t12))
        goto LAB24;

LAB28:    t19 = (t19 + 1);
    goto LAB26;

}

static void work_a_0628331581_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    int t13;
    int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    static char *nl0[] = {&&LAB3, &&LAB4, &&LAB5};

LAB0:    xsi_set_current_line(78, ng0);
    t1 = (t0 + 1420U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 2800);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(80, ng0);
    t4 = (t0 + 776U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    if (t7 != 0)
        goto LAB6;

LAB8:    xsi_set_current_line(83, ng0);
    t1 = (t0 + 2960);
    t2 = (t1 + 32U);
    t4 = *((char **)t2);
    t5 = (t4 + 40U);
    t8 = *((char **)t5);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB7:    goto LAB2;

LAB4:    xsi_set_current_line(89, ng0);
    t1 = (t0 + 1144U);
    t2 = *((char **)t1);
    t1 = (t0 + 5572U);
    t4 = (t0 + 1752U);
    t5 = *((char **)t4);
    t4 = (t0 + 5588U);
    t3 = ieee_p_1242562249_sub_2110375371_1035706684(IEEE_P_1242562249, t2, t1, t5, t4);
    if (t3 != 0)
        goto LAB9;

LAB11:    xsi_set_current_line(92, ng0);
    t1 = (t0 + 2960);
    t2 = (t1 + 32U);
    t4 = *((char **)t2);
    t5 = (t4 + 40U);
    t8 = *((char **)t5);
    *((unsigned char *)t8) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);

LAB10:    goto LAB2;

LAB5:    xsi_set_current_line(97, ng0);
    t1 = (t0 + 1684U);
    t2 = *((char **)t1);
    t1 = (t0 + 1328U);
    t4 = *((char **)t1);
    t13 = *((int *)t4);
    t14 = (t13 - 0);
    t15 = (t14 * 1);
    xsi_vhdl_check_range_of_index(0, 15, 1, t13);
    t16 = (11U * t15);
    t17 = (0 + t16);
    t1 = (t2 + t17);
    t5 = (t0 + 2996);
    t8 = (t5 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 11U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(98, ng0);
    t1 = (t0 + 1236U);
    t2 = *((char **)t1);
    t1 = (t0 + 3032);
    t4 = (t1 + 32U);
    t5 = *((char **)t4);
    t8 = (t5 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(99, ng0);
    t1 = (t0 + 1236U);
    t2 = *((char **)t1);
    t1 = (t0 + 5850);
    t3 = 1;
    if (4U == 4U)
        goto LAB15;

LAB16:    t3 = 0;

LAB17:    if (t3 != 0)
        goto LAB12;

LAB14:    xsi_set_current_line(102, ng0);
    t1 = (t0 + 2960);
    t2 = (t1 + 32U);
    t4 = *((char **)t2);
    t5 = (t4 + 40U);
    t8 = *((char **)t5);
    *((unsigned char *)t8) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);

LAB13:    goto LAB2;

LAB6:    xsi_set_current_line(81, ng0);
    t4 = (t0 + 2960);
    t8 = (t4 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)1;
    xsi_driver_first_trans_fast(t4);
    goto LAB7;

LAB9:    xsi_set_current_line(90, ng0);
    t8 = (t0 + 2960);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t11 = (t10 + 40U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast(t8);
    goto LAB10;

LAB12:    xsi_set_current_line(100, ng0);
    t9 = (t0 + 2960);
    t10 = (t9 + 32U);
    t11 = *((char **)t10);
    t12 = (t11 + 40U);
    t18 = *((char **)t12);
    *((unsigned char *)t18) = (unsigned char)0;
    xsi_driver_first_trans_fast(t9);
    goto LAB13;

LAB15:    t15 = 0;

LAB18:    if (t15 < 4U)
        goto LAB19;
    else
        goto LAB17;

LAB19:    t5 = (t2 + t15);
    t8 = (t1 + t15);
    if (*((unsigned char *)t5) != *((unsigned char *)t8))
        goto LAB16;

LAB20:    t15 = (t15 + 1);
    goto LAB18;

}

static void work_a_0628331581_3212880686_p_2(char *t0)
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
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(110, ng0);
    t2 = (t0 + 660U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 2808);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(111, ng0);
    t4 = (t0 + 1512U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t4 = (t0 + 3068);
    t10 = (t4 + 32U);
    t11 = *((char **)t10);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t9;
    xsi_driver_first_trans_fast(t4);
    goto LAB3;

LAB5:    t4 = (t0 + 684U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

}


extern void work_a_0628331581_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0628331581_3212880686_p_0,(void *)work_a_0628331581_3212880686_p_1,(void *)work_a_0628331581_3212880686_p_2};
	xsi_register_didat("work_a_0628331581_3212880686", "isim/DIRECCIONAMIENTO_TB_isim_beh.exe.sim/work/a_0628331581_3212880686.didat");
	xsi_register_executes(pe);
}
