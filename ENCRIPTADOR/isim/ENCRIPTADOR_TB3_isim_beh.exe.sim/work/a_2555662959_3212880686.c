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
extern char *IEEE_P_1242562249;
extern char *IEEE_P_2592010699;

char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_1242562249_sub_2110375371_1035706684(char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1697423399_503743352(char *, char *, char *, char *, char *, char *);


static void work_a_2555662959_3212880686_p_0(char *t0)
{
    char t8[16];
    char t12[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t9;
    unsigned int t10;
    unsigned char t11;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned char t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    xsi_set_current_line(36, ng0);
    t1 = xsi_get_transient_memory(12U);
    memset(t1, 0, 12U);
    t2 = t1;
    memset(t2, (unsigned char)4, 12U);
    t3 = (t0 + 2448);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 12U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(37, ng0);
    t1 = (t0 + 1328U);
    t2 = *((char **)t1);
    t1 = (t0 + 4184U);
    t3 = (t0 + 4251);
    t5 = (t8 + 0U);
    t6 = (t5 + 0U);
    *((int *)t6) = 0;
    t6 = (t5 + 4U);
    *((int *)t6) = 1;
    t6 = (t5 + 8U);
    *((int *)t6) = 1;
    t9 = (1 - 0);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t6 = (t5 + 12U);
    *((unsigned int *)t6) = t10;
    t11 = ieee_p_1242562249_sub_2110375371_1035706684(IEEE_P_1242562249, t2, t1, t3, t8);
    if (t11 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 2396);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(38, ng0);
    t6 = (t0 + 868U);
    t7 = *((char **)t6);
    t6 = (t0 + 4136U);
    t13 = (t0 + 684U);
    t14 = *((char **)t13);
    t13 = (t0 + 4104U);
    t15 = ieee_p_2592010699_sub_1697423399_503743352(IEEE_P_2592010699, t12, t7, t6, t14, t13);
    t16 = (t12 + 12U);
    t10 = *((unsigned int *)t16);
    t17 = (1U * t10);
    t18 = (12U != t17);
    if (t18 == 1)
        goto LAB5;

LAB6:    t19 = (t0 + 2448);
    t20 = (t19 + 32U);
    t21 = *((char **)t20);
    t22 = (t21 + 40U);
    t23 = *((char **)t22);
    memcpy(t23, t15, 12U);
    xsi_driver_first_trans_fast_port(t19);
    xsi_set_current_line(39, ng0);
    t1 = (t0 + 960U);
    t2 = *((char **)t1);
    t11 = *((unsigned char *)t2);
    t18 = (t11 == (unsigned char)3);
    if (t18 != 0)
        goto LAB7;

LAB9:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 2484);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 40U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB8:    goto LAB3;

LAB5:    xsi_size_not_matching(12U, t17, 0);
    goto LAB6;

LAB7:    xsi_set_current_line(40, ng0);
    t1 = (t0 + 2484);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB8;

}

static void work_a_2555662959_3212880686_p_1(char *t0)
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

LAB0:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 568U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 2404);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(50, ng0);
    t4 = (t0 + 1052U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB8;

LAB10:    t2 = (t0 + 1328U);
    t4 = *((char **)t2);
    t2 = (t0 + 4184U);
    t5 = (t0 + 1500U);
    t8 = *((char **)t5);
    t5 = (t0 + 4168U);
    t1 = ieee_p_1242562249_sub_2110375371_1035706684(IEEE_P_1242562249, t4, t2, t8, t5);
    if (t1 != 0)
        goto LAB11;

LAB12:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1328U);
    t4 = *((char **)t2);
    t2 = (t0 + 4184U);
    t5 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t18, t4, t2, 1);
    t8 = (t18 + 12U);
    t19 = *((unsigned int *)t8);
    t20 = (1U * t19);
    t1 = (2U != t20);
    if (t1 == 1)
        goto LAB13;

LAB14:    t11 = (t0 + 2520);
    t12 = (t11 + 32U);
    t13 = *((char **)t12);
    t14 = (t13 + 40U);
    t15 = *((char **)t14);
    memcpy(t15, t5, 2U);
    xsi_driver_first_trans_fast(t11);

LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 592U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(51, ng0);
    t4 = xsi_get_transient_memory(2U);
    memset(t4, 0, 2U);
    t11 = t4;
    memset(t11, (unsigned char)2, 2U);
    t12 = (t0 + 2520);
    t13 = (t12 + 32U);
    t14 = *((char **)t13);
    t15 = (t14 + 40U);
    t16 = *((char **)t15);
    memcpy(t16, t4, 2U);
    xsi_driver_first_trans_fast(t12);
    goto LAB9;

LAB11:    xsi_set_current_line(53, ng0);
    t11 = xsi_get_transient_memory(2U);
    memset(t11, 0, 2U);
    t12 = t11;
    memset(t12, (unsigned char)2, 2U);
    t13 = (t0 + 2520);
    t14 = (t13 + 32U);
    t15 = *((char **)t14);
    t16 = (t15 + 40U);
    t17 = *((char **)t16);
    memcpy(t17, t11, 2U);
    xsi_driver_first_trans_fast(t13);
    goto LAB9;

LAB13:    xsi_size_not_matching(2U, t20, 0);
    goto LAB14;

}


extern void work_a_2555662959_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2555662959_3212880686_p_0,(void *)work_a_2555662959_3212880686_p_1};
	xsi_register_didat("work_a_2555662959_3212880686", "isim/ENCRIPTADOR_TB3_isim_beh.exe.sim/work/a_2555662959_3212880686.didat");
	xsi_register_executes(pe);
}
