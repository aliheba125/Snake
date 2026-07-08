extern char g_410000;
extern char g_412414;
extern char g_42c560;
extern char g_4ee300;
extern char g_4f1084;
extern char g_c20908;
extern char g_c20cb0;
extern char g_c20cd8;
extern char g_c20d20;
extern char g_c20d48;
extern char g_c28000;
extern char g_c28018;
extern char g_c28028;
extern char g_c28048;
extern char g_c28050;
extern char g_c28058;
extern char g_c28060;
extern char g_c28068;
extern char g_c28070;
extern char g_c28078;
extern char g_c28080;
extern char g_c28088;
extern char g_c280a0;
extern char g_c280c0;
extern char g_c280c8;
extern char g_c280d0;
extern char g_c280d8;
extern char g_c285b8;
extern char g_c36000;
extern char g_c36bf8;

int sub_4ed990()
{
    int tmp_0;  // tmp #0
    unsigned long v5;  // [bp-0xd8]
    unsigned long v6;  // [bp-0xd0]
    unsigned long v7;  // [bp-0xc8]
    unsigned int v8;  // [bp-0xbc]
    unsigned long v11;  // [bp-0xa0]
    unsigned int v12;  // [bp-0x98]
    unsigned long v14;  // [bp-0x68]
    unsigned long v15;  // [bp-0x60]
    unsigned long v16;  // [bp-0x58]
    unsigned long v17;  // [bp-0x50]
    unsigned long v18;  // [bp-0x48]
    unsigned long v19;  // [bp-0x40]
    unsigned long v20;  // [bp-0x38]
    unsigned long v21;  // [bp-0x30]
    unsigned long v22;  // [bp-0x28]
    unsigned long v23;  // [bp-0x20], Other Possible Types: char
    unsigned long v24;  // [bp-0x18]
    unsigned long v25;  // [bp-0x10]
    unsigned long v26;  // [bp-0x8]
    char v27;  // [bp+0x0]
    char v28;  // [bp+0x8]
    char v29;  // [bp+0x10]
    char v30;  // [bp+0x18]
    char v31;  // [bp+0x20]
    char v32;  // [bp+0x28]
    char v33;  // [bp+0x30]
    char v34;  // [bp+0x40]
    char v35;  // [bp+0x50]
    char v36;  // [bp+0x58]
    char v37;  // [bp+0x60]
    unsigned long v38;  // [bp+0x68]
    char v39;  // [bp+0x70]
    int v40;  // [bp+0xb0]
    int v41;  // [bp+0xc0]
    int v42;  // [bp+0xd0]
    unsigned long v43;  // [bp+0xe8]
    unsigned long v44;  // [bp+0xf0]
    char v45;  // [bp+0xf8]
    char v46;  // [bp+0x100]
    char v47;  // [bp+0x108]
    char v48;  // [bp+0x110]
    unsigned long v49;  // [bp+0x118], Other Possible Types: char
    char v50;  // [bp+0x120]
    char v51;  // [bp+0x128]
    char v52;  // [bp+0x140]
    char v53;  // [bp+0x150]
    char v54;  // [bp+0x158]
    char v55;  // [bp+0x168]
    char v56;  // [bp+0x170]
    unsigned long v57;  // [bp+0x178], Other Possible Types: char
    char v58;  // [bp+0x188]
    char v59;  // [bp+0x190], Other Possible Types: unsigned long
    unsigned long v60;  // [bp+0x1a8]
    char v61;  // [bp+0x1b8]
    char v62;  // [bp+0x1c0], Other Possible Types: unsigned long
    int v63;  // [bp+0x1d0]
    int v64;  // [bp+0x1e0]
    unsigned long v65;  // [bp+0x1f0]
    unsigned int v66;  // [bp+0x238]
    char v67;  // [bp+0x240]
    char v68;  // [bp+0x274]
    unsigned long v69;  // [bp+0x330]
    unsigned long v70;  // [bp+0x338], Other Possible Types: unsigned int
    char v71;  // [bp+0x340]
    char v72;  // [bp+0x378]
    char v73;  // [bp+0x388]
    unsigned int v74;  // [bp+0x398]
    unsigned long v75;  // [bp+0x3a0]
    unsigned long v76;  // [bp+0x428]
    unsigned int v77;  // [bp+0x430]
    char v78;  // [bp+0x750]
    char v79;  // [bp+0x758]
    char v80;  // [bp+0x760]
    char v81;  // [bp+0x768]
    char v82;  // [bp+0x770]
    char v83;  // [bp+0x778]
    char v84;  // [bp+0x780]
    char v85;  // [bp+0x788]
    char v86;  // [bp+0x790]
    char v87;  // [bp+0x798]
    char v88;  // [bp+0x7a0]
    char v89;  // [bp+0x7a8]
    unsigned long v90;  // x8
    unsigned int v92;  // w8
    unsigned long v93;  // x26
    unsigned int v94;  // w8
    unsigned long v95;  // x1
    unsigned long v96;  // x28
    unsigned long v97;  // x24
    unsigned long v98;  // x8
    unsigned long v99;  // x8
    unsigned long v100;  // x9
    unsigned long v101;  // x22
    unsigned int v102;  // w25
    unsigned long v103;  // x1
    unsigned long v105;  // x10
    unsigned long v106;  // x8
    unsigned long v107;  // x19
    unsigned long v108;  // x0
    unsigned long v112;  // x9
    unsigned long v115;  // x0
    unsigned long v116;  // x10
    unsigned long v117;  // x1
    unsigned long v118;  // x1
    unsigned long v119;  // x0
    unsigned long v120;  // x1
    unsigned long v121;  // x3
    unsigned long v122;  // x4
    unsigned long v123;  // x5
    unsigned long v124;  // x21
    unsigned long v125;  // x0
    unsigned long v126;  // x1
    unsigned long v127;  // x2
    unsigned long v128;  // x3
    unsigned long v129;  // x4
    unsigned long v130;  // x5
    unsigned long v131;  // x0
    unsigned long v132;  // x8
    unsigned long v133;  // x24
    unsigned long v134;  // x28
    unsigned long v135;  // x1
    unsigned long v136;  // x0
    unsigned long v137;  // x5
    unsigned long v138;  // x2
    unsigned long v139;  // x3
    unsigned long v140;  // x4
    int v141;  // q0
    unsigned long v142;  // x9
    unsigned long v143;  // x10
    unsigned long v144;  // x8
    unsigned long v145;  // x19
    unsigned long v146;  // x24
    unsigned long v147;  // x27
    unsigned long v148;  // x21
    unsigned long v149;  // x10
    unsigned long v150;  // x16
    unsigned long v151;  // x14
    unsigned long v152;  // x15
    unsigned long v154;  // x11
    unsigned long v155;  // x13
    unsigned long v156;  // x0
    unsigned short v157;  // x8
    unsigned int v158;  // w8
    unsigned long v159;  // x20
    unsigned long v160;  // x23
    unsigned long v163;  // x20
    unsigned long v164;  // x19
    unsigned long v165;  // x22
    unsigned long v166;  // x21
    unsigned long v167;  // x24
    unsigned long v168;  // x23
    unsigned long v169;  // x26
    unsigned long v170;  // x25
    unsigned long v171;  // x28
    unsigned long v172;  // x27
    unsigned long v173;  // x29
    unsigned long v174;  // tpidr_el0
    unsigned long v175;  // x21
    unsigned long v176;  // x0
    unsigned long v177;  // x1
    unsigned long v178;  // x2
    unsigned long v179;  // x3
    unsigned long v180;  // x4
    unsigned long v181;  // x5
    unsigned long v182;  // x0
    unsigned long v183;  // x0
    unsigned long v184;  // x8
    unsigned long v185;  // x1
    unsigned long v187;  // x22
    unsigned long v188;  // x20
    unsigned long v189;  // x24
    unsigned long v190;  // x0
    unsigned long v191;  // x1
    unsigned long v192;  // x2
    unsigned long v193;  // x3
    unsigned long v194;  // x4
    unsigned long v195;  // x5
    unsigned long v196;  // x0
    unsigned long v197;  // x23
    unsigned long v198;  // x19
    unsigned long v199;  // x8
    unsigned long v200;  // x0
    unsigned long v201;  // x5
    unsigned long v202;  // x2
    unsigned long v203;  // x3
    unsigned long v204;  // x4
    unsigned long v205;  // x9
    unsigned long v206;  // x10
    unsigned long v207;  // x8
    int v208;  // q0
    unsigned long v209;  // x10
    unsigned long v210;  // x17
    unsigned long v212;  // x15
    unsigned long v213;  // x14
    unsigned long v214;  // x12
    unsigned long v215;  // x11
    unsigned long v216;  // x13
    unsigned long v217;  // x10
    unsigned long v218;  // x11
    unsigned long v219;  // x21
    unsigned long v220;  // x22
    unsigned long v221;  // x23
    unsigned long v222;  // x19
    unsigned long v223;  // x20
    unsigned long v224;  // x22
    unsigned long v225;  // x0
    unsigned long v226;  // x1
    unsigned long v227;  // x2
    unsigned long v228;  // x3
    unsigned long v229;  // x4
    unsigned long v230;  // x5
    unsigned long v231;  // x0
    unsigned long v232;  // x0
    unsigned long v235;  // x23
    unsigned long v236;  // x20
    unsigned long v237;  // x25
    unsigned long v238;  // x25
    unsigned long v271;  // x22
    unsigned long v272;  // x23
    unsigned long v273;  // x24
    unsigned long v274;  // x19
    unsigned long v275;  // x19
    unsigned long v276;  // x0
    unsigned long v277;  // x1
    unsigned long v278;  // x2
    unsigned long v279;  // x3
    unsigned long v280;  // x4
    unsigned long v281;  // x5
    unsigned long v282;  // x0
    unsigned long v283;  // x8
    unsigned long v285;  // x24
    unsigned long v286;  // x20
    unsigned long v287;  // x28
    unsigned long v288;  // x0
    unsigned long v289;  // x1
    unsigned long v290;  // x2
    unsigned long v291;  // x3
    unsigned long v292;  // x4
    unsigned long v293;  // x5
    unsigned long v294;  // x0
    unsigned long v295;  // x25
    unsigned long v296;  // x26
    unsigned long v297;  // x8
    unsigned long v299;  // x0
    unsigned long v300;  // x5
    unsigned long v301;  // x2
    unsigned long v302;  // x3
    unsigned long v303;  // x4
    unsigned long v304;  // x9
    unsigned long v305;  // x10
    unsigned long v306;  // x8
    int v307;  // q0
    unsigned long v308;  // x10
    unsigned long v309;  // x17
    unsigned long v311;  // x15
    unsigned long v312;  // x14
    unsigned long v313;  // x12
    unsigned long v314;  // x11
    unsigned long v315;  // x13
    unsigned long v316;  // x10
    unsigned long v317;  // x11
    unsigned long v318;  // x23
    unsigned long v319;  // x24
    unsigned long v320;  // x25
    unsigned long v321;  // x19
    unsigned long v322;  // x0
    unsigned long v323;  // x22
    unsigned long v324;  // x21
    unsigned long v325;  // x0
    unsigned long v326;  // x1
    unsigned long v327;  // x2
    unsigned long v328;  // x3
    unsigned long v329;  // x4
    unsigned long v330;  // x5
    unsigned long v331;  // x0
    unsigned long v332;  // x0
    unsigned long v335;  // x23
    unsigned long v336;  // x25
    unsigned long v337;  // x21
    unsigned long v371;  // x22
    unsigned long v372;  // x23
    unsigned long v373;  // x24
    unsigned long v374;  // x19
    unsigned long v375;  // x19
    unsigned long v376;  // x0
    unsigned long v377;  // x1
    unsigned long v378;  // x2
    unsigned long v379;  // x3
    unsigned long v380;  // x4
    unsigned long v381;  // x5
    unsigned long v382;  // x0
    unsigned long v383;  // x8
    unsigned long v385;  // x24
    unsigned long v386;  // x21
    unsigned long v387;  // x28
    unsigned long v388;  // x0
    unsigned long v389;  // x1
    unsigned long v390;  // x2
    unsigned long v391;  // x3
    unsigned long v392;  // x4
    unsigned long v393;  // x5
    unsigned long v394;  // x0
    unsigned long v395;  // x25
    unsigned long v396;  // x26
    unsigned long v397;  // x8
    unsigned long v399;  // x0
    unsigned long v400;  // x5
    unsigned long v401;  // x2
    unsigned long v402;  // x3
    unsigned long v403;  // x4
    unsigned long v404;  // x9
    unsigned long v405;  // x10
    unsigned long v406;  // x8
    int v407;  // q0
    unsigned long v408;  // x10
    unsigned long v409;  // x17
    unsigned long v411;  // x15
    unsigned long v412;  // x14
    unsigned long v413;  // x12
    unsigned long v414;  // x11
    unsigned long v415;  // x13
    unsigned long v416;  // x10
    unsigned long v417;  // x11
    unsigned long v418;  // x8
    unsigned long v419;  // x23
    unsigned long v420;  // x24
    unsigned long v421;  // x25
    unsigned long v422;  // x19
    unsigned long v423;  // x0
    unsigned long v424;  // x0
    unsigned long v425;  // x1
    unsigned long v426;  // x2
    unsigned long v427;  // x3
    unsigned long v428;  // x4
    unsigned long v429;  // x5
    unsigned long v430;  // x22
    unsigned long v431;  // x0
    unsigned long v435;  // x23
    unsigned long v436;  // x20
    unsigned long v437;  // x25
    unsigned long v459;  // x26
    unsigned long v460;  // x27
    unsigned long v461;  // x28
    unsigned long v472;  // x0
    unsigned long v473;  // x22
    unsigned long v474;  // x23
    unsigned long v475;  // x24
    unsigned long v476;  // x19
    unsigned long v477;  // x19
    unsigned long v478;  // x0
    unsigned long v479;  // x1
    unsigned long v480;  // x2
    unsigned long v481;  // x3
    unsigned long v482;  // x4
    unsigned long v483;  // x5
    unsigned long v484;  // x0
    unsigned long v487;  // x24
    unsigned long v488;  // x20
    unsigned long v489;  // x28

    v60 = v90;
    sub_c00314();
    if (v68 == 3)
        v92 = 1;
    else
        v92 = 0;
    v94 = (unsigned int)v93 & v92;
    if (v94 == 1)
    {
        sub_46169c(0);
        v95 = *((long long *)&v58);
        v65 = 0;
        v66 = 0;
        *((int128_t *)&v63) = *((int128_t *)&v34);
        *((int128_t *)&v64) = *((int128_t *)&v33);
        sub_b98998(&v63, v95, *((long long *)&v59) - v95);
        sub_461394(&v63);
        v93 = *((long long *)&v56);
        v96 = *((long long *)&v57) - v93;
        v69 = &g_c20d20;
        v75 = &g_c20d48;
        sub_be1130(*((long long *)&v39), v97);
        v147 = 2;
        v76 = 0;
        v38 = &g_c20cb0;
        v77 = -1;
        v69 = &g_c20cb0;
        v75 = &g_c20cd8;
        sub_bdfc1c(v97);
        v70 = *((long long *)&v32);
        v98 = *((long long *)&v35);
        *((int128_t *)v98) = 0;
        *((int128_t *)(v98 + 16)) = 0;
        v74 = 16;
        if (v96)
        {
            do
            {
                v99 = v69;
                v100 = *((long long *)(v99 - 24));
                *((int *)(v97 + v100)) = *((int *)(v97 + v100)) & -75 | 8;
                *((long long *)(v101 + *((long long *)(v99 - 24)))) = 2;
                *((unsigned int *)(v148 + *((long long *)(v99 - 24)))) = v102;
                v103 = *((char *)v93);
                v93 += 1;
                sub_be0b10(&v69, v103);
                tmp_0 = v96;
                v96 -= 1;
            } while (tmp_0 != 1);
        }
        sub_bc4d10(v97);
        v75 = &g_c20cd8;
        v69 = v38;
        v70 = &g_c20908;
        if ((v72 & 1))
            sub_c00314(*((long long *)&v73));
        sub_bdfbc8(v97);
        sub_be07a8(&v69, *((long long *)&v31));
        sub_bdfad4(*((long long *)&v39));
        sub_c00a60(&v52, &v54);
        sub_469d9c(&v52);
        v134 = *((long long *)&v36);
        v159 = 17216961135462248175;
        if ((v52 & 1))
            sub_c00314(*((long long *)&v53));
        v105 = __ROL__((char)v69, 63) & 9223372036854775807;
        if ((char)[D] arm64g_calculate_condition(0x2<64>, x0<8>, 0x1<64>, 0x0<64>))
            v106 = v105;
        else
            v106 = v70;
        if (v106)
        {
            v108 = *((long long *)(v134 + 208)) + 240 * v107 + 24;
            if (v108 != &v56)
                sub_bd3e2c(v108, *((long long *)&v56), *((long long *)&v57));
            v93 = *((long long *)&v49);
            if (v93 == *((long long *)&v50))
            {
                sub_bd0fe4(&v48, &v69);
            }
            else
            {
                sub_c00a60(v93, &v69);
                v49 = v93 + 24;
            }
        }
        if (((char)v69 & 1))
            sub_c00314(*((long long *)&v71));
        if ((v54 & 1))
            sub_c00314(*((long long *)&v55));
        if (*((long long *)&v57))
        {
            v57 = *((long long *)&v56);
            sub_c00314(*((long long *)&v57));
        }
        if (*((long long *)&v59))
        {
            v59 = *((long long *)&v58);
            sub_c00314(*((long long *)&v59));
        }
    }
    sub_4896c8(&v67);
    v112 = *((long long *)(v134 + 216)) - *((long long *)(v134 + 208));
    if (v107 + 1 < 17216961135462248175 * (v112 >> 63 & -0x1000000000000000 | __ROL__(v112, 60) & 1152921504606846975))
        goto LABEL_0x4ed8e0;
    if (*((long long *)&v62))
    {
        v62 = *((long long *)&v61);
        sub_c00314(*((long long *)&v62));
    }
    v160 = *((long long *)&v48);
    v146 = v49;
    v145 = *((long long *)&v37);
    if (v160 != v146)
    {
        v93 = &g_c36000;
        v134 = &v69;
        v43 = v146;
        *((int128_t *)&v42) = 0x10000000000000000;
        *((long long *)&v40) = 2 CONCAT 2;
        *((long long *)&v41) = 169 CONCAT 169;
        do
        {
            v115 = v145;
            v116 = *((long long *)v145);
            if (!((char)[D] arm64g_calculate_condition(0x2<64>, x0<8>, 0x1<64>, 0x0<64>)))
                v118 = v160 + 1;
            else
                v117 = *((long long *)(v160 + 16));
            v138 = *((long long *)(v116 + 1336))();
            g_c28ee0(v145, *((long long *)&v45), v138, *((long long *)&v46), *((long long *)&v47));
            v159 = g_c36bf8;
            if (!((char)[D] arm64g_calculate_condition(0x2<64>, x0<8>, 0x1<64>, 0x0<64>)))
                v148 = v160 + 1;
            else
                v148 = *((long long *)(v160 + 16));
            if (!g_c36bf8)
            {
                v119 = 0;
                v120 = 12;
                v138 = 7;
                v121 = 34;
                v122 = -1;
                v123 = 0;
                v156 = [D] syscall();
                v159 = v156;
                if ((char)[D] arm64g_calculate_condition(0x2<64>, x0<8>, 0x1<64>, 0x0<64>))
                {
                    v157 = 960;
                    v69 = 15276209943188210664;
                }
                else
                {
                    v44 = v148;
                    v124 = sysconf(39);
                    v133 = 0;
                    do
                    {
                        v125 = 0;
                        v126 = v124;
                        v127 = 7;
                        v128 = 34;
                        v129 = -1;
                        v130 = 0;
                        v131 = [D] syscall();
                        *((unsigned long *)(v134 + (v133 << 3))) = v131;
                        if (!((char)[D] arm64g_calculate_condition(0x2<64>, x0<8>, 0x1<64>, 0x0<64>)))
                        {
                            if (v124 >= 4)
                            {
                                goto (char *)&(&"(" + (0 << 2))[646058];
                            }
                            else
                            {
                                v134 = &v69;
                                if (v133)
                                {
                                    v132 = (&v69)[1 + v133];
                                    *((unsigned int *)v132) = 0x14000000 | (0x14000000 | __ROL__((unsigned int)(v131 - v132), 30) & 3288334335) & 67108863;
                                }
                                sub_c1ad58(v131, v131 + v124);
                            }
                        }
                    } while ((v159(-100, v148, 0, 0, 0, 0, 35), v160 += 24, v160 != v146));
                    v69();
                    v135 = sysconf(39);
                    v136 = 0;
                    v137 = 0;
                    v138 = 7;
                    v139 = 34;
                    v140 = -1;
                    v141 = (int128_t)v42;
                    v142 = 0;
                    v143 = 0;
                    v144 = [D] syscall();
                    v145 = *((long long *)&v37);
                    v146 = v43;
                    v93 = &g_c36000;
                    v147 = &g_c28000;
                    v148 = &g_c28000;
                    do
                    {
                        if (((char)[D] ZeroHI64ofV128(t5) & 1))
                            *((unsigned long *)(v144 + v142)) = v143;
                        if (((char)([D] ZeroHI64ofV128(t7) >> 32) & 1))
                            *((unsigned long *)(v144 + v142 + 8)) = v143 + 5909427300522524817;
                        v141 += (int128_t)v40;
                        v143 += 11818854601045049634;
                        v142 += 16;
                    } while (v142 != 1360);
                    v149 = g_c28050;
                    *((long long *)(v144 + 1360)) = 2467973497257689298 << ((char)g_c28048 & 63);
                    *((long long *)(v144 + 1376)) = 16078419865681088981 << (char)(g_c28058 & 63);
                    *((long long *)(v144 + 1368)) = g_c28050 | 4984886896515614466;
                    *((long long *)(v144 + 1384)) = -863845969873796972 << (char)(g_c28060 & 63);
                    *((long long *)(v144 + 1400)) = 16141768211782500247 << (char)(g_c28058 & 63);
                    v150 = 14191419209879323345;
                    *((long long *)(v144 + 1392)) = g_c28050 | 16934609730860850130;
                    *((long long *)(v144 + 1408)) = -842445079099799127 << (char)(g_c28060 & 63);
                    *((long long *)(v144 + 1416)) = g_c28050 | 14191419209879323345;
                    *((long long *)(v144 + 1424)) = 10719130689623757738 << (char)(g_c28068 & 63);
                    *((long long *)(v144 + 1432)) = -36308925657969772 << (char)(g_c28060 & 63);
                    *((long long *)(v144 + 1440)) = 16640236126571352245 << (char)(g_c28058 & 63);
                    *((long long *)(v144 + 1448)) = 74450487335916458 << (char)(g_c28060 & 63);
                    *((long long *)(v144 + 1456)) = -719696696328650327 << (char)(g_c28068 & 63);
                    *((long long *)(v144 + 1464)) = g_c28050 | 12026555812575215315;
                    *((long long *)(v144 + 1472)) = 16213826907639054505 << (char)(g_c28068 & 63);
                    v151 = g_c28068 & 14191419209879323345;
                    *((long long *)(v144 + 1480)) = 16638563218778374329 << (char)(g_c28058 & 63);
                    *((long long *)(v144 + 1488)) = (g_c28070 | g_c28050 & 14191419209879323345) & g_c28078;
                    v152 = g_c28088;
                    v154 = g_c28088 | g_c28058 & 14191419209879323345;
                    v155 = g_c28088 & (g_c28080 | v151);
                    *((long long *)(v144 + 1496)) = g_c28080 & (g_c28078 | g_c28060 & 14191419209879323345);
                    *((unsigned long *)(v144 + 1504)) = v155;
                    *((unsigned long *)(v144 + 1512)) = v154 & g_c28050;
                    (unsigned int)v156 = v144(&g_c28000, &g_c28000, 7, 34, -1, 0, v144);
                    if (!v156)
                    {
                        v69 = 54021874;
                    }
                    else
                    {
                        g_c28048 = 1548547368790345575;
                        g_c28050 = 8480685023701299104;
                        g_c28060 = 9165157281580667425;
                        g_c28068 = 16552524631470658226;
                        g_c28058 = 5393926425063019331;
                        v69 = 3161612844;
                        [D] syscall(*((long long *)v69));
                    }
                    v157 = 53;
                    [D] syscall(*((long long *)v69));
                }
                v158 = v157 | 0xd65f0000;
                v70 = v158;
                *((unsigned int *)(v159 + 8)) = v70;
                *((unsigned long *)v159) = v69;
                sub_c1ad58(v156, v156 + 12);
                g_c36bf8 = v159;
            }
        } while ((v159(-100, v148, 0, 0, 0, 0, 35), v160 += 24, v160 != v146));
    }
    *((long long *)(*((long long *)v145) + 1360))(v145, *((long long *)&v30), *((long long *)&v29));
    sub_bc4fc0(&v48);
    sub_bc4fc0(&v51);
    if (*((long long *)(*((long long *)&v28) + 40)) == *((long long *)&v23))
    {
        v163 = *((long long *)&v88);
        v164 = *((long long *)&v89);
        v165 = *((long long *)&v86);
        v166 = *((long long *)&v87);
        v167 = *((long long *)&v84);
        v168 = *((long long *)&v85);
        v169 = *((long long *)&v82);
        v170 = *((long long *)&v83);
        v171 = *((long long *)&v80);
        v172 = *((long long *)&v81);
        v173 = *((long long *)&v78);
        x30<8> = *((long long *)&v79);
        return;
    }
    v15 = &v27;
    v16 = &g_4ee300;
    v17 = v134;
    v18 = v147;
    v19 = v93;
    v20 = "(";
    v21 = v146;
    v22 = v160;
    v23 = &g_c28000;
    v24 = v148;
    v25 = v159;
    v26 = v145;
    v459 = &g_c36000;
    v461 = __stack_chk_fail();
    v14 = *((long long *)(v174 + 40));
    v175 = g_c36bf8;
    v8 = v138;
    v6 = v461;
    g_c280d8 = v138;
    if (!g_c36bf8)
    {
        v176 = 0;
        v177 = 12;
        v178 = 7;
        v179 = 34;
        v180 = -1;
        v181 = 0;
        v182 = [D] syscall();
        v175 = v182;
        if ((char)[D] arm64g_calculate_condition(0x2<64>, x0<8>, 0x1<64>, 0x0<64>))
        {
            v184 = &g_410000;
            v185 = v182 + 12;
        }
        else
        {
            (unsigned int)v183 = sysconf(39);
            v187 = v183;
            v188 = 0;
            if (1 < v146)
                v146 = __ROL__(v183, 62) & 4611686018427387903;
            else
                v189 = 1;
            do
            {
                v190 = 0;
                v191 = v187;
                v192 = 7;
                v193 = 34;
                v194 = -1;
                v195 = 0;
                v196 = [D] syscall();
                (&v11)[v188] = v196;
                if (!((char)[D] arm64g_calculate_condition(0x2<64>, x0<8>, 0x1<64>, 0x0<64>)))
                {
                    v197 = v196;
                    if (v187 >= 4)
                    {
                        v198 = 0;
                        do
                        {
                            goto (char *)(5170160 + *((int *)(4268964 + 4 * (x19<8> & 3))));
                        } while ((v159(-100, v148, 0, 0, 0, 0, 35), v160 += 24, v160 != v146));
                    }
                    if (v188)
                    {
                        v199 = (&v11)[1 + v188];
                        *((unsigned int *)v199) = 0x14000000 | (0x14000000 | __ROL__((unsigned int)(v196 - v199), 30) & 3288334335) & 67108863;
                    }
                    sub_c1ad58(v197, v197 + v187);
                }
            } while ((v159(-100, v148, 0, 0, 0, 0, 35), v160 += 24, v160 != v146));
            v11();
            v185 = sysconf(39);
            v200 = 0;
            v201 = 0;
            v202 = 7;
            v203 = 34;
            v204 = -1;
            v205 = 0;
            v206 = 0;
            v207 = [D] syscall();
            v208 = 0x10000000000000000;
            v459 = &g_c36000;
            v461 = v6;
            do
            {
                if (((char)[D] ZeroHI64ofV128(t5) & 1))
                    *((unsigned long *)(v207 + v205)) = v206;
                if (((char)([D] ZeroHI64ofV128(t7) >> 32) & 1))
                    *((unsigned long *)(v207 + v205 + 8)) = v206 + 5909427300522524817;
                v208 += 2 CONCAT 2;
                v206 += 11818854601045049634;
                v205 += 16;
            } while (v205 != 1360);
            v209 = g_c28050;
            *((long long *)(v207 + 1360)) = 2467973497257689298 << ((char)g_c28048 & 63);
            *((long long *)(v207 + 1376)) = 16078419865681088981 << (char)(g_c28058 & 63);
            *((long long *)(v207 + 1368)) = g_c28050 | 4984886896515614466;
            *((long long *)(v207 + 1392)) = g_c28050 | 16934609730860850130;
            *((long long *)(v207 + 1400)) = 16141768211782500247 << (char)(g_c28058 & 63);
            *((long long *)(v207 + 1408)) = -842445079099799127 << (char)(g_c28060 & 63);
            *((long long *)(v207 + 1416)) = g_c28050 | 14191419209879323345;
            *((long long *)(v207 + 1424)) = 10719130689623757738 << (char)(g_c28068 & 63);
            *((long long *)(v207 + 1432)) = -36308925657969772 << (char)(g_c28060 & 63);
            *((long long *)(v207 + 1440)) = 16640236126571352245 << (char)(g_c28058 & 63);
            *((long long *)(v207 + 1448)) = 74450487335916458 << (char)(g_c28060 & 63);
            *((long long *)(v207 + 1456)) = -719696696328650327 << (char)(g_c28068 & 63);
            *((long long *)(v207 + 1464)) = g_c28050 | 12026555812575215315;
            *((long long *)(v207 + 1384)) = -863845969873796972 << (char)(g_c28060 & 63);
            v210 = &g_c28000;
            *((long long *)(v207 + 1472)) = 16213826907639054505 << (char)(g_c28068 & 63);
            *((long long *)(v207 + 1480)) = 16638563218778374329 << (char)(g_c28058 & 63);
            v212 = g_c28088;
            v213 = g_c28068 & 14191419209879323345;
            v214 = g_c28080 & (g_c28078 | g_c28060 & 14191419209879323345);
            *((long long *)(v207 + 1488)) = (g_c28070 | g_c28050 & 14191419209879323345) & g_c28078;
            v215 = g_c28088 | g_c28058 & 14191419209879323345;
            v216 = g_c28088 & (g_c28080 | v213);
            *((unsigned long *)(v207 + 1496)) = v214;
            *((unsigned long *)(v207 + 1504)) = v216;
            *((unsigned long *)(v207 + 1512)) = v215 & g_c28050;
            if (!v207(14191419209879323345, v185, 7, 34, -1, 0, v207))
            {
                v11 = 54021874;
            }
            else
            {
                g_c28048 = 1548547368790345575;
                g_c28050 = 8480685023701299104;
                v217 = 9165157281580667425;
                v218 = 16552524631470658226;
                g_c28060 = 9165157281580667425;
                g_c28068 = 16552524631470658226;
                g_c28058 = 5393926425063019331;
                v11 = 3161612844;
                [D] syscall(*((long long *)v11));
            }
            v184 = 53;
            v182 = [D] syscall(*((long long *)v11));
        }
        v11 = *((long long *)(v184 + 3104));
        v12 = 3596551104;
        *((int *)(v175 + 8)) = 3596551104;
        *((unsigned long *)v175) = v11;
        sub_c1ad58(v182, v185);
        g_c36bf8 = v175;
    }
    v460 = 3469490092458358004;
    v219 = v175(0, 24, 7, 34, -1, 0, 222);
    *((int128_t *)v219) = 150739870616894369978337874728351144599;
    *((long long *)(v219 + 16)) = 31383778939587371;
    v220 = sub_b778a8(v219, 24, 7, 34, -1, 0, 222);
    v221 = malloc(12);
    v222 = 0;
    *((long long *)v221) = 3469490092458358004;
    *((int *)(v221 + 8)) = 0;
    do
    {
        *((char *)(v219 + v222)) = *((long long *)v220)(*((char *)(v219 + v222)), v221);
        v222 += 1;
    } while (v222 != 23);
    v223 = *((long long *)(*((long long *)v461) + 168))(v461, *((long long *)(*((long long *)v461) + 48))(v461, v219));
    v224 = g_c36bf8;
    g_c280a0 = v223;
    if (g_c36bf8)
        goto LABEL_4eedf0;
    v225 = 0;
    v226 = 12;
    v227 = 7;
    v228 = 34;
    v229 = -1;
    v230 = 0;
    v231 = [D] syscall();
    v224 = v231;
    if (!((char)[D] arm64g_calculate_condition(0x2<64>, x0<8>, 0x1<64>, 0x0<64>)))
    {
        v7 = v223;
        (unsigned int)v232 = sysconf(39);
        v235 = v232;
        v236 = 0;
        if (1 < v237)
            v237 = __ROL__(v232, 62) & 4611686018427387903;
        else
            v238 = 1;
    }
    else
    {
        v11 = (&g_410000)[388];
        v12 = 3596551104;
        *((int *)(v224 + 8)) = 3596551104;
        *((unsigned long *)v224) = v11;
        sub_c1ad58(v231);
        g_c36bf8 = v224;
LABEL_4eedf0:
        v271 = v224(0, 6, 7, 34, -1, 0, 222);
        *((int *)v271) = 2659423891;
        *((short *)(v271 + 4)) = 156;
        v272 = sub_b776c8(v271, 6, 7, 34, -1, 0, 222);
        v273 = malloc(12);
        v274 = 0;
        *((long long *)v273) = 3469490092458358004;
        *((int *)(v273 + 8)) = 0;
        do
        {
            *((char *)(v271 + v274)) = *((long long *)v272)(*((char *)(v271 + v274)), v273);
            v274 += 1;
        } while (v274 != 5);
        v275 = g_c36bf8;
        if (!g_c36bf8)
        {
            v276 = 0;
            v277 = 12;
            v278 = 7;
            v279 = 34;
            v280 = -1;
            v281 = 0;
            v275 = [D] syscall();
            if ((char)[D] arm64g_calculate_condition(0x2<64>, x0<8>, 0x1<64>, 0x0<64>))
            {
                v283 = &g_410000;
            }
            else
            {
                v5 = v275;
                v7 = v223;
                (unsigned int)v282 = sysconf(39);
                v285 = v282;
                v286 = 0;
                if (1 < v461)
                    v461 = __ROL__(v282, 62) & 4611686018427387903;
                else
                    v287 = 1;
                do
                {
                    v288 = 0;
                    v289 = v285;
                    v290 = 7;
                    v291 = 34;
                    v292 = -1;
                    v293 = 0;
                    v294 = [D] syscall();
                    (&v11)[v286] = v294;
                    if (!((char)[D] arm64g_calculate_condition(0x2<64>, x0<8>, 0x1<64>, 0x0<64>)))
                    {
                        v295 = v294;
                        if (v285 >= 4)
                        {
                            v296 = 0;
                            do
                            {
                                goto (char *)(5173020 + *((int *)(4268996 + 4 * (x26<8> & 3))));
                            } while ((v159(-100, v148, 0, 0, 0, 0, 35), v160 += 24, v160 != v146));
                        }
                        if (v286)
                        {
                            v297 = (&v11)[1 + v286];
                            *((unsigned int *)v297) = 0x14000000 | (0x14000000 | __ROL__((unsigned int)(v294 - v297), 30) & 3288334335) & 67108863;
                        }
                        sub_c1ad58(v295, v295 + v285);
                    }
                } while ((v159(-100, v148, 0, 0, 0, 0, 35), v160 += 24, v160 != v146));
                v11();
                v299 = 0;
                v300 = 0;
                v301 = 7;
                v302 = 34;
                v303 = -1;
                v304 = 0;
                v305 = 0;
                v306 = [D] syscall();
                v307 = 0x10000000000000000;
                v459 = &g_c36000;
                v460 = 3469490092458358004;
                v461 = v6;
                do
                {
                    if (((char)[D] ZeroHI64ofV128(t5) & 1))
                        *((unsigned long *)(v306 + v304)) = v305;
                    if (((char)([D] ZeroHI64ofV128(t7) >> 32) & 1))
                        *((unsigned long *)(v306 + v304 + 8)) = v305 + 5909427300522524817;
                    v307 += 2 CONCAT 2;
                    v305 += 11818854601045049634;
                    v304 += 16;
                } while (v304 != 1360);
                v275 = &g_c28000;
                v223 = &g_c28000;
                v308 = g_c28050;
                *((long long *)(v306 + 1360)) = 2467973497257689298 << ((char)g_c28048 & 63);
                *((long long *)(v306 + 1376)) = 16078419865681088981 << (char)(g_c28058 & 63);
                *((long long *)(v306 + 1368)) = g_c28050 | 4984886896515614466;
                *((long long *)(v306 + 1392)) = g_c28050 | 16934609730860850130;
                *((long long *)(v306 + 1400)) = 16141768211782500247 << (char)(g_c28058 & 63);
                *((long long *)(v306 + 1408)) = -842445079099799127 << (char)(g_c28060 & 63);
                *((long long *)(v306 + 1416)) = g_c28050 | 14191419209879323345;
                *((long long *)(v306 + 1424)) = 10719130689623757738 << (char)(g_c28068 & 63);
                *((long long *)(v306 + 1432)) = -36308925657969772 << (char)(g_c28060 & 63);
                *((long long *)(v306 + 1440)) = 16640236126571352245 << (char)(g_c28058 & 63);
                *((long long *)(v306 + 1448)) = 74450487335916458 << (char)(g_c28060 & 63);
                *((long long *)(v306 + 1456)) = -719696696328650327 << (char)(g_c28068 & 63);
                *((long long *)(v306 + 1464)) = g_c28050 | 12026555812575215315;
                *((long long *)(v306 + 1384)) = -863845969873796972 << (char)(g_c28060 & 63);
                v309 = &g_c28000;
                *((long long *)(v306 + 1472)) = 16213826907639054505 << (char)(g_c28068 & 63);
                *((long long *)(v306 + 1480)) = 16638563218778374329 << (char)(g_c28058 & 63);
                v311 = g_c28088;
                v312 = g_c28068 & 14191419209879323345;
                v313 = g_c28080 & (g_c28078 | g_c28060 & 14191419209879323345);
                *((long long *)(v306 + 1488)) = (g_c28070 | g_c28050 & 14191419209879323345) & g_c28078;
                v314 = g_c28088 | g_c28058 & 14191419209879323345;
                v315 = g_c28088 & (g_c28080 | v312);
                *((unsigned long *)(v306 + 1496)) = v313;
                *((unsigned long *)(v306 + 1504)) = v315;
                *((unsigned long *)(v306 + 1512)) = v314 & g_c28050;
                if (!v306(14191419209879323345, sysconf(39), 7, 34, -1, 0, v306))
                {
                    v11 = 54021874;
                }
                else
                {
                    g_c28048 = 1548547368790345575;
                    g_c28050 = 8480685023701299104;
                    v316 = 9165157281580667425;
                    v317 = 16552524631470658226;
                    g_c28060 = 9165157281580667425;
                    g_c28068 = 16552524631470658226;
                    g_c28058 = 5393926425063019331;
                    v11 = 3161612844;
                    [D] syscall(*((long long *)v11));
                }
                v283 = 53;
                [D] syscall(*((long long *)v11));
            }
            v11 = *((long long *)(v283 + 3104));
            v12 = 3596551104;
            *((int *)(v275 + 8)) = 3596551104;
            *((unsigned long *)v275) = v11;
            sub_c1ad58(v275, v275 + 12);
            g_c36bf8 = v275;
        }
        v318 = v275(0, 5, 7, 34, -1, 0, 222);
        *((int *)v318) = 3202333916;
        *((char *)(v318 + 4)) = 0;
        v319 = sub_b77650(v318, 5, 7, 34, -1, 0, 222);
        v320 = malloc(12);
        v321 = 0;
        *((long long *)v320) = 3469490092458358004;
        *((int *)(v320 + 8)) = 0;
        do
        {
            *((char *)(v318 + v321)) = *((long long *)v319)(*((char *)(v318 + v321)), v320);
            v321 += 1;
        } while (v321 != 4);
        (unsigned int)v322 = *((long long *)(*((long long *)v461) + 904))(v461, v223, v271, v318);
        v323 = g_c36bf8;
        v324 = g_c280a0;
        g_c280c0 = v322;
        if (g_c36bf8)
            goto LABEL_4ef924;
        v325 = 0;
        v326 = 12;
        v327 = 7;
        v328 = 34;
        v329 = -1;
        v330 = 0;
        v331 = [D] syscall();
        v323 = v331;
        if (!((char)[D] arm64g_calculate_condition(0x2<64>, x0<8>, 0x1<64>, 0x0<64>)))
        {
            v7 = g_c280a0;
            (unsigned int)v332 = sysconf(39);
            v335 = v332;
            v336 = 0;
            if (1 < g_c280a0)
                v337 = __ROL__(v332, 62) & 4611686018427387903;
            else
                v337 = 1;
        }
        else
        {
            v11 = (&g_410000)[388];
            v12 = 3596551104;
            *((int *)(v323 + 8)) = 3596551104;
            *((unsigned long *)v323) = v11;
            sub_c1ad58(v331);
            g_c36bf8 = v323;
LABEL_4ef924:
            v371 = v323(0, 3, 7, 34, -1, 0, 222);
            *((short *)v371) = 39325;
            *((char *)(v371 + 2)) = 0;
            v372 = sub_b77830(v371, 3, 7, 34, -1, 0, 222);
            v373 = malloc(12);
            v374 = 0;
            *((long long *)v373) = 3469490092458358004;
            *((int *)(v373 + 8)) = 0;
            do
            {
                *((char *)(v371 + v374)) = *((long long *)v372)(*((char *)(v371 + v374)), v373);
                v374 += 1;
            } while (v374 != 2);
            v375 = g_c36bf8;
            if (!g_c36bf8)
            {
                v376 = 0;
                v377 = 12;
                v378 = 7;
                v379 = 34;
                v380 = -1;
                v381 = 0;
                v375 = [D] syscall();
                if ((char)[D] arm64g_calculate_condition(0x2<64>, x0<8>, 0x1<64>, 0x0<64>))
                {
                    v383 = &g_410000;
                }
                else
                {
                    v5 = v375;
                    v7 = v324;
                    (unsigned int)v382 = sysconf(39);
                    v385 = v382;
                    v386 = 0;
                    if (1 < v461)
                        v461 = __ROL__(v382, 62) & 4611686018427387903;
                    else
                        v387 = 1;
                    do
                    {
                        v388 = 0;
                        v389 = v385;
                        v390 = 7;
                        v391 = 34;
                        v392 = -1;
                        v393 = 0;
                        v394 = [D] syscall();
                        (&v11)[v386] = v394;
                        if (!((char)[D] arm64g_calculate_condition(0x2<64>, x0<8>, 0x1<64>, 0x0<64>)))
                        {
                            v395 = v394;
                            if (v385 >= 4)
                            {
                                v396 = 0;
                                do
                                {
                                    goto (char *)(5175888 + *((int *)(4269028 + 4 * (x26<8> & 3))));
                                } while ((v159(-100, v148, 0, 0, 0, 0, 35), v160 += 24, v160 != v146));
                            }
                            if (v386)
                            {
                                v397 = (&v11)[1 + v386];
                                *((unsigned int *)v397) = 0x14000000 | (0x14000000 | __ROL__((unsigned int)(v394 - v397), 30) & 3288334335) & 67108863;
                            }
                            sub_c1ad58(v395, v395 + v385);
                        }
                    } while ((v159(-100, v148, 0, 0, 0, 0, 35), v160 += 24, v160 != v146));
                    v11();
                    v399 = 0;
                    v400 = 0;
                    v401 = 7;
                    v402 = 34;
                    v403 = -1;
                    v404 = 0;
                    v405 = 0;
                    v406 = [D] syscall();
                    v407 = 0x10000000000000000;
                    v459 = &g_c36000;
                    v460 = 3469490092458358004;
                    v461 = v6;
                    do
                    {
                        if (((char)[D] ZeroHI64ofV128(t5) & 1))
                            *((unsigned long *)(v406 + v404)) = v405;
                        if (((char)([D] ZeroHI64ofV128(t7) >> 32) & 1))
                            *((unsigned long *)(v406 + v404 + 8)) = v405 + 5909427300522524817;
                        v407 += 2 CONCAT 2;
                        v405 += 11818854601045049634;
                        v404 += 16;
                    } while (v404 != 1360);
                    v375 = &g_c28000;
                    v324 = &g_c28000;
                    v408 = g_c28050;
                    *((long long *)(v406 + 1360)) = 2467973497257689298 << ((char)g_c28048 & 63);
                    *((long long *)(v406 + 1376)) = 16078419865681088981 << (char)(g_c28058 & 63);
                    *((long long *)(v406 + 1368)) = g_c28050 | 4984886896515614466;
                    *((long long *)(v406 + 1392)) = g_c28050 | 16934609730860850130;
                    *((long long *)(v406 + 1400)) = 16141768211782500247 << (char)(g_c28058 & 63);
                    *((long long *)(v406 + 1408)) = -842445079099799127 << (char)(g_c28060 & 63);
                    *((long long *)(v406 + 1416)) = g_c28050 | 14191419209879323345;
                    *((long long *)(v406 + 1424)) = 10719130689623757738 << (char)(g_c28068 & 63);
                    *((long long *)(v406 + 1432)) = -36308925657969772 << (char)(g_c28060 & 63);
                    *((long long *)(v406 + 1440)) = 16640236126571352245 << (char)(g_c28058 & 63);
                    *((long long *)(v406 + 1448)) = 74450487335916458 << (char)(g_c28060 & 63);
                    *((long long *)(v406 + 1456)) = -719696696328650327 << (char)(g_c28068 & 63);
                    *((long long *)(v406 + 1464)) = g_c28050 | 12026555812575215315;
                    *((long long *)(v406 + 1384)) = -863845969873796972 << (char)(g_c28060 & 63);
                    v409 = &g_c28000;
                    *((long long *)(v406 + 1472)) = 16213826907639054505 << (char)(g_c28068 & 63);
                    *((long long *)(v406 + 1480)) = 16638563218778374329 << (char)(g_c28058 & 63);
                    v411 = g_c28088;
                    v412 = g_c28068 & 14191419209879323345;
                    v413 = g_c28080 & (g_c28078 | g_c28060 & 14191419209879323345);
                    *((long long *)(v406 + 1488)) = (g_c28070 | g_c28050 & 14191419209879323345) & g_c28078;
                    v414 = g_c28088 | g_c28058 & 14191419209879323345;
                    v415 = g_c28088 & (g_c28080 | v412);
                    *((unsigned long *)(v406 + 1496)) = v413;
                    *((unsigned long *)(v406 + 1504)) = v415;
                    *((unsigned long *)(v406 + 1512)) = v414 & g_c28050;
                    if (!v406(14191419209879323345, sysconf(39), 7, 34, -1, 0, v406))
                    {
                        v418 = 54021874;
                    }
                    else
                    {
                        g_c28048 = 1548547368790345575;
                        g_c28050 = 8480685023701299104;
                        v416 = 9165157281580667425;
                        v417 = 16552524631470658226;
                        g_c28060 = 9165157281580667425;
                        g_c28068 = 16552524631470658226;
                        g_c28058 = 5393926425063019331;
                        v11 = 3161612844;
                        v418 = 53;
                        [D] syscall(*((long long *)v11));
                    }
                    v11 = v418;
                    v383 = 53;
                    [D] syscall(*((long long *)v11));
                }
                v11 = *((long long *)(v383 + 3104));
                v12 = 3596551104;
                *((int *)(v375 + 8)) = 3596551104;
                *((unsigned long *)v375) = v11;
                sub_c1ad58(v375, v375 + 12);
                g_c36bf8 = v375;
            }
            v419 = v375(0, 39, 7, 34, -1, 0, 222);
            *((int128_t *)v419) = 141482084483776643939772018647814158812;
            strncpy(v419 + 16, "jb=.Dck}m\"bn~v=@", 16);
            *((long long *)(v419 + 31)) = 9710309013413952;
            v420 = sub_b772b8(v419, 39, 7, 34, -1, 0, 222);
            v421 = malloc(12);
            v422 = 0;
            *((long long *)v421) = 3469490092458358004;
            *((int *)(v421 + 8)) = 0;
            do
            {
                *((char *)(v419 + v422)) = *((long long *)v420)(*((char *)(v419 + v422)), v421);
                v422 += 1;
            } while (v422 != 38);
            (unsigned int)v423 = *((long long *)(*((long long *)v461) + 904))(v461, v324, v371, v419);
            v430 = g_c36bf8;
            g_c280c8 = v423;
            v7 = g_c280a0;
            if (g_c36bf8)
                goto LABEL_4f044c;
            v424 = 0;
            v425 = 12;
            v426 = 7;
            v427 = 34;
            v428 = -1;
            v429 = 0;
            v472 = [D] syscall();
            v430 = v472;
            if (!((char)[D] arm64g_calculate_condition(0x2<64>, x0<8>, 0x1<64>, 0x0<64>)))
            {
                (unsigned int)v431 = sysconf(39);
                v435 = v431;
                v436 = 0;
                if (1 < v421)
                    v421 = __ROL__(v431, 62) & 4611686018427387903;
                else
                    v437 = 1;
            }
            else
            {
                v11 = (&g_410000)[388];
                v12 = 3596551104;
                *((int *)(v430 + 8)) = 3596551104;
                *((unsigned long *)v430) = v11;
                sub_c1ad58(v472, v472 + 12);
                g_c36bf8 = v430;
LABEL_4f044c:
                v473 = v430(0, 3, 7, 34, -1, 0, 222);
                *((short *)v473) = 39325;
                *((char *)(v473 + 2)) = 0;
                v474 = sub_b77830(v473, 3, 7, 34, -1, 0, 222);
                v475 = malloc(12);
                v476 = 0;
                *((long long *)v475) = 3469490092458358004;
                *((int *)(v475 + 8)) = 0;
                do
                {
                    *((char *)(v473 + v476)) = *((long long *)v474)(*((char *)(v473 + v476)), v475);
                    v476 += 1;
                } while (v476 != 2);
                v477 = g_c36bf8;
                if (g_c36bf8)
                    goto LABEL_0x4f09c8;
                v478 = 0;
                v479 = 12;
                v480 = 7;
                v481 = 34;
                v482 = -1;
                v483 = 0;
                v477 = [D] syscall();
                if ((char)[D] arm64g_calculate_condition(0x12<64>, x19<8>, 0x1<64>, 0x0<64>))
                    goto LABEL_0x4f0994;
                v5 = v477;
                (unsigned int)v484 = sysconf(39);
                v487 = v484;
                v488 = 0;
                if (1 < v461)
                    v461 = __ROL__(v484, 62) & 4611686018427387903;
                else
                    v489 = 1;
            }
        }
    }
}
