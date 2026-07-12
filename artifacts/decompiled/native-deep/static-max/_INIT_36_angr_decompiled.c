extern char g_410000;
extern char g_42a764;
extern char g_868584;
extern char g_8d9d90;
extern char g_988080;
extern char g_b99194;
extern char g_c20850;
extern char g_c20878;
extern char g_c20890;
extern char g_c208c0;
extern char g_c208e8;
extern char g_c20908;
extern char g_c28000;
extern char g_c28048;
extern char g_c28050;
extern char g_c28058;
extern char g_c28060;
extern char g_c28068;
extern char g_c28070;
extern char g_c28078;
extern char g_c28080;
extern char g_c28088;
extern char g_c281d8;
extern char g_c281e0;
extern char g_c36000;
extern char g_c36bf8;
extern char g_c392f0;

int sub_848114()
{
    unsigned int v0;  // [bp-0xa0], Other Possible Types: char
    int tmp_32;  // tmp #32
    unsigned long v1;  // [bp-0x98]
    char v2;  // [bp-0x90]
    int v28;  // [bp+0xe0]
    int v29;  // [bp+0xf0]
    unsigned long v30;  // [bp+0x100]
    int v31;  // [bp+0x110]
    int v32;  // [bp+0x130], Other Possible Types: char, unsigned long
    int v33;  // [bp+0x140], Other Possible Types: unsigned long
    unsigned long v34;  // [bp+0x158]
    char v35;  // [bp+0x160]
    char v36;  // [bp+0x168]
    unsigned long v65;  // [bp+0x278]
    unsigned long v66;  // [bp+0x280]
    unsigned long v67;  // [bp+0x288]
    int v68;  // [bp+0x2d0]
    int v69;  // [bp+0x2e0]
    unsigned int v70;  // [bp+0x2f0]
    char v71;  // [bp+0x300]
    char v72;  // [bp+0x308]
    char v73;  // [bp+0x310]
    char v76;  // [bp+0x370]
    char v77;  // [bp+0x378]
    char v78;  // [bp+0x380]
    int v85;  // [bp+0x480], Other Possible Types: unsigned long
    unsigned int v86;  // [bp+0x488]
    unsigned long v87;  // [bp+0x490]
    int v94;  // [bp+0x590], Other Possible Types: unsigned long
    unsigned int v95;  // [bp+0x598]
    int v96;  // [bp+0x599]
    unsigned long v100;  // x8
    unsigned long v101;  // x13
    int v102;  // q0
    unsigned long v103;  // x14
    unsigned long v105;  // x15
    unsigned long v107;  // x9
    unsigned long v108;  // x10
    unsigned long v109;  // x12
    unsigned long v114;  // x1
    unsigned long v115;  // x5
    unsigned long v117;  // x8
    unsigned long v118;  // x19
    unsigned long v119;  // x0
    unsigned long v120;  // x1
    unsigned long v121;  // x2
    unsigned long v122;  // x3
    unsigned long v123;  // x4
    unsigned long v124;  // x5
    unsigned long v125;  // x0
    unsigned long v126;  // x20
    unsigned long v127;  // x22
    unsigned long v128;  // x23
    unsigned long v129;  // x0
    unsigned long v130;  // x1
    unsigned long v131;  // x2
    unsigned long v132;  // x3
    unsigned long v133;  // x4
    unsigned long v134;  // x5
    unsigned long v135;  // x0
    unsigned long v136;  // x21
    unsigned long v137;  // x26
    unsigned long v138;  // x8
    unsigned long v139;  // x0
    unsigned long v140;  // x5
    unsigned long v141;  // x2
    unsigned long v142;  // x3
    unsigned long v143;  // x4
    unsigned long v144;  // x0
    int v145;  // q0
    unsigned long v146;  // x20
    unsigned long v147;  // x10
    unsigned long v148;  // x9
    unsigned long v149;  // x8
    unsigned long v150;  // x8
    unsigned long v151;  // x0
    unsigned long v152;  // x1
    unsigned long v153;  // x19
    unsigned long v154;  // x19
    unsigned long v155;  // x20
    unsigned long v156;  // x21
    unsigned long v157;  // x22
    unsigned long v158;  // x8
    unsigned long v160;  // x0
    unsigned long v162;  // cc_dep1
    unsigned long v164;  // x1
    unsigned long v165;  // x1
    unsigned long v166;  // x2
    unsigned long v167;  // x2
    unsigned long v168;  // x0
    unsigned long v170;  // x19
    unsigned long v171;  // x20
    unsigned long v172;  // x0
    unsigned long v173;  // x1
    unsigned long v174;  // x2
    unsigned long v175;  // x3
    unsigned long v176;  // x4
    unsigned long v177;  // x5
    unsigned long v178;  // x0
    unsigned long v179;  // x0
    unsigned long v180;  // x8
    unsigned long v181;  // x21
    unsigned long v182;  // x24
    unsigned long v183;  // x0
    unsigned long v184;  // x1
    unsigned long v185;  // x2
    unsigned long v186;  // x3
    unsigned long v187;  // x4
    unsigned long v188;  // x5
    unsigned long v189;  // x0
    unsigned long v190;  // x8
    unsigned long v192;  // x0
    unsigned long v193;  // x5
    unsigned long v194;  // x9
    unsigned long v195;  // x10
    unsigned long v196;  // x2
    unsigned long v197;  // x3
    unsigned long v198;  // x4
    unsigned long v199;  // x0
    int v200;  // q0
    unsigned long v201;  // x8
    unsigned long v202;  // x20
    unsigned long v203;  // x0
    unsigned long v205;  // x1
    unsigned long v206;  // x21
    unsigned long v228;  // x0
    unsigned long v229;  // x20
    unsigned long v230;  // x20
    unsigned long v231;  // x0
    unsigned long v232;  // x0
    unsigned long v233;  // x1
    unsigned long v234;  // x2
    unsigned long v235;  // x3
    unsigned long v236;  // x4
    unsigned long v237;  // x5
    unsigned long v238;  // x0
    unsigned long v239;  // x21
    unsigned long v240;  // x26
    unsigned long v241;  // x8
    unsigned long v243;  // x0
    unsigned long v244;  // x5
    unsigned long v245;  // x9
    unsigned long v246;  // x10
    unsigned long v247;  // x2
    unsigned long v248;  // x3
    unsigned long v249;  // x4
    unsigned long v250;  // x0
    int v251;  // q0
    unsigned long v252;  // x8
    unsigned long v253;  // x0
    unsigned long v254;  // x1
    unsigned long v255;  // x2
    unsigned long v256;  // x3
    unsigned long v257;  // x4
    unsigned long v258;  // x5
    unsigned long v259;  // x0
    unsigned long v260;  // x0
    unsigned long v262;  // x21
    unsigned long v284;  // x0
    unsigned long v285;  // x19
    unsigned long v286;  // x21
    unsigned long v287;  // x0
    unsigned long v288;  // x22
    unsigned long v289;  // x0
    unsigned long v290;  // x1
    unsigned long v291;  // x2
    unsigned long v292;  // x3
    unsigned long v293;  // x4
    unsigned long v294;  // x5
    unsigned long v295;  // x0
    unsigned long v296;  // x20
    unsigned long v297;  // x25
    unsigned long v298;  // x8
    unsigned long v300;  // x0
    unsigned long v301;  // x5
    unsigned long v302;  // x9
    unsigned long v303;  // x10
    unsigned long v304;  // x2
    unsigned long v305;  // x3
    unsigned long v306;  // x4
    unsigned long v307;  // x0
    int v308;  // q0
    unsigned long v309;  // x8
    unsigned long v310;  // x19
    unsigned long v311;  // x0
    unsigned long v312;  // x1
    unsigned long v313;  // x2
    unsigned long v314;  // x3
    unsigned long v315;  // x4
    unsigned long v316;  // x5
    unsigned long v317;  // x0
    unsigned long v318;  // x0
    unsigned long v321;  // x20
    unsigned long v322;  // x22
    unsigned long v344;  // x19
    unsigned long v345;  // x20
    unsigned long v346;  // x0
    unsigned long v347;  // x1
    unsigned long v348;  // x2
    unsigned long v349;  // x3
    unsigned long v350;  // x4
    unsigned long v351;  // x5
    unsigned long v352;  // x0
    unsigned int v353;  // w8
    unsigned long v354;  // x21
    unsigned long v355;  // x23
    unsigned long v356;  // x0
    unsigned long v357;  // x1
    unsigned long v358;  // x2
    unsigned long v359;  // x3
    unsigned long v360;  // x4
    unsigned long v361;  // x5
    unsigned long v362;  // x0
    unsigned long v363;  // x8
    unsigned long v365;  // x0
    unsigned long v366;  // x5
    unsigned long v367;  // x2
    unsigned long v368;  // x3
    unsigned long v369;  // x4
    unsigned long v370;  // x0
    unsigned long v371;  // x9
    unsigned long v372;  // x10
    int v373;  // q0
    unsigned long v374;  // x8
    unsigned long v375;  // x20
    unsigned long v376;  // x21
    unsigned long v377;  // x22
    unsigned long v380;  // x0
    unsigned long v381;  // x8
    unsigned long v383;  // x26
    unsigned long v384;  // x0
    unsigned long v386;  // x0
    unsigned long v387;  // x1
    unsigned long v388;  // x2
    unsigned long v389;  // x3
    unsigned long v390;  // x4
    unsigned long v391;  // x5
    unsigned long v392;  // x0
    unsigned long v393;  // x21
    unsigned long v394;  // x23
    unsigned long v395;  // x0
    unsigned long v396;  // x1
    unsigned long v397;  // x2
    unsigned long v398;  // x3
    unsigned long v399;  // x4
    unsigned long v400;  // x5
    unsigned long v401;  // x0
    unsigned long v402;  // x22
    unsigned long v403;  // x26
    unsigned long v404;  // x8
    unsigned long v406;  // x0
    unsigned long v407;  // x5
    unsigned long v408;  // x2
    unsigned long v409;  // x3
    unsigned long v410;  // x4
    unsigned long v411;  // x0
    unsigned long v412;  // x9
    unsigned long v413;  // x10
    int v414;  // q0
    unsigned long v415;  // x8
    unsigned int v416;  // w8
    unsigned long v417;  // x0
    unsigned long v418;  // x21
    unsigned long v419;  // x24
    unsigned long v420;  // x20
    unsigned long v421;  // x20
    unsigned long v422;  // x21
    unsigned long v423;  // x22
    unsigned long v424;  // x23
    unsigned long v425;  // x26
    unsigned long v427;  // x27
    unsigned long v428;  // x0
    unsigned long v429;  // x8
    unsigned long v431;  // x25
    unsigned long v432;  // x0
    unsigned long v434;  // x21
    unsigned long v435;  // x10
    unsigned long v436;  // x0
    unsigned long v437;  // x8
    unsigned long v438;  // x19
    unsigned long v439;  // x0
    unsigned long v440;  // x1
    unsigned long v441;  // x2
    unsigned long v442;  // x3
    unsigned long v443;  // x4
    unsigned long v444;  // x5
    unsigned long v445;  // x0
    unsigned long v446;  // x0
    unsigned long v447;  // x8
    unsigned long v448;  // x1
    unsigned long v449;  // x20
    unsigned long v450;  // x22
    unsigned long v451;  // x23
    unsigned long v452;  // x0
    unsigned long v453;  // x1
    unsigned long v454;  // x2
    unsigned long v455;  // x3
    unsigned long v456;  // x4
    unsigned long v457;  // x5
    unsigned long v458;  // x0
    unsigned long v459;  // x21
    unsigned long v460;  // x26
    unsigned long v461;  // x8
    unsigned long v462;  // x0
    unsigned long v463;  // x5
    unsigned long v464;  // x9
    unsigned long v465;  // x10
    unsigned long v466;  // x2
    unsigned long v467;  // x3
    unsigned long v468;  // x4
    unsigned long v469;  // x0
    int v470;  // q0
    unsigned long v471;  // x8
    unsigned long v472;  // x19
    unsigned long v473;  // x20
    unsigned long v474;  // x21
    unsigned long v475;  // x22
    unsigned long v477;  // x20
    unsigned long v478;  // x0
    unsigned long v479;  // x1
    unsigned long v480;  // x2
    unsigned long v481;  // x3
    unsigned long v482;  // x4
    unsigned long v483;  // x5
    unsigned long v484;  // x0
    unsigned long v486;  // x21
    unsigned long v487;  // x23
    unsigned long v510;  // x0

    v100 = [D] syscall();
    v102 = *((int128_t *)(v101 + 2672));
    v146 = &g_c28000;
    do
    {
        if (((char)[D] ZeroHI64ofV128(t5) & 1))
            *((int *)(v100 + x9<8>)) = x10<8>;
        if (((char)([D] ZeroHI64ofV128(t7) >> 32) & 1))
            *((unsigned long *)(v100 + v107 + 8)) = v108 + (v105 & 281474976710655 | 0x5202000000000000);
        v102 += v109 CONCAT v109;
        v108 += v103 & 281474976710655 | 0xa405000000000000;
        v107 += 16;
    } while (v107 != 1360);
    *((long long *)(v100 + 1360)) = 2467973497257689298 << ((char)g_c28048 & 63);
    *((long long *)(v100 + 1376)) = 16078419865681088981 << (char)(g_c28058 & 63);
    *((long long *)(v100 + 1368)) = g_c28050 | 4984886896515614466;
    *((long long *)(v100 + 1384)) = -863845969873796972 << (char)(g_c28060 & 63);
    *((long long *)(v100 + 1400)) = 16141768211782500247 << (char)(g_c28058 & 63);
    *((long long *)(v100 + 1392)) = g_c28050 | 16934609730860850130;
    *((long long *)(v100 + 1408)) = -842445079099799127 << (char)(g_c28060 & 63);
    *((long long *)(v100 + 1416)) = g_c28050 | 14191419209879323345;
    *((long long *)(v100 + 1424)) = 10719130689623757738 << (char)(g_c28068 & 63);
    *((long long *)(v100 + 1432)) = -36308925657969772 << (char)(g_c28060 & 63);
    *((long long *)(v100 + 1440)) = 16640236126571352245 << (char)(g_c28058 & 63);
    *((long long *)(v100 + 1448)) = 74450487335916458 << (char)(g_c28060 & 63);
    *((long long *)(v100 + 1456)) = -719696696328650327 << (char)(g_c28068 & 63);
    *((long long *)(v100 + 1464)) = g_c28050 | 12026555812575215315;
    *((long long *)(v100 + 1472)) = 16213826907639054505 << (char)(g_c28068 & 63);
    *((long long *)(v100 + 1480)) = 16638563218778374329 << (char)(g_c28058 & 63);
    *((long long *)(v100 + 1488)) = (g_c28070 | g_c28050 & 14191419209879323345) & g_c28078;
    *((long long *)(v100 + 1496)) = g_c28080 & (g_c28078 | g_c28060 & 14191419209879323345);
    *((long long *)(v100 + 1504)) = g_c28088 & (g_c28080 | g_c28068 & 14191419209879323345);
    *((long long *)(v100 + 1512)) = (g_c28088 | g_c28058 & 14191419209879323345) & g_c28050;
    if (!v100(v100, v114, 7, 34, -1, v115, v100))
    {
        v146 = &g_c36000;
        v117 = 54021874;
    }
    else
    {
        g_c28048 = 1548547368790345575;
        g_c28050 = 8480685023701299104;
        g_c28060 = 9165157281580667425;
        g_c28068 = 16552524631470658226;
        g_c28058 = 5393926425063019331;
        v94 = 3161612844;
        v117 = 53;
        [D] syscall(*((long long *)v94));
    }
    v94 = v117;
    [D] syscall(*((long long *)v94));
    v94 = *((long long *)3157);
    v95 = 3596551104;
    *((int *)(v118 + 8)) = 3596551104;
    *((unsigned long *)v118) = v94;
    sub_c1ad58();
    *((unsigned long *)(v146 + 3064)) = v118;
    v118(1, &v35, 0, 0, 0, 0, 113);
    sub_c023a4(*((long long *)&v36));
    memset(&v95, 0, 200);
    v153 = *((long long *)(v146 + 3064));
    v94 = &g_42a764;
    if (!v153)
    {
        v119 = 0;
        v120 = 12;
        v121 = 7;
        v122 = 34;
        v123 = -1;
        v124 = 0;
        v151 = [D] syscall();
        v153 = v151;
        if ((char)[D] arm64g_calculate_condition(0x2<64>, x0<8>, 0x1<64>, 0x0<64>))
        {
            v150 = &g_410000;
            v152 = v151 + 12;
        }
        else
        {
            (unsigned int)v125 = sysconf(39);
            v126 = v125;
            v127 = 0;
            if (1 >= v128)
                v424 = 1;
            else
                v128 = __ROL__(v125, 62) & 4611686018427387903;
            do
            {
                v129 = 0;
                v130 = v126;
                v131 = 7;
                v132 = 34;
                v133 = -1;
                v134 = 0;
                v135 = [D] syscall();
                (&v85)[v127] = v135;
                if (!((char)[D] arm64g_calculate_condition(0x2<64>, x0<8>, 0x1<64>, 0x0<64>)))
                {
                    v136 = v135;
                    if (v126 >= 4)
                    {
                        v137 = 0;
                        do
                        {
                            goto (char *)(8684932 + *((int *)(4314308 + 4 * (x26<8> & 3))));
                        } while ((v127 += 1, v127 != 7));
                    }
                    if (v127)
                    {
                        v138 = (&v85)[1 + v127];
                        *((unsigned int *)v138) = 0x14000000 | (0x14000000 | __ROL__((unsigned int)(v135 - v138), 30) & 3288334335) & 67108863;
                    }
                    sub_c1ad58(v136, v136 + v126);
                }
            } while ((v127 += 1, v127 != 7));
            v85();
            v152 = sysconf(39);
            v139 = 0;
            v140 = 0;
            v148 = 0;
            v147 = 0;
            v141 = 7;
            v142 = 34;
            v143 = -1;
            v144 = [D] syscall();
            v145 = 0x10000000000000000;
            v146 = &g_c28000;
            do
            {
                if (((char)[D] ZeroHI64ofV128(t5) & 1))
                    *((unsigned long *)(v144 + v148)) = v147;
                if (((char)([D] ZeroHI64ofV128(t7) >> 32) & 1))
                    *((unsigned long *)(v144 + v148 + 8)) = v147 + 5909427300522524817;
                v145 += 2 CONCAT 2;
                v147 += 11818854601045049634;
                v148 += 16;
            } while (v148 != 1360);
            *((long long *)(v144 + 1360)) = 2467973497257689298 << ((char)g_c28048 & 63);
            *((long long *)(v144 + 1376)) = 16078419865681088981 << (char)(g_c28058 & 63);
            *((long long *)(v144 + 1368)) = g_c28050 | 4984886896515614466;
            *((long long *)(v144 + 1384)) = -863845969873796972 << (char)(g_c28060 & 63);
            *((long long *)(v144 + 1400)) = 16141768211782500247 << (char)(g_c28058 & 63);
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
            *((long long *)(v144 + 1480)) = 16638563218778374329 << (char)(g_c28058 & 63);
            *((long long *)(v144 + 1488)) = (g_c28070 | g_c28050 & 14191419209879323345) & g_c28078;
            *((long long *)(v144 + 1496)) = g_c28080 & (g_c28078 | g_c28060 & 14191419209879323345);
            *((long long *)(v144 + 1504)) = g_c28088 & (g_c28080 | g_c28068 & 14191419209879323345);
            *((long long *)(v144 + 1512)) = (g_c28088 | g_c28058 & 14191419209879323345) & g_c28050;
            if (!v144(v144, v152, 7, 34, -1, 0, v144))
            {
                v146 = &g_c36000;
                v149 = 54021874;
            }
            else
            {
                g_c28048 = 1548547368790345575;
                g_c28050 = 8480685023701299104;
                g_c28060 = 9165157281580667425;
                g_c28068 = 16552524631470658226;
                g_c28058 = 5393926425063019331;
                v85 = 3161612844;
                v149 = 53;
                [D] syscall(*((long long *)v85));
            }
            v85 = v149;
            v150 = 53;
            v151 = [D] syscall(*((long long *)v85));
        }
        v85 = *((long long *)(v150 + 3104));
        v86 = 3596551104;
        *((int *)(v153 + 8)) = 3596551104;
        *((unsigned long *)v153) = v85;
        sub_c1ad58(v151, v152);
        *((unsigned long *)(v146 + 3064)) = v153;
    }
    v154 = v153(0, 28, 7, 34, -1, 0, 222);
    *((int128_t *)v154) = 149104195932782409882128380167120720347;
    strncpy(v154 + 12, "ol,pjdmb'ocgi~!", 15);
    v155 = sub_b77f38(v154, 28, 7, 34, -1, 0, 222);
    v156 = malloc(12);
    v157 = 0;
    *((long long *)v156) = 3469490092458358004;
    *((int *)(v156 + 8)) = 0;
    do
    {
        *((char *)(v154 + v157)) = *((long long *)v155)(*((char *)(v154 + v157)), v156);
        v157 += 1;
    } while (v157 != 27);
    *((int128_t *)&v96) = *((int128_t *)(v154 + 9));
    *((int128_t *)&v94) = *((int128_t *)v154);
    sub_452774(&v0, &v94);
    sub_c00a60(&v71, &v76);
    v158 = v71;
    v160 = &v0;
    tmp_32 = (unsigned int)v158 & 1;
    v162 = (unsigned int)v158 & 1;
    if (!((char)[D] arm64g_calculate_condition(0x2<64>, x0<8>, 0x1<64>, 0x0<64>)))
        v165 = *((long long *)&v73);
    else
        v164 = &v71 | 1;
    if ((char)[D] arm64g_calculate_condition(0x2<64>, x0<8>, 0x1<64>, 0x0<64>))
        v166 = __ROL__(v158, 63) & 9223372036854775807;
    else
        v167 = *((long long *)&v72);
    v168 = sub_c00f8c();
    *((int128_t *)&v85) = *((int128_t *)v168);
    v87 = *((long long *)(v168 + 16));
    *((long long *)(v168 + 8)) = 0;
    *((long long *)(v168 + 16)) = 0;
    *((long long *)v168) = 0;
    if ((char)[D] arm64g_calculate_condition(0x2<64>, x0<8>, 0x1<64>, 0x0<64>))
        v170 = &v85 | 1;
    else
        v170 = v87;
    if (((char)v85 & 1))
        sub_c00314(v170);
    v434 = &g_c36000;
    if ((v71 & 1))
        sub_c00314(*((long long *)&v73));
    if ((v0 & 1))
        sub_c00314(*((long long *)&v2));
    v171 = g_c36bf8;
    if (!g_c36bf8)
    {
        v172 = 0;
        v173 = 12;
        v174 = 7;
        v175 = 34;
        v176 = -1;
        v177 = 0;
        v178 = [D] syscall();
        v171 = v178;
        if ((char)[D] arm64g_calculate_condition(0x2<64>, x0<8>, 0x1<64>, 0x0<64>))
        {
            v180 = &g_410000;
        }
        else
        {
            v34 = v170;
            (unsigned int)v179 = sysconf(39);
            v181 = v179;
            v424 = 0;
            if (1 >= v182)
                v419 = 1;
            else
                v182 = __ROL__(v179, 62) & 4611686018427387903;
            do
            {
                v183 = 0;
                v184 = v181;
                v185 = 7;
                v186 = 34;
                v187 = -1;
                v188 = 0;
                v189 = [D] syscall();
                (&v85)[v424] = v189;
                if (!((char)[D] arm64g_calculate_condition(0x2<64>, x0<8>, 0x1<64>, 0x0<64>)))
                {
                    v157 = v189;
                    if (v181 >= 4)
                    {
                        v427 = 0;
                        do
                        {
                            goto (char *)(8686516 + *((int *)(4314324 + 4 * (x27<8> & 3))));
                        } while ((v127 += 1, v127 != 7));
                    }
                    if (v424)
                    {
                        v190 = (&v85)[1 + v424];
                        *((unsigned int *)v190) = 0x14000000 | (0x14000000 | __ROL__((unsigned int)(v189 - v190), 30) & 3288334335) & 67108863;
                    }
                    sub_c1ad58(v157, v157 + v181);
                }
            } while ((v127 += 1, v127 != 7));
            (long long)v85();
            v192 = 0;
            v193 = 0;
            v194 = 0;
            v195 = 0;
            v196 = 7;
            v197 = 34;
            v198 = -1;
            v199 = [D] syscall();
            v200 = 0x10000000000000000;
            v170 = &g_c28000;
            v434 = &g_c28000;
            do
            {
                if (((char)[D] ZeroHI64ofV128(t5) & 1))
                    *((unsigned long *)(v199 + v194)) = v195;
                if (((char)([D] ZeroHI64ofV128(t7) >> 32) & 1))
                    *((unsigned long *)(v199 + v194 + 8)) = v195 + 5909427300522524817;
                v200 += 2 CONCAT 2;
                v195 += 11818854601045049634;
                v194 += 16;
            } while (v194 != 1360);
            *((long long *)(v199 + 1360)) = 2467973497257689298 << ((char)g_c28048 & 63);
            *((long long *)(v199 + 1376)) = 16078419865681088981 << (char)(g_c28058 & 63);
            *((long long *)(v199 + 1368)) = g_c28050 | 4984886896515614466;
            *((long long *)(v199 + 1384)) = -863845969873796972 << (char)(g_c28060 & 63);
            *((long long *)(v199 + 1400)) = 16141768211782500247 << (char)(g_c28058 & 63);
            *((long long *)(v199 + 1392)) = g_c28050 | 16934609730860850130;
            *((long long *)(v199 + 1408)) = -842445079099799127 << (char)(g_c28060 & 63);
            *((long long *)(v199 + 1416)) = g_c28050 | 14191419209879323345;
            *((long long *)(v199 + 1424)) = 10719130689623757738 << (char)(g_c28068 & 63);
            *((long long *)(v199 + 1432)) = -36308925657969772 << (char)(g_c28060 & 63);
            *((long long *)(v199 + 1440)) = 16640236126571352245 << (char)(g_c28058 & 63);
            *((long long *)(v199 + 1448)) = 74450487335916458 << (char)(g_c28060 & 63);
            *((long long *)(v199 + 1456)) = -719696696328650327 << (char)(g_c28068 & 63);
            *((long long *)(v199 + 1464)) = g_c28050 | 12026555812575215315;
            *((long long *)(v199 + 1472)) = 16213826907639054505 << (char)(g_c28068 & 63);
            *((long long *)(v199 + 1480)) = 16638563218778374329 << (char)(g_c28058 & 63);
            *((long long *)(v199 + 1488)) = (g_c28070 | g_c28050 & 14191419209879323345) & g_c28078;
            *((long long *)(v199 + 1496)) = g_c28080 & (g_c28078 | g_c28060 & 14191419209879323345);
            *((long long *)(v199 + 1504)) = g_c28088 & (g_c28080 | g_c28068 & 14191419209879323345);
            *((long long *)(v199 + 1512)) = (g_c28088 | g_c28058 & 14191419209879323345) & g_c28050;
            (unsigned int)v178 = v199(v199, sysconf(39), 7, 34, -1, 0, v199);
            if (!v178)
            {
                v434 = &g_c36000;
                v201 = 54021874;
            }
            else
            {
                g_c28048 = 1548547368790345575;
                g_c28050 = 8480685023701299104;
                g_c28060 = 9165157281580667425;
                g_c28068 = 16552524631470658226;
                g_c28058 = 5393926425063019331;
                v85 = 3161612844;
                v201 = 53;
                [D] syscall(*((long long *)v85));
            }
            v85 = v201;
            v180 = 53;
            [D] syscall(*((long long *)v85));
        }
        v85 = *((long long *)(v180 + 3104));
        v86 = 3596551104;
        *((int *)(v171 + 8)) = 3596551104;
        *((unsigned long *)v171) = v85;
        sub_c1ad58(v178);
        *((unsigned long *)(v434 + 3064)) = v171;
    }
    v202 = v171(-100, v170, 577, 384, 0, 0, 56);
    if (((char)(v202 >> 31) & 1))
    {
        v34 = v170;
        (unsigned int)v203 = sysconf(39);
        v206 = v203;
        v424 = 0;
        if (1 >= v419)
            v419 = 1;
        else
            v419 = __ROL__(v203, 62) & 4611686018427387903;
    }
    else
    {
        v205 = v170;
        sub_452774(&v0, v205);
        if ((v0 & 1))
            sub_c00314(*((long long *)&v2));
        if (!((char)sub_46b9d8(v202, &v0, 6) & 1))
        {
            (unsigned int)v228 = sysconf(39);
            v230 = v228;
            v157 = 0;
            if (1 >= v424)
                v424 = 1;
            else
                v424 = __ROL__(v228, 62) & 4611686018427387903;
            do
            {
                v232 = 0;
                v233 = v230;
                v234 = 7;
                v235 = 34;
                v236 = -1;
                v237 = 0;
                v238 = [D] syscall();
                (&v85)[v157] = v238;
                if (!((char)[D] arm64g_calculate_condition(0x2<64>, x0<8>, 0x1<64>, 0x0<64>)))
                {
                    v239 = v238;
                    if (v230 >= 4)
                    {
                        v240 = 0;
                        do
                        {
                            goto (char *)(8688984 + *((int *)(4314356 + 4 * (x26<8> & 3))));
                        } while ((v127 += 1, v127 != 7));
                    }
                    if (v157)
                    {
                        v241 = (&v85)[1 + v157];
                        *((unsigned int *)v241) = 0x14000000 | (0x14000000 | __ROL__((unsigned int)(v238 - v241), 30) & 3288334335) & 67108863;
                    }
                    sub_c1ad58(v239, v239 + v230);
                }
            } while ((v127 += 1, v127 != 7));
            (long long)v85();
            v243 = 0;
            v244 = 0;
            v245 = 0;
            v246 = 0;
            v247 = 7;
            v248 = 34;
            v249 = -1;
            v250 = [D] syscall();
            v251 = 0x10000000000000000;
            v434 = &g_c28000;
            do
            {
                if (((char)[D] ZeroHI64ofV128(t5) & 1))
                    *((unsigned long *)(v250 + v245)) = v246;
                if (((char)([D] ZeroHI64ofV128(t7) >> 32) & 1))
                    *((unsigned long *)(v250 + v245 + 8)) = v246 + 5909427300522524817;
                v251 += 2 CONCAT 2;
                v246 += 11818854601045049634;
                v245 += 16;
            } while (v245 != 1360);
            *((long long *)(v250 + 1360)) = 2467973497257689298 << ((char)g_c28048 & 63);
            *((long long *)(v250 + 1376)) = 16078419865681088981 << (char)(g_c28058 & 63);
            *((long long *)(v250 + 1368)) = g_c28050 | 4984886896515614466;
            *((long long *)(v250 + 1384)) = -863845969873796972 << (char)(g_c28060 & 63);
            *((long long *)(v250 + 1400)) = 16141768211782500247 << (char)(g_c28058 & 63);
            *((long long *)(v250 + 1392)) = g_c28050 | 16934609730860850130;
            *((long long *)(v250 + 1408)) = -842445079099799127 << (char)(g_c28060 & 63);
            *((long long *)(v250 + 1416)) = g_c28050 | 14191419209879323345;
            *((long long *)(v250 + 1424)) = 10719130689623757738 << (char)(g_c28068 & 63);
            *((long long *)(v250 + 1432)) = -36308925657969772 << (char)(g_c28060 & 63);
            *((long long *)(v250 + 1440)) = 16640236126571352245 << (char)(g_c28058 & 63);
            *((long long *)(v250 + 1448)) = 74450487335916458 << (char)(g_c28060 & 63);
            *((long long *)(v250 + 1456)) = -719696696328650327 << (char)(g_c28068 & 63);
            *((long long *)(v250 + 1464)) = g_c28050 | 12026555812575215315;
            *((long long *)(v250 + 1472)) = 16213826907639054505 << (char)(g_c28068 & 63);
            *((long long *)(v250 + 1480)) = 16638563218778374329 << (char)(g_c28058 & 63);
            *((long long *)(v250 + 1488)) = (g_c28070 | g_c28050 & 14191419209879323345) & g_c28078;
            *((long long *)(v250 + 1496)) = g_c28080 & (g_c28078 | g_c28060 & 14191419209879323345);
            *((long long *)(v250 + 1504)) = g_c28088 & (g_c28080 | g_c28068 & 14191419209879323345);
            *((long long *)(v250 + 1512)) = (g_c28088 | g_c28058 & 14191419209879323345) & g_c28050;
            if (!v250(v250, sysconf(39), 7, 34, -1, 0, v250))
            {
                v434 = &g_c36000;
                v252 = 1199110285;
            }
            else
            {
                g_c28048 = 1548547368790345575;
                g_c28050 = 8480685023701299104;
                g_c28060 = 9165157281580667425;
                g_c28068 = 16552524631470658226;
                g_c28058 = 5393926425063019331;
                v85 = 3161612844;
                v252 = 53;
                [D] syscall(*((long long *)v85));
            }
            v85 = v252;
            v253 = [D] syscall(*((long long *)v85));
        }
        else
        {
            v229 = *((long long *)(v434 + 3064));
            if (v229)
                goto LABEL_849e58;
            v231 = 0;
        }
        v254 = 12;
        v255 = 7;
        v256 = 34;
        v257 = -1;
        v258 = 0;
        v259 = [D] syscall();
        v229 = v259;
        if (!((char)[D] arm64g_calculate_condition(0x2<64>, x0<8>, 0x1<64>, 0x0<64>)))
        {
            v34 = v170;
            (unsigned int)v260 = sysconf(39);
            v262 = v260;
            v424 = 0;
            if (1 >= v419)
                v419 = 1;
            else
                v419 = __ROL__(v260, 62) & 4611686018427387903;
        }
        else
        {
            v85 = (&g_410000)[388];
            v86 = 3596551104;
            *((int *)(v229 + 8)) = 3596551104;
            *((unsigned long *)v229) = v85;
            sub_c1ad58(v259);
            *((unsigned long *)(v434 + 3064)) = v229;
LABEL_849e58:
            if (((char)(v229(-100, v170, 0, 0, 0, 0, 35) >> 31) & 1))
            {
                (unsigned int)v284 = sysconf(39);
                v285 = v284;
                v286 = 0;
                if (1 >= v157)
                    v288 = 1;
                else
                    v157 = __ROL__(v284, 62) & 4611686018427387903;
                do
                {
                    v289 = 0;
                    v290 = v285;
                    v291 = 7;
                    v292 = 34;
                    v293 = -1;
                    v294 = 0;
                    v295 = [D] syscall();
                    (&v85)[v286] = v295;
                    if (!((char)[D] arm64g_calculate_condition(0x2<64>, x0<8>, 0x1<64>, 0x0<64>)))
                    {
                        v296 = v295;
                        if (v285 >= 4)
                        {
                            v297 = 0;
                            do
                            {
                                goto (char *)(8691440 + *((int *)(4314388 + 4 * (x25<8> & 3))));
                            } while ((v127 += 1, v127 != 7));
                        }
                        if (v286)
                        {
                            v298 = (&v85)[1 + v286];
                            *((unsigned int *)v298) = 0x14000000 | (0x14000000 | __ROL__((unsigned int)(v295 - v298), 30) & 3288334335) & 67108863;
                        }
                        sub_c1ad58(v296, v296 + v285);
                    }
                } while ((v127 += 1, v127 != 7));
                (long long)v85();
                v300 = 0;
                v301 = 0;
                v302 = 0;
                v303 = 0;
                v304 = 7;
                v305 = 34;
                v306 = -1;
                v307 = [D] syscall();
                v308 = 0x10000000000000000;
                v434 = &g_c28000;
                do
                {
                    if (((char)[D] ZeroHI64ofV128(t5) & 1))
                        *((unsigned long *)(v307 + v302)) = v303;
                    if (((char)([D] ZeroHI64ofV128(t7) >> 32) & 1))
                        *((unsigned long *)(v307 + v302 + 8)) = v303 + 5909427300522524817;
                    v308 += 2 CONCAT 2;
                    v303 += 11818854601045049634;
                    v302 += 16;
                } while (v302 != 1360);
                *((long long *)(v307 + 1360)) = 2467973497257689298 << ((char)g_c28048 & 63);
                *((long long *)(v307 + 1376)) = 16078419865681088981 << (char)(g_c28058 & 63);
                *((long long *)(v307 + 1368)) = g_c28050 | 4984886896515614466;
                *((long long *)(v307 + 1384)) = -863845969873796972 << (char)(g_c28060 & 63);
                *((long long *)(v307 + 1400)) = 16141768211782500247 << (char)(g_c28058 & 63);
                *((long long *)(v307 + 1392)) = g_c28050 | 16934609730860850130;
                *((long long *)(v307 + 1408)) = -842445079099799127 << (char)(g_c28060 & 63);
                *((long long *)(v307 + 1416)) = g_c28050 | 14191419209879323345;
                *((long long *)(v307 + 1424)) = 10719130689623757738 << (char)(g_c28068 & 63);
                *((long long *)(v307 + 1432)) = -36308925657969772 << (char)(g_c28060 & 63);
                *((long long *)(v307 + 1440)) = 16640236126571352245 << (char)(g_c28058 & 63);
                *((long long *)(v307 + 1448)) = 74450487335916458 << (char)(g_c28060 & 63);
                *((long long *)(v307 + 1456)) = -719696696328650327 << (char)(g_c28068 & 63);
                *((long long *)(v307 + 1464)) = g_c28050 | 12026555812575215315;
                *((long long *)(v307 + 1472)) = 16213826907639054505 << (char)(g_c28068 & 63);
                *((long long *)(v307 + 1480)) = 16638563218778374329 << (char)(g_c28058 & 63);
                *((long long *)(v307 + 1488)) = (g_c28070 | g_c28050 & 14191419209879323345) & g_c28078;
                *((long long *)(v307 + 1496)) = g_c28080 & (g_c28078 | g_c28060 & 14191419209879323345);
                *((long long *)(v307 + 1504)) = g_c28088 & (g_c28080 | g_c28068 & 14191419209879323345);
                *((long long *)(v307 + 1512)) = (g_c28088 | g_c28058 & 14191419209879323345) & g_c28050;
                if (!v307(v307, sysconf(39), 7, 34, -1, 0, v307))
                {
                    v434 = &g_c36000;
                    v309 = 3257922633;
                }
                else
                {
                    g_c28048 = 1548547368790345575;
                    g_c28050 = 8480685023701299104;
                    g_c28060 = 9165157281580667425;
                    g_c28068 = 16552524631470658226;
                    g_c28058 = 5393926425063019331;
                    v85 = 3161612844;
                    v309 = 53;
                    [D] syscall(*((long long *)v85));
                }
                v85 = v309;
                v287 = [D] syscall(*((long long *)v85));
            }
            else
            {
                if (!(v76 & 1))
                    goto LABEL_84a30c;
                v287 = *((long long *)&v78);
            }
            sub_c00314(v287);
LABEL_84a30c:
            sub_4680e4(sub_46dd10());
            v310 = *((long long *)(v434 + 3064));
            if (v310)
                goto LABEL_84a7fc;
            v311 = 0;
            v312 = 12;
            v313 = 7;
            v314 = 34;
            v315 = -1;
            v316 = 0;
            v317 = [D] syscall();
            v310 = v317;
            if (!((char)[D] arm64g_calculate_condition(0x2<64>, x0<8>, 0x1<64>, 0x0<64>)))
            {
                (unsigned int)v318 = sysconf(39);
                v321 = v318;
                v322 = 0;
                if (1 >= v424)
                    v424 = 1;
                else
                    v424 = __ROL__(v318, 62) & 4611686018427387903;
            }
            else
            {
                v94 = (&g_410000)[388];
                v95 = 3596551104;
                *((int *)(v310 + 8)) = 3596551104;
                *((unsigned long *)v310) = v94;
                sub_c1ad58(v317, v317 + 12);
                *((unsigned long *)(v434 + 3064)) = v310;
LABEL_84a7fc:
                v344 = v310(2, 2, 0, 0, 0, 0, 198);
                if ((char)[D] arm64g_calculate_condition(0x1<64>, x19<8>, 0x1<64>, 0x0<64>))
                    goto LABEL_84b524;
                v0 = 2000;
                v1 = &v94;
                if ((char)[D] arm64g_calculate_condition(0x2<64>, x0<8>, 0x1<64>, 0x0<64>))
                {
                    v436 = v344;
                    goto LABEL_84b520;
                }
                v30 = v344;
                if ((int)*((long long *)&v32) < 1)
                    goto LABEL_84b51c;
                v32 = __ROL__(v0 * 14757395258967641293 >> 64, 59) & 576460752303423487;
                v435 = 0;
                v34 = &v76 | 1;
                *((int128_t *)&v31) = 0x10000000000000000;
                *((long long *)&v28) = 2 CONCAT 2;
                *((long long *)&v29) = 169 CONCAT 169;
                while (true)
                {
                    v33 = v435;
                    sub_452774(&v76, &v94 + 40 * v435);
                    v345 = *((long long *)(v434 + 3064));
                    if (!v345)
                    {
                        v346 = 0;
                        v347 = 12;
                        v348 = 7;
                        v349 = 34;
                        v350 = -1;
                        v351 = 0;
                        v352 = [D] syscall();
                        v345 = v352;
                        if ((char)[D] arm64g_calculate_condition(0x2<64>, x0<8>, 0x1<64>, 0x0<64>))
                        {
                            v85 = 15276209943188210664;
                            v353 = 3596551104;
                        }
                        else
                        {
                            v354 = sysconf(39);
                            v355 = 0;
                            do
                            {
                                v356 = 0;
                                v357 = v354;
                                v358 = 7;
                                v359 = 34;
                                v360 = -1;
                                v361 = 0;
                                v362 = [D] syscall();
                                (&v85)[v355] = v362;
                                if (!((char)[D] arm64g_calculate_condition(0x2<64>, x0<8>, 0x1<64>, 0x0<64>)))
                                {
                                    if (v354 >= 4)
                                    {
                                        goto (char *)&(&"(" + (0 << 2))[1086767] + 4;
                                    }
                                    else
                                    {
                                        if (v355)
                                        {
                                            v363 = (&v85)[1 + v355];
                                            *((unsigned int *)v363) = 0x14000000 | (0x14000000 | __ROL__((unsigned int)(v362 - v363), 30) & 3288334335) & 67108863;
                                        }
                                        sub_c1ad58(v362, v362 + v354);
                                    }
                                }
                            } while ((v127 += 1, v127 != 7));
                            (long long)v85();
                            v365 = 0;
                            v366 = 0;
                            v367 = 7;
                            v368 = 34;
                            v369 = -1;
                            v370 = [D] syscall();
                            v371 = 0;
                            v372 = 0;
                            v434 = &g_c28000;
                            v373 = (int128_t)v31;
                            do
                            {
                                if (((char)[D] ZeroHI64ofV128(t5) & 1))
                                    *((unsigned long *)(v370 + v371)) = v372;
                                if (((char)([D] ZeroHI64ofV128(t7) >> 32) & 1))
                                    *((unsigned long *)(v370 + v371 + 8)) = v372 + 5909427300522524817;
                                v373 += (int128_t)v28;
                                v372 += 11818854601045049634;
                                v371 += 16;
                            } while (v371 != 1360);
                            *((long long *)(v370 + 1360)) = 2467973497257689298 << ((char)g_c28048 & 63);
                            *((long long *)(v370 + 1376)) = 16078419865681088981 << (char)(g_c28058 & 63);
                            *((long long *)(v370 + 1368)) = g_c28050 | 4984886896515614466;
                            *((long long *)(v370 + 1384)) = -863845969873796972 << (char)(g_c28060 & 63);
                            *((long long *)(v370 + 1400)) = 16141768211782500247 << (char)(g_c28058 & 63);
                            *((long long *)(v370 + 1392)) = g_c28050 | 16934609730860850130;
                            *((long long *)(v370 + 1408)) = -842445079099799127 << (char)(g_c28060 & 63);
                            *((long long *)(v370 + 1416)) = g_c28050 | 14191419209879323345;
                            *((long long *)(v370 + 1424)) = 10719130689623757738 << (char)(g_c28068 & 63);
                            *((long long *)(v370 + 1432)) = -36308925657969772 << (char)(g_c28060 & 63);
                            *((long long *)(v370 + 1440)) = 16640236126571352245 << (char)(g_c28058 & 63);
                            *((long long *)(v370 + 1448)) = 74450487335916458 << (char)(g_c28060 & 63);
                            *((long long *)(v370 + 1456)) = -719696696328650327 << (char)(g_c28068 & 63);
                            *((long long *)(v370 + 1464)) = g_c28050 | 12026555812575215315;
                            *((long long *)(v370 + 1472)) = 16213826907639054505 << (char)(g_c28068 & 63);
                            *((long long *)(v370 + 1480)) = 16638563218778374329 << (char)(g_c28058 & 63);
                            *((long long *)(v370 + 1488)) = (g_c28070 | g_c28050 & 14191419209879323345) & g_c28078;
                            *((long long *)(v370 + 1496)) = g_c28080 & (g_c28078 | g_c28060 & 14191419209879323345);
                            *((long long *)(v370 + 1504)) = g_c28088 & (g_c28080 | g_c28068 & 14191419209879323345);
                            *((long long *)(v370 + 1512)) = (g_c28088 | g_c28058 & 14191419209879323345) & g_c28050;
                            (unsigned int)v352 = v370(v370, sysconf(39), 7, 34, -1, 0, v370);
                            if (!v352)
                            {
                                v434 = &g_c36000;
                                v374 = 54021874;
                            }
                            else
                            {
                                g_c28048 = 1548547368790345575;
                                g_c28050 = 8480685023701299104;
                                g_c28060 = 9165157281580667425;
                                g_c28068 = 16552524631470658226;
                                g_c28058 = 5393926425063019331;
                                v85 = 3161612844;
                                v374 = 53;
                                [D] syscall(*((long long *)v85));
                            }
                            v85 = v374;
                            v353 = 53;
                            [D] syscall(*((long long *)v85));
                        }
                        v86 = v353;
                        *((unsigned int *)(v345 + 8)) = v353;
                        *((unsigned long *)v345) = v85;
                        sub_c1ad58(v352, v352 + 12);
                        *((unsigned long *)(v434 + 3064)) = v345;
                    }
                    v375 = v345(0, 4, 7, 34, -1, 0, 222);
                    *((long long **)v375) = &g_988080;
                    v376 = sub_b77fb0(v375, 4, 7, 34, -1, 0, 222);
                    v377 = malloc(12);
                    v424 = 0;
                    *((int *)(v377 + 8)) = 0;
                    *((long long *)v377) = 3469490092458358004;
                    do
                    {
                        *((char *)(v375 + v424)) = *((long long *)v376)(*((char *)(v375 + v424)), v377);
                        v424 += 1;
                    } while (v424 != 3);
                    if (!((char)[D] arm64g_calculate_condition(0x2<64>, x0<8>, 0x1<64>, 0x0<64>)))
                        v419 = *((long long *)&v78);
                    else
                        v419 = v34;
                    v380 = strlen();
                    if (!v380)
                        goto LABEL_84b4f0;
                    v381 = *((long long *)&v77);
                    if ((char)[D] arm64g_calculate_condition(0x2<64>, x0<8>, 0x1<64>, 0x0<64>))
                        v381 = __ROL__(v76, 31) & 2147483647;
                    if (!(v380 <= v381))
                        goto LABEL_84ae68;
                    v383 = v419 + v381;
                    while (true)
                    {
                        if (!(!((char)[D] arm64g_calculate_condition(0x22<64>, Sub(x8<8>, x21<8>), 0x1<64>, 0x0<64>))) || !(((unsigned int)v384 = memchr(), v384)))
                            goto LABEL_84ae68;
                        v424 = v384;
                        if (!memcmp())
                            break;
                        if (!(v380 <= v383 - (v384 + 1)))
                            goto LABEL_84ae68;
                    }
                    if (v384 != v383 && !((char)[D] arm64g_calculate_condition(0x2<64>, Sub(x0<8>, x24<8>), 0x1<64>, 0x0<64>)))
                        goto LABEL_84b4f0;
LABEL_84ae68:
                    v418 = &g_c36000;
                    v420 = g_c36bf8;
                    if (!g_c36bf8)
                    {
                        v386 = 0;
                        v387 = 12;
                        v388 = 7;
                        v389 = 34;
                        v390 = -1;
                        v391 = 0;
                        v417 = [D] syscall();
                        v420 = v417;
                        if ((char)[D] arm64g_calculate_condition(0x2<64>, x0<8>, 0x1<64>, 0x0<64>))
                        {
                            v85 = 15276209943188210664;
                            v416 = 3596551104;
                        }
                        else
                        {
                            (unsigned int)v392 = sysconf(39);
                            v393 = v392;
                            v394 = 0;
                            if (1 >= v419)
                                v419 = 1;
                            else
                                v419 = __ROL__(v392, 62) & 4611686018427387903;
                            do
                            {
                                v395 = 0;
                                v396 = v393;
                                v397 = 7;
                                v398 = 34;
                                v399 = -1;
                                v400 = 0;
                                v401 = [D] syscall();
                                (&v85)[v394] = v401;
                                if (!((char)[D] arm64g_calculate_condition(0x2<64>, x0<8>, 0x1<64>, 0x0<64>)))
                                {
                                    v402 = v401;
                                    if (v393 >= 4)
                                    {
                                        v403 = 0;
                                        do
                                        {
                                            goto (char *)(8695564 + *((int *)(4314436 + 4 * (x26<8> & 3))));
                                        } while ((v127 += 1, v127 != 7));
                                    }
                                    if (v394)
                                    {
                                        v404 = (&v85)[1 + v394];
                                        *((unsigned int *)v404) = 0x14000000 | (0x14000000 | __ROL__((unsigned int)(v401 - v404), 30) & 3288334335) & 67108863;
                                    }
                                    sub_c1ad58(v402, v402 + v393);
                                }
                            } while ((v127 += 1, v127 != 7));
                            (long long)v85();
                            v406 = 0;
                            v407 = 0;
                            v408 = 7;
                            v409 = 34;
                            v410 = -1;
                            v411 = [D] syscall();
                            v412 = 0;
                            v413 = 0;
                            v414 = (int128_t)v31;
                            v418 = &g_c28000;
                            do
                            {
                                if (((char)[D] ZeroHI64ofV128(t5) & 1))
                                    *((unsigned long *)(v411 + v412)) = v413;
                                if (((char)([D] ZeroHI64ofV128(t7) >> 32) & 1))
                                    *((unsigned long *)(v411 + v412 + 8)) = v413 + 5909427300522524817;
                                v413 += 11818854601045049634;
                                v412 += 16;
                                v414 += 2 CONCAT 2;
                            } while (v412 != 1360);
                            *((long long *)(v411 + 1360)) = 2467973497257689298 << ((char)g_c28048 & 63);
                            *((long long *)(v411 + 1376)) = 16078419865681088981 << (char)(g_c28058 & 63);
                            *((long long *)(v411 + 1368)) = g_c28050 | 4984886896515614466;
                            *((long long *)(v411 + 1384)) = -863845969873796972 << (char)(g_c28060 & 63);
                            *((long long *)(v411 + 1400)) = 16141768211782500247 << (char)(g_c28058 & 63);
                            *((long long *)(v411 + 1392)) = g_c28050 | 16934609730860850130;
                            *((long long *)(v411 + 1408)) = -842445079099799127 << (char)(g_c28060 & 63);
                            *((long long *)(v411 + 1416)) = g_c28050 | 14191419209879323345;
                            *((long long *)(v411 + 1424)) = 10719130689623757738 << (char)(g_c28068 & 63);
                            *((long long *)(v411 + 1432)) = -36308925657969772 << (char)(g_c28060 & 63);
                            *((long long *)(v411 + 1440)) = 16640236126571352245 << (char)(g_c28058 & 63);
                            *((long long *)(v411 + 1448)) = 74450487335916458 << (char)(g_c28060 & 63);
                            *((long long *)(v411 + 1456)) = -719696696328650327 << (char)(g_c28068 & 63);
                            *((long long *)(v411 + 1464)) = g_c28050 | 12026555812575215315;
                            *((long long *)(v411 + 1472)) = 16213826907639054505 << (char)(g_c28068 & 63);
                            *((long long *)(v411 + 1480)) = 16638563218778374329 << (char)(g_c28058 & 63);
                            *((long long *)(v411 + 1488)) = (g_c28070 | g_c28050 & 14191419209879323345) & g_c28078;
                            *((long long *)(v411 + 1496)) = g_c28080 & (g_c28078 | g_c28060 & 14191419209879323345);
                            *((long long *)(v411 + 1504)) = g_c28088 & (g_c28080 | g_c28068 & 14191419209879323345);
                            *((long long *)(v411 + 1512)) = (g_c28088 | g_c28058 & 14191419209879323345) & g_c28050;
                            (unsigned int)v417 = v411(v411, sysconf(39), 7, 34, -1, 0, v411);
                            if (!v417)
                            {
                                v418 = &g_c36000;
                                v415 = 54021874;
                            }
                            else
                            {
                                g_c28048 = 1548547368790345575;
                                g_c28050 = 8480685023701299104;
                                g_c28060 = 9165157281580667425;
                                g_c28068 = 16552524631470658226;
                                g_c28058 = 5393926425063019331;
                                v85 = 3161612844;
                                v415 = 53;
                                [D] syscall(*((long long *)v85));
                            }
                            v85 = v415;
                            v416 = 53;
                            [D] syscall(*((long long *)v85));
                        }
                        v86 = v416;
                        *((unsigned int *)(v420 + 8)) = v416;
                        *((unsigned long *)v420) = v85;
                        sub_c1ad58(v417, v417 + 12);
                        *((unsigned long *)(v418 + 3064)) = v420;
                    }
                    v421 = v420(0, 4, 7, 34, -1, 0, 222);
                    *((long long **)v421) = &g_868584;
                    v422 = sub_b77fb0(v421, 4, 7, 34, -1, 0, 222);
                    v423 = malloc(12);
                    v424 = 0;
                    *((int *)(v423 + 8)) = 0;
                    *((long long *)v423) = 3469490092458358004;
                    do
                    {
                        *((char *)(v421 + v424)) = *((long long *)v422)(*((char *)(v421 + v424)), v423);
                        v424 += 1;
                    } while (v424 != 3);
                    v425 = v76;
                    if (!((char)[D] arm64g_calculate_condition(0x2<64>, x0<8>, 0x1<64>, 0x0<64>)))
                        v427 = *((long long *)&v78);
                    else
                        v427 = v34;
                    v428 = strlen();
                    if (!v428)
                        goto LABEL_84b4f0;
                    v429 = *((long long *)&v77);
                    if ((char)[D] arm64g_calculate_condition(0x2<64>, x0<8>, 0x1<64>, 0x0<64>))
                        v429 = __ROL__((unsigned int)v425, 31) & 2147483647;
                    if (!(v428 <= v429))
                        goto LABEL_84b400;
                    v431 = v427 + v429;
                    while (true)
                    {
                        if (!(!((char)[D] arm64g_calculate_condition(0x22<64>, Sub(x8<8>, x22<8>), 0x1<64>, 0x0<64>))) || !(((unsigned int)v432 = memchr(), v432)))
                            goto LABEL_84b400;
                        v419 = v432;
                        if (!memcmp())
                            break;
                        if (!(v428 <= v431 - (v432 + 1)))
                            goto LABEL_84b400;
                    }
                    if (v432 != v431 && !((char)[D] arm64g_calculate_condition(0x2<64>, x0<8>, 0x1<64>, 0x0<64>)))
                    {
LABEL_84b4f0:
                        close(v30);
                        if ((v76 & 1))
                            sub_c00314(*((long long *)&v78));
                        v434 = &g_c36000;
                        goto LABEL_84b524;
                    }
LABEL_84b400:
                    if (((char)v425 & 1))
                        sub_c00314(v427);
                    v434 = &g_c36000;
                    v435 = v33 + 1;
                    if (v435 == v32)
                    {
LABEL_84b51c:
                        v436 = v30;
LABEL_84b520:
                        close(v436);
LABEL_84b524:
                        if (!((char)[D] arm64g_calculate_condition(0x2<64>, x0<8>, 0x1<64>, 0x0<64>)))
                            v437 = g_c281e0;
                        else
                            v437 = __ROL__(g_c281d8, 63) & 9223372036854775807;
                        if (v437)
                            goto LABEL_0x851694;
                        *((int128_t *)&v68) = 0;
                        *((int128_t *)&v69) = 0;
                        v70 = 0x3f800000;
                        dl_iterate_phdr(&g_b99194, &v68);
                        if (!(long long)(&v69)[8])
                            goto LABEL_0x85029c;
                        v438 = *((long long *)(v434 + 3064));
                        if (!v438)
                        {
                            v439 = 0;
                            v440 = 12;
                            v441 = 7;
                            v442 = 34;
                            v443 = -1;
                            v444 = 0;
                            v445 = [D] syscall();
                            v438 = v445;
                            if ((char)[D] arm64g_calculate_condition(0x2<64>, x0<8>, 0x1<64>, 0x0<64>))
                            {
                                v447 = &g_410000;
                                v448 = v445 + 12;
                            }
                            else
                            {
                                (unsigned int)v446 = sysconf(39);
                                v449 = v446;
                                v450 = 0;
                                if (1 >= v424)
                                    v451 = 1;
                                else
                                    v424 = __ROL__(v446, 62) & 4611686018427387903;
                                do
                                {
                                    v452 = 0;
                                    v453 = v449;
                                    v454 = 7;
                                    v455 = 34;
                                    v456 = -1;
                                    v457 = 0;
                                    v458 = [D] syscall();
                                    *((unsigned long *)((char *)&v94 + 8 * v450)) = v458;
                                    if (!((char)[D] arm64g_calculate_condition(0x2<64>, x0<8>, 0x1<64>, 0x0<64>)))
                                    {
                                        v459 = v458;
                                        if (v449 >= 4)
                                        {
                                            v460 = 0;
                                            do
                                            {
                                                goto (char *)(8697364 + *((int *)(4314452 + 4 * (x26<8> & 3))));
                                            } while ((v127 += 1, v127 != 7));
                                        }
                                        if (v450)
                                        {
                                            v461 = *((long long *)(-8 + (char *)&v94 + 8 * v450));
                                            *((unsigned int *)v461) = 0x14000000 | (0x14000000 | __ROL__((unsigned int)(v458 - v461), 30) & 3288334335) & 67108863;
                                        }
                                        sub_c1ad58(v459, v459 + v449);
                                    }
                                } while ((v127 += 1, v127 != 7));
                                (long long)v94();
                                v448 = sysconf(39);
                                v462 = 0;
                                v463 = 0;
                                v464 = 0;
                                v465 = 0;
                                v466 = 7;
                                v467 = 34;
                                v468 = -1;
                                v469 = [D] syscall();
                                v470 = 0x10000000000000000;
                                v434 = &g_c28000;
                                do
                                {
                                    if (((char)[D] ZeroHI64ofV128(t5) & 1))
                                        *((unsigned long *)(v469 + v464)) = v465;
                                    if (((char)([D] ZeroHI64ofV128(t7) >> 32) & 1))
                                        *((unsigned long *)(v469 + v464 + 8)) = v465 + 5909427300522524817;
                                    v470 += 2 CONCAT 2;
                                    v465 += 11818854601045049634;
                                    v464 += 16;
                                } while (v464 != 1360);
                                *((long long *)(v469 + 1360)) = 2467973497257689298 << ((char)g_c28048 & 63);
                                *((long long *)(v469 + 1376)) = 16078419865681088981 << (char)(g_c28058 & 63);
                                *((long long *)(v469 + 1368)) = g_c28050 | 4984886896515614466;
                                *((long long *)(v469 + 1384)) = -863845969873796972 << (char)(g_c28060 & 63);
                                *((long long *)(v469 + 1400)) = 16141768211782500247 << (char)(g_c28058 & 63);
                                *((long long *)(v469 + 1392)) = g_c28050 | 16934609730860850130;
                                *((long long *)(v469 + 1408)) = -842445079099799127 << (char)(g_c28060 & 63);
                                *((long long *)(v469 + 1416)) = g_c28050 | 14191419209879323345;
                                *((long long *)(v469 + 1424)) = 10719130689623757738 << (char)(g_c28068 & 63);
                                *((long long *)(v469 + 1432)) = -36308925657969772 << (char)(g_c28060 & 63);
                                *((long long *)(v469 + 1440)) = 16640236126571352245 << (char)(g_c28058 & 63);
                                *((long long *)(v469 + 1448)) = 74450487335916458 << (char)(g_c28060 & 63);
                                *((long long *)(v469 + 1456)) = -719696696328650327 << (char)(g_c28068 & 63);
                                *((long long *)(v469 + 1464)) = g_c28050 | 12026555812575215315;
                                *((long long *)(v469 + 1472)) = 16213826907639054505 << (char)(g_c28068 & 63);
                                *((long long *)(v469 + 1480)) = 16638563218778374329 << (char)(g_c28058 & 63);
                                *((long long *)(v469 + 1488)) = (g_c28070 | g_c28050 & 14191419209879323345) & g_c28078;
                                *((long long *)(v469 + 1496)) = g_c28080 & (g_c28078 | g_c28060 & 14191419209879323345);
                                *((long long *)(v469 + 1504)) = g_c28088 & (g_c28080 | g_c28068 & 14191419209879323345);
                                *((long long *)(v469 + 1512)) = (g_c28088 | g_c28058 & 14191419209879323345) & g_c28050;
                                if (!v469(v469, v448, 7, 34, -1, 0, v469))
                                {
                                    v434 = &g_c36000;
                                    v471 = 54021874;
                                }
                                else
                                {
                                    g_c28048 = 1548547368790345575;
                                    g_c28050 = 8480685023701299104;
                                    g_c28060 = 9165157281580667425;
                                    g_c28068 = 16552524631470658226;
                                    g_c28058 = 5393926425063019331;
                                    v94 = 3161612844;
                                    v471 = 53;
                                    [D] syscall(*((long long *)v94));
                                }
                                v94 = v471;
                                v447 = 53;
                                v445 = [D] syscall(*((long long *)v94));
                            }
                            v94 = *((long long *)(v447 + 3104));
                            v95 = 3596551104;
                            *((int *)(v438 + 8)) = 3596551104;
                            *((unsigned long *)v438) = v94;
                            sub_c1ad58(v445, v448);
                            *((unsigned long *)(v434 + 3064)) = v438;
                        }
                        v472 = v438(0, 16, 7, 34, -1, 0, 222);
                        *((int128_t *)v472) = 589029187869623609198325532444624347;
                        v473 = sub_b76908(v472, 16, 7, 34, -1, 0, 222);
                        v474 = malloc(12);
                        v475 = 0;
                        *((int *)(v474 + 8)) = 0;
                        *((long long *)v474) = 3469490092458358004;
                        do
                        {
                            *((char *)(v472 + v475)) = *((long long *)v473)(*((char *)(v472 + v475)), v474);
                            v475 += 1;
                        } while (v475 != 15);
                        v477 = g_c36bf8;
                        if (g_c36bf8)
                            goto LABEL_84bfc8;
                        v478 = 0;
                        v479 = 12;
                        v480 = 7;
                        v481 = 34;
                        v482 = -1;
                        v483 = 0;
                        v477 = [D] syscall();
                        if (!((char)[D] arm64g_calculate_condition(0x2<64>, x0<8>, 0x1<64>, 0x0<64>)))
                        {
                            v34 = v477;
                            (unsigned int)v484 = sysconf(39);
                            v486 = v484;
                            v487 = 0;
                            if (1 >= v419)
                                v419 = 1;
                            else
                                v419 = __ROL__(v484, 62) & 4611686018427387903;
                        }
                        else
                        {
                            v94 = (&g_410000)[388];
                            v95 = 3596551104;
                            *((int *)(v477 + 8)) = 3596551104;
                            *((unsigned long *)v477) = v94;
                            sub_c1ad58(v477);
                            (&g_c36000)[383] = v477;
LABEL_84bfc8:
                            (unsigned int)v510 = v477(-100, v472, 0, 0, 0, 0, 56);
                            if ((v510 >> 31 & 1))
                                goto LABEL_0x8502c8;
                            v66 = 0;
                            *((int128_t *)&v33) = 0x10000000000000000;
                            v65 = 0;
                            *((long long *)&v32) = 169 CONCAT 169;
                            v67 = 0;
                            *((long long *)&v31) = 2 CONCAT 2;
                            v34 = v510 << 32 >> 63 & -0x100000000 | v510 & 4294967295 & 4294967295;
                        }
                    }
                }
            }
        }
    }
}
