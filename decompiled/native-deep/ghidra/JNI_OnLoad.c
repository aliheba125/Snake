// Extracted JNI_OnLoad (native entry point) from libengine.so
// NOTE: heavily OLLVM-obfuscated: inline syscalls (CallSupervisor=svc#0), runtime branch-opcode generation, inline string decryption.

// ==== JNI_OnLoad @ 001f3fa0 ====

/* WARNING: Removing unreachable block (ram,0x001f50ac) */
/* WARNING: Removing unreachable block (ram,0x001f4c28) */
/* WARNING: Removing unreachable block (ram,0x001f5530) */
/* WARNING: Removing unreachable block (ram,0x001f5e14) */
/* WARNING: Removing unreachable block (ram,0x001f6288) */
/* WARNING: Removing unreachable block (ram,0x001f66fc) */
/* WARNING: Removing unreachable block (ram,0x001f6b70) */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 JNI_OnLoad(void)

{
  uint uVar1;
  undefined1 auVar2 [16];
  bool bVar3;
  ulong uVar4;
  undefined8 uVar5;
  size_t sVar6;
  long lVar7;
  ulong uVar8;
  int iVar9;
  int iVar10;
  code *pcVar11;
  long *plVar12;
  long extraout_x9;
  uint uVar13;
  long lVar14;
  undefined1 *puVar15;
  ulong uVar16;
  undefined1 auVar17 [16];
  code *local_a0 [7];
  undefined8 local_68;
  
  lVar14 = tpidr_el0;
  local_68 = *(undefined8 *)(lVar14 + 0x28);
  uVar4 = sysconf(0x27);
  lVar14 = 0;
  do {
    pcVar11 = (code *)0xde;
    CallSupervisor(0);
    local_a0[lVar14] = (code *)0x0;
    if (3 < uVar4) {
                    /* WARNING: Could not recover jumptable at 0x001f4054. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      uVar5 = (*(code *)((long)(int)switchD_001f4054::switchdataD_001125d4 + 0x1f4048))(0xffffffff);
      return uVar5;
    }
    if (lVar14 != 0) {
      pcVar11 = local_a0[(int)lVar14 - 1];
      *(uint *)pcVar11 = (uint)-(int)pcVar11 >> 2 & 0x3ffffff | 0x14000000;
    }
    auVar17 = FUN_0091ad58(pcVar11,0,uVar4,7,0x22,0xffffffffffffffff,0);
    lVar14 = lVar14 + 1;
  } while (lVar14 != 7);
  (*local_a0[0])(auVar17._0_8_,auVar17._8_8_);
  sysconf(0x27);
  plVar12 = (long *)0x0;
  lVar14 = 0;
  CallSupervisor(0);
  uVar4 = _DAT_00110a70;
  uVar16 = _UNK_00110a78;
  do {
    if (uVar4 < 0xa9) {
      *plVar12 = lVar14;
    }
    if (uVar16 < 0xa9) {
      plVar12[1] = lVar14 + 0x520280d201a40091;
    }
    uVar4 = uVar4 + 2;
    uVar16 = uVar16 + 2;
    lVar14 = lVar14 + -0x5bfafe5bfcb7fede;
    plVar12 = plVar12 + 2;
  } while (plVar12 != (long *)0x550);
  lRam0000000000000550 = 0x224000d1e31f80d2 << (DAT_00928048 & 0x3f);
  uRam0000000000000558 = (ulong)DAT_00928050 | 0x452de038a8500702;
  lRam0000000000000568 = -0xbfcff552efaff6c << (DAT_00928060 & 0x3f);
  lRam0000000000000560 = -0x20ddfa51bc7eae2b << (DAT_00928058 & 0x3f);
  uRam0000000000000570 = (ulong)DAT_00928050 | 0xeb03d1d3a9d59bd2;
  lRam0000000000000580 = -0xbb0f7560284f657 << (DAT_00928060 & 0x3f);
  lRam0000000000000578 = -0x1ffceb558a030069 << (DAT_00928058 & 0x3f);
  uRam0000000000000588 = (ulong)DAT_00928050 | 0xc4f20c94ff8302d1;
  lRam0000000000000598 = -0x80fec68804f46c << (DAT_00928060 & 0x3f);
  lRam0000000000000590 = -0x6b3dff6e1ffcec56 << (DAT_00928068 & 0x3f);
  lRam00000000000005a0 = -0x191201681917af4b << (DAT_00928058 & 0x3f);
  lRam00000000000005b0 = -0x9fce0550ab0fe57 << (DAT_00928068 & 0x3f);
  lRam00000000000005a8 = 0x1088052e30313aa << (DAT_00928060 & 0x3f);
  uRam00000000000005b8 = (ulong)DAT_00928050 | 0xa6e6e8cac7f47ed3;
  lRam00000000000005c0 = -0x1efcea550080ff57 << (DAT_00928068 & 0x3f);
  lRam00000000000005c8 = -0x1917f2e84bd5bf47 << (DAT_00928058 & 0x3f);
  uRam00000000000005d0 = (DAT_00928070 | (ulong)DAT_00928050 & 0xc4f20c94ff8302d1) & DAT_00928078;
  uRam00000000000005d8 = DAT_00928080 & (DAT_00928078 | DAT_00928060 & 0xc4f20c94ff8302d1);
  uRam00000000000005e0 = DAT_00928088 & (DAT_00928080 | DAT_00928068 & 0xc4f20c94ff8302d1);
  uRam00000000000005e8 = (DAT_00928088 | DAT_00928058 & 0xc4f20c94ff8302d1) & (ulong)DAT_00928050;
  uVar4 = 0x7f312dfd0f335221;
  lVar14 = (*(code *)0x0)(&SUB_00928000,0xff7f013977fb0b94,0xe6edfe97e6e850b5,0xf44f08a9fd7b09a9,
                          0xf40300aad1050094,0xeb03d1d3a9d59bd2,0);
  if (lVar14 == 0) {
    uVar4 = 0xefa0;
    local_a0[0] = (code *)&DAT_91773445;
  }
  else {
    DAT_00928060 = 0x7f312dfd0f335221;
    DAT_00928068 = 0xe5b661740ab652b2;
    DAT_00928058 = 0x4adb13815e795343;
    DAT_00928048 = 0x157d8ba09a9d4767;
    DAT_00928050 = &DAT_75b17218b1b0efa0;
    local_a0[0] = (code *)&SUB_00000035;
    CallSupervisor(0);
  }
  puVar15 = (undefined1 *)(uVar4 & 0xffff | 0x75b17218b1b00000);
  CallSupervisor(0);
  sVar6 = strlen(*(char **)local_a0[0]);
  if (sVar6 == 0xb) {
    iVar10 = 0;
    uVar4 = 0;
    bVar3 = true;
    uVar16 = 0;
    do {
      uVar8 = uVar16 & 3;
      uVar13 = (uint)uVar16;
      if (uVar8 == 2) {
        uVar13 = (uint)(&DAT_0012e890)[uVar16] ^ uVar13 + 0xef;
        if ((uint)(byte)(&DAT_75b17218b1b0efa0)[uVar16] != ((uVar13 << 6 | uVar13 >> 2) & 0xff))
        break;
      }
      else if (uVar8 == 1) {
        if ((iVar10 + (int)(&DAT_0012e890)[uVar16] & 0xffU ^ 0x32) !=
            (uint)(byte)(&DAT_75b17218b1b0efa0)[uVar16]) break;
      }
      else if (uVar8 == 0) {
        uVar8 = uVar4 ^ (&DAT_0012e890)[uVar16] ^ 0xab;
        auVar17._8_8_ = 0;
        auVar17._0_8_ = uVar8;
        iVar9 = SUB164(auVar17 * ZEXT816(0x2492492492492493),8);
        if ((uint)(byte)(&DAT_75b17218b1b0efa0)[uVar16] !=
            (iVar9 + ((uint)((int)uVar8 - iVar9) >> 1) >> 2 & 0xff)) break;
      }
      else {
        uVar1 = uVar13 & 0xff;
        if ((uint)(byte)(&DAT_75b17218b1b0efa0)[uVar16] !=
            ((0x34 << (ulong)(uVar13 - ((uVar1 / 5) * 4 + uVar1 / 5) & 0x1f) ^
              0x12U >> (ulong)(uVar13 + ((uVar13 - (uVar1 * 0x25 >> 8) >> 1 & 0x7f) +
                                         (uVar1 * 0x25 >> 8) >> 2) * -7 & 0x1f) ^
             (uint)(&DAT_0012e890)[uVar16]) & 0xff)) break;
      }
      uVar8 = uVar16 + 1;
      bVar3 = uVar16 < 10;
      uVar4 = uVar4 + 3;
      iVar10 = iVar10 + -5;
      uVar16 = uVar8;
    } while (uVar8 != 0xb);
    if ((!bVar3) && (sVar6 = strlen(&DAT_75b17218b1b0efa0), sVar6 == 10)) {
      iVar10 = 0;
      uVar4 = 0;
      bVar3 = true;
      uVar16 = 0;
      do {
        uVar8 = uVar16 & 3;
        uVar13 = (uint)uVar16;
        if (uVar8 == 2) {
          uVar13 = (uint)(&DAT_0012e8e8)[uVar16] ^ uVar13 + 0xef;
          if ((uint)(byte)(&DAT_75b17218b1b0efa0)[uVar16] != ((uVar13 << 6 | uVar13 >> 2) & 0xff))
          break;
        }
        else if (uVar8 == 1) {
          if ((iVar10 + (int)(&DAT_0012e8e8)[uVar16] & 0xffU ^ 0x32) !=
              (uint)(byte)(&DAT_75b17218b1b0efa0)[uVar16]) break;
        }
        else if (uVar8 == 0) {
          uVar8 = uVar4 ^ (&DAT_0012e8e8)[uVar16] ^ 0xab;
          auVar2._8_8_ = 0;
          auVar2._0_8_ = uVar8;
          iVar9 = SUB164(auVar2 * ZEXT816(0x2492492492492493),8);
          if ((uint)(byte)(&DAT_75b17218b1b0efa0)[uVar16] !=
              (iVar9 + ((uint)((int)uVar8 - iVar9) >> 1) >> 2 & 0xff)) break;
        }
        else {
          uVar1 = uVar13 & 0xff;
          if ((uint)(byte)(&DAT_75b17218b1b0efa0)[uVar16] !=
              ((0x34 << (ulong)(uVar13 - ((uVar1 / 5) * 4 + uVar1 / 5) & 0x1f) ^
                0x12U >> (ulong)(uVar13 + ((uVar13 - (uVar1 * 0x25 >> 8) >> 1 & 0x7f) +
                                           (uVar1 * 0x25 >> 8) >> 2) * -7 & 0x1f) ^
               (uint)(&DAT_0012e8e8)[uVar16]) & 0xff)) break;
        }
        uVar8 = uVar16 + 1;
        bVar3 = uVar16 < 9;
        uVar4 = uVar4 + 3;
        iVar10 = iVar10 + -5;
        uVar16 = uVar8;
      } while (uVar8 != 10);
      if ((((((!bVar3) && (sVar6 = strlen(&DAT_75b17218b1b0efa0), sVar6 == 4)) &&
            (DAT_75b17218b1b0efa0 == 'l')) &&
           ((DAT_75b17218b1b0efa1 == 'o' && (DAT_75b17218b1b0efa2 == 'a')))) &&
          ((DAT_75b17218b1b0efa3 == 'd' &&
           ((sVar6 = strlen(&DAT_75b17218b1b0efa0), sVar6 == 4 && (DAT_75b17218b1b0efa0 == '('))))))
         && ((DAT_75b17218b1b0efa1 == 'i' &&
             ((DAT_75b17218b1b0efa2 == ')' && (DAT_75b17218b1b0efa3 == '[')))))) {
        uVar4 = sysconf(0x27);
        lVar14 = 0;
        do {
          pcVar11 = (code *)0xde;
          CallSupervisor(0);
          local_a0[lVar14] = (code *)0x0;
          if (3 < uVar4) {
                    /* WARNING: Could not recover jumptable at 0x001f480c. Too many branches */
                    /* WARNING: Treating indirect jump as call */
            uVar5 = (*(code *)((long)(int)switchD_001f480c::switchdataD_001125e4 + 0x1f4800))
                              (0xffffffff);
            return uVar5;
          }
          if (lVar14 != 0) {
            pcVar11 = local_a0[(int)lVar14 - 1];
            *(uint *)pcVar11 = (uint)-(int)pcVar11 >> 2 & 0x3ffffff | 0x14000000;
          }
          auVar17 = FUN_0091ad58(pcVar11,0,uVar4,7,0x22,0xffffffffffffffff,0);
          lVar14 = lVar14 + 1;
        } while (lVar14 != 7);
        (*local_a0[0])(auVar17._0_8_,auVar17._8_8_);
        lVar7 = sysconf(0x27);
        plVar12 = (long *)0x0;
        lVar14 = 0;
        CallSupervisor(0);
        uVar4 = _DAT_00110a70;
        uVar16 = _UNK_00110a78;
        do {
          if (uVar4 < 0xa9) {
            *plVar12 = lVar14;
          }
          if (uVar16 < 0xa9) {
            plVar12[1] = lVar14 + 0x520280d201a40091;
          }
          uVar4 = uVar4 + 2;
          uVar16 = uVar16 + 2;
          lVar14 = lVar14 + -0x5bfafe5bfcb7fede;
          plVar12 = plVar12 + 2;
        } while (plVar12 != (long *)0x550);
        lRam0000000000000550 = 0x224000d1e31f80d2 << (DAT_00928048 & 0x3f);
        lRam0000000000000560 = -0x20ddfa51bc7eae2b << (DAT_00928058 & 0x3f);
        uRam0000000000000558 = (ulong)DAT_00928050 | 0x452de038a8500702;
        lRam0000000000000568 = -0xbfcff552efaff6c << (DAT_00928060 & 0x3f);
        lRam0000000000000578 = -0x1ffceb558a030069 << (DAT_00928058 & 0x3f);
        uRam0000000000000570 = (ulong)DAT_00928050 | 0xeb03d1d3a9d59bd2;
        lRam0000000000000580 = -0xbb0f7560284f657 << (DAT_00928060 & 0x3f);
        uRam0000000000000588 = (ulong)DAT_00928050 | 0xc4f20c94ff8302d1;
        lRam0000000000000590 = -0x6b3dff6e1ffcec56 << (DAT_00928068 & 0x3f);
        lRam0000000000000598 = -0x80fec68804f46c << (DAT_00928060 & 0x3f);
        lRam00000000000005a0 = -0x191201681917af4b << (DAT_00928058 & 0x3f);
        lRam00000000000005a8 = 0x1088052e30313aa << (DAT_00928060 & 0x3f);
        lRam00000000000005b0 = -0x9fce0550ab0fe57 << (DAT_00928068 & 0x3f);
        uRam00000000000005b8 = (ulong)DAT_00928050 | 0xa6e6e8cac7f47ed3;
        lRam00000000000005c0 = -0x1efcea550080ff57 << (DAT_00928068 & 0x3f);
        lRam00000000000005c8 = -0x1917f2e84bd5bf47 << (DAT_00928058 & 0x3f);
        uRam00000000000005d0 =
             (DAT_00928070 | (ulong)DAT_00928050 & 0xc4f20c94ff8302d1) & DAT_00928078;
        uRam00000000000005d8 = DAT_00928080 & (DAT_00928078 | DAT_00928060 & 0xc4f20c94ff8302d1);
        uRam00000000000005e0 = DAT_00928088 & (DAT_00928080 | DAT_00928068 & 0xc4f20c94ff8302d1);
        uRam00000000000005e8 =
             (DAT_00928088 | DAT_00928058 & 0xc4f20c94ff8302d1) & (ulong)DAT_00928050;
        lVar14 = (*(code *)0x0)(0,lVar7,7,0x22,0xffffffffffffffff,0,0);
        if (lVar14 == 0) {
          local_a0[0] = (code *)&DAT_eadbeef0;
        }
        else {
          DAT_00928048 = 0x157d8ba09a9d4767;
          DAT_00928060 = 0x7f312dfd0f335221;
          DAT_00928068 = 0xe5b661740ab652b2;
          DAT_00928058 = 0x4adb13815e795343;
          local_a0[0] = (code *)&DAT_bc72622c;
          CallSupervisor(0);
          DAT_00928050 = puVar15;
        }
        uVar4 = *(ulong *)local_a0[0];
        CallSupervisor(0);
        lVar14 = 0;
        do {
          pcVar11 = (code *)0xde;
          CallSupervisor(0);
          local_a0[lVar14] = (code *)0x0;
          if (3 < uVar4) {
                    /* WARNING: Could not recover jumptable at 0x001f4c90. Too many branches */
                    /* WARNING: Treating indirect jump as call */
            uVar5 = (*(code *)((long)(int)switchD_001f4c90::switchdataD_001125f4 + 0x1f4c84))
                              (0xffffffff);
            return uVar5;
          }
          if (lVar14 != 0) {
            pcVar11 = local_a0[(int)lVar14 - 1];
            *(uint *)pcVar11 = (uint)-(int)pcVar11 >> 2 & 0x3ffffff | 0x14000000;
          }
          auVar17 = FUN_0091ad58(pcVar11,0,uVar4,7,0x22,0xffffffffffffffff,0);
          lVar14 = lVar14 + 1;
        } while (lVar14 != 7);
        (*local_a0[0])(auVar17._0_8_,auVar17._8_8_);
        lVar7 = sysconf(0x27);
        plVar12 = (long *)0x0;
        lVar14 = 0;
        CallSupervisor(0);
        uVar4 = _DAT_00110a70;
        uVar16 = _UNK_00110a78;
        do {
          if (uVar4 < 0xa9) {
            *plVar12 = lVar14;
          }
          if (uVar16 < 0xa9) {
            plVar12[1] = lVar14 + 0x520280d201a40091;
          }
          uVar4 = uVar4 + 2;
          uVar16 = uVar16 + 2;
          lVar14 = lVar14 + -0x5bfafe5bfcb7fede;
          plVar12 = plVar12 + 2;
        } while (plVar12 != (long *)0x550);
        lRam0000000000000550 = 0x224000d1e31f80d2 << (DAT_00928048 & 0x3f);
        lRam0000000000000560 = -0x20ddfa51bc7eae2b << (DAT_00928058 & 0x3f);
        uRam0000000000000558 = (ulong)DAT_00928050 | 0x452de038a8500702;
        lRam0000000000000568 = -0xbfcff552efaff6c << (DAT_00928060 & 0x3f);
        lRam0000000000000578 = -0x1ffceb558a030069 << (DAT_00928058 & 0x3f);
        uRam0000000000000570 = (ulong)DAT_00928050 | 0xeb03d1d3a9d59bd2;
        lRam0000000000000580 = -0xbb0f7560284f657 << (DAT_00928060 & 0x3f);
        uRam0000000000000588 = (ulong)DAT_00928050 | 0xc4f20c94ff8302d1;
        lRam0000000000000590 = -0x6b3dff6e1ffcec56 << (DAT_00928068 & 0x3f);
        lRam0000000000000598 = -0x80fec68804f46c << (DAT_00928060 & 0x3f);
        lRam00000000000005a0 = -0x191201681917af4b << (DAT_00928058 & 0x3f);
        lRam00000000000005a8 = 0x1088052e30313aa << (DAT_00928060 & 0x3f);
        lRam00000000000005b0 = -0x9fce0550ab0fe57 << (DAT_00928068 & 0x3f);
        uRam00000000000005b8 = (ulong)DAT_00928050 | 0xa6e6e8cac7f47ed3;
        lRam00000000000005c0 = -0x1efcea550080ff57 << (DAT_00928068 & 0x3f);
        lRam00000000000005c8 = -0x1917f2e84bd5bf47 << (DAT_00928058 & 0x3f);
        uRam00000000000005d0 =
             (DAT_00928070 | (ulong)DAT_00928050 & 0xc4f20c94ff8302d1) & DAT_00928078;
        uRam00000000000005d8 = DAT_00928080 & (DAT_00928078 | DAT_00928060 & 0xc4f20c94ff8302d1);
        uRam00000000000005e0 = DAT_00928088 & (DAT_00928080 | DAT_00928068 & 0xc4f20c94ff8302d1);
        uRam00000000000005e8 =
             (DAT_00928088 | DAT_00928058 & 0xc4f20c94ff8302d1) & (ulong)DAT_00928050;
        lVar14 = (*(code *)0x0)(0,lVar7,7,0x22,0xffffffffffffffff,0,0);
        if (lVar14 == 0) {
          local_a0[0] = (code *)&DAT_c989addf;
        }
        else {
          DAT_00928048 = 0x157d8ba09a9d4767;
          DAT_00928060 = 0x7f312dfd0f335221;
          DAT_00928068 = 0xe5b661740ab652b2;
          DAT_00928058 = 0x4adb13815e795343;
          local_a0[0] = (code *)&DAT_bc72622c;
          CallSupervisor(0);
          DAT_00928050 = puVar15;
        }
        uVar4 = *(ulong *)local_a0[0];
        CallSupervisor(0);
        lVar14 = 0;
        do {
          pcVar11 = (code *)0xde;
          CallSupervisor(0);
          local_a0[lVar14] = (code *)0x0;
          if (3 < uVar4) {
                    /* WARNING: Could not recover jumptable at 0x001f5114. Too many branches */
                    /* WARNING: Treating indirect jump as call */
            uVar5 = (*(code *)((long)(int)switchD_001f5114::switchdataD_00112604 + 0x1f5108))
                              (0xffffffff);
            return uVar5;
          }
          if (lVar14 != 0) {
            pcVar11 = local_a0[(int)lVar14 - 1];
            *(uint *)pcVar11 = (uint)-(int)pcVar11 >> 2 & 0x3ffffff | 0x14000000;
          }
          auVar17 = FUN_0091ad58(pcVar11,0,uVar4,7,0x22,0xffffffffffffffff,0);
          lVar14 = lVar14 + 1;
        } while (lVar14 != 7);
        (*local_a0[0])(auVar17._0_8_,auVar17._8_8_);
        lVar7 = sysconf(0x27);
        plVar12 = (long *)0x0;
        lVar14 = 0;
        CallSupervisor(0);
        uVar4 = _DAT_00110a70;
        uVar16 = _UNK_00110a78;
        do {
          if (uVar4 < 0xa9) {
            *plVar12 = lVar14;
          }
          if (uVar16 < 0xa9) {
            plVar12[1] = lVar14 + 0x520280d201a40091;
          }
          uVar4 = uVar4 + 2;
          uVar16 = uVar16 + 2;
          lVar14 = lVar14 + -0x5bfafe5bfcb7fede;
          plVar12 = plVar12 + 2;
        } while (plVar12 != (long *)0x550);
        lRam0000000000000550 = 0x224000d1e31f80d2 << (DAT_00928048 & 0x3f);
        lRam0000000000000560 = -0x20ddfa51bc7eae2b << (DAT_00928058 & 0x3f);
        uRam0000000000000558 = (ulong)DAT_00928050 | 0x452de038a8500702;
        lRam0000000000000568 = -0xbfcff552efaff6c << (DAT_00928060 & 0x3f);
        lRam0000000000000578 = -0x1ffceb558a030069 << (DAT_00928058 & 0x3f);
        uRam0000000000000570 = (ulong)DAT_00928050 | 0xeb03d1d3a9d59bd2;
        lRam0000000000000580 = -0xbb0f7560284f657 << (DAT_00928060 & 0x3f);
        uRam0000000000000588 = (ulong)DAT_00928050 | 0xc4f20c94ff8302d1;
        lRam0000000000000590 = -0x6b3dff6e1ffcec56 << (DAT_00928068 & 0x3f);
        lRam0000000000000598 = -0x80fec68804f46c << (DAT_00928060 & 0x3f);
        lRam00000000000005a0 = -0x191201681917af4b << (DAT_00928058 & 0x3f);
        lRam00000000000005a8 = 0x1088052e30313aa << (DAT_00928060 & 0x3f);
        lRam00000000000005b0 = -0x9fce0550ab0fe57 << (DAT_00928068 & 0x3f);
        uRam00000000000005b8 = (ulong)DAT_00928050 | 0xa6e6e8cac7f47ed3;
        lRam00000000000005c0 = -0x1efcea550080ff57 << (DAT_00928068 & 0x3f);
        lRam00000000000005c8 = -0x1917f2e84bd5bf47 << (DAT_00928058 & 0x3f);
        uRam00000000000005d0 =
             (DAT_00928070 | (ulong)DAT_00928050 & 0xc4f20c94ff8302d1) & DAT_00928078;
        uRam00000000000005d8 = DAT_00928080 & (DAT_00928078 | DAT_00928060 & 0xc4f20c94ff8302d1);
        uRam00000000000005e0 = DAT_00928088 & (DAT_00928080 | DAT_00928068 & 0xc4f20c94ff8302d1);
        uRam00000000000005e8 =
             (DAT_00928088 | DAT_00928058 & 0xc4f20c94ff8302d1) & (ulong)DAT_00928050;
        lVar14 = (*(code *)0x0)(0,lVar7,7,0x22,0xffffffffffffffff,0,0);
        if (lVar14 == 0) {
          local_a0[0] = (code *)&DAT_a8376cce;
        }
        else {
          DAT_00928048 = 0x157d8ba09a9d4767;
          DAT_00928060 = 0x7f312dfd0f335221;
          DAT_00928068 = 0xe5b661740ab652b2;
          DAT_00928058 = 0x4adb13815e795343;
          local_a0[0] = (code *)&DAT_bc72622c;
          CallSupervisor(0);
          DAT_00928050 = puVar15;
        }
        uVar4 = *(ulong *)local_a0[0];
        CallSupervisor(0);
        lVar14 = 0;
        do {
          pcVar11 = (code *)0xde;
          CallSupervisor(0);
          local_a0[lVar14] = (code *)0x0;
          if (3 < uVar4) {
                    /* WARNING: Could not recover jumptable at 0x001f5598. Too many branches */
                    /* WARNING: Treating indirect jump as call */
            uVar5 = (*(code *)((long)(int)switchD_001f5598::switchdataD_00112614 + 0x1f558c))
                              (0xffffffff);
            return uVar5;
          }
          if (lVar14 != 0) {
            pcVar11 = local_a0[(int)lVar14 - 1];
            *(uint *)pcVar11 = (uint)-(int)pcVar11 >> 2 & 0x3ffffff | 0x14000000;
          }
          auVar17 = FUN_0091ad58(pcVar11,0,uVar4,7,0x22,0xffffffffffffffff,0);
          lVar14 = lVar14 + 1;
        } while (lVar14 != 7);
        (*local_a0[0])(auVar17._0_8_,auVar17._8_8_);
        lVar7 = sysconf(0x27);
        plVar12 = (long *)0x0;
        lVar14 = 0;
        CallSupervisor(0);
        uVar4 = _DAT_00110a70;
        uVar16 = _UNK_00110a78;
        do {
          if (uVar4 < 0xa9) {
            *plVar12 = lVar14;
          }
          if (uVar16 < 0xa9) {
            plVar12[1] = lVar14 + 0x520280d201a40091;
          }
          uVar4 = uVar4 + 2;
          uVar16 = uVar16 + 2;
          lVar14 = lVar14 + -0x5bfafe5bfcb7fede;
          plVar12 = plVar12 + 2;
        } while (plVar12 != (long *)0x550);
        lRam0000000000000550 = 0x224000d1e31f80d2 << (DAT_00928048 & 0x3f);
        lRam0000000000000560 = -0x20ddfa51bc7eae2b << (DAT_00928058 & 0x3f);
        uRam0000000000000558 = (ulong)DAT_00928050 | 0x452de038a8500702;
        lRam0000000000000568 = -0xbfcff552efaff6c << (DAT_00928060 & 0x3f);
        lRam0000000000000578 = -0x1ffceb558a030069 << (DAT_00928058 & 0x3f);
        uRam0000000000000570 = (ulong)DAT_00928050 | 0xeb03d1d3a9d59bd2;
        lRam0000000000000580 = -0xbb0f7560284f657 << (DAT_00928060 & 0x3f);
        uRam0000000000000588 = (ulong)DAT_00928050 | 0xc4f20c94ff8302d1;
        lRam0000000000000590 = -0x6b3dff6e1ffcec56 << (DAT_00928068 & 0x3f);
        lRam0000000000000598 = -0x80fec68804f46c << (DAT_00928060 & 0x3f);
        lRam00000000000005a0 = -0x191201681917af4b << (DAT_00928058 & 0x3f);
        lRam00000000000005a8 = 0x1088052e30313aa << (DAT_00928060 & 0x3f);
        lRam00000000000005b0 = -0x9fce0550ab0fe57 << (DAT_00928068 & 0x3f);
        uRam00000000000005b8 = (ulong)DAT_00928050 | 0xa6e6e8cac7f47ed3;
        lRam00000000000005c0 = -0x1efcea550080ff57 << (DAT_00928068 & 0x3f);
        lRam00000000000005c8 = -0x1917f2e84bd5bf47 << (DAT_00928058 & 0x3f);
        uRam00000000000005d0 =
             (DAT_00928070 | (ulong)DAT_00928050 & 0xc4f20c94ff8302d1) & DAT_00928078;
        uRam00000000000005d8 = DAT_00928080 & (DAT_00928078 | DAT_00928060 & 0xc4f20c94ff8302d1);
        uRam00000000000005e0 = DAT_00928088 & (DAT_00928080 | DAT_00928068 & 0xc4f20c94ff8302d1);
        uRam00000000000005e8 =
             (DAT_00928088 | DAT_00928058 & 0xc4f20c94ff8302d1) & (ulong)DAT_00928050;
        lVar14 = (*(code *)0x0)(0,lVar7,7,0x22,0xffffffffffffffff,0,0);
        if (lVar14 == 0) {
          local_a0[0] = (code *)&DAT_86e52bbd;
        }
        else {
          DAT_00928048 = 0x157d8ba09a9d4767;
          DAT_00928060 = 0x7f312dfd0f335221;
          DAT_00928068 = 0xe5b661740ab652b2;
          DAT_00928058 = 0x4adb13815e795343;
          local_a0[0] = (code *)&DAT_bc72622c;
          CallSupervisor(0);
          DAT_00928050 = puVar15;
        }
        uVar4 = *(ulong *)local_a0[0];
        CallSupervisor(0);
        goto LAB_001f5990;
      }
    }
  }
  uVar4 = sysconf(0x27);
LAB_001f5990:
  lVar14 = 0;
  do {
    pcVar11 = (code *)0xde;
    CallSupervisor(0);
    local_a0[lVar14] = (code *)0x0;
    if (3 < uVar4) {
                    /* WARNING: Could not recover jumptable at 0x001f5a04. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      uVar5 = (*(code *)((long)(int)switchD_001f5a04::switchdataD_00112624 + 0x1f59f8))(0xffffffff);
      return uVar5;
    }
    if (lVar14 != 0) {
      pcVar11 = local_a0[(int)lVar14 - 1];
      *(uint *)pcVar11 = (uint)-(int)pcVar11 >> 2 & 0x3ffffff | 0x14000000;
    }
    auVar17 = FUN_0091ad58(pcVar11,0,uVar4,7,0x22,0xffffffffffffffff,0);
    lVar14 = lVar14 + 1;
  } while (lVar14 != 7);
  (*local_a0[0])(auVar17._0_8_,auVar17._8_8_);
  lVar7 = sysconf(0x27);
  plVar12 = (long *)0x0;
  lVar14 = 0;
  CallSupervisor(0);
  uVar4 = _DAT_00110a70;
  uVar16 = _UNK_00110a78;
  do {
    if (uVar4 < 0xa9) {
      *plVar12 = lVar14;
    }
    if (uVar16 < 0xa9) {
      plVar12[1] = lVar14 + 0x520280d201a40091;
    }
    uVar4 = uVar4 + 2;
    uVar16 = uVar16 + 2;
    lVar14 = lVar14 + -0x5bfafe5bfcb7fede;
    plVar12 = plVar12 + 2;
  } while (plVar12 != (long *)0x550);
  lRam0000000000000550 = 0x224000d1e31f80d2 << (DAT_00928048 & 0x3f);
  lRam0000000000000560 = -0x20ddfa51bc7eae2b << (DAT_00928058 & 0x3f);
  uRam0000000000000558 = (ulong)DAT_00928050 | 0x452de038a8500702;
  lRam0000000000000568 = -0xbfcff552efaff6c << (DAT_00928060 & 0x3f);
  lRam0000000000000578 = -0x1ffceb558a030069 << (DAT_00928058 & 0x3f);
  uRam0000000000000570 = (ulong)DAT_00928050 | 0xeb03d1d3a9d59bd2;
  lRam0000000000000580 = -0xbb0f7560284f657 << (DAT_00928060 & 0x3f);
  uRam0000000000000588 = (ulong)DAT_00928050 | 0xc4f20c94ff8302d1;
  lRam0000000000000590 = -0x6b3dff6e1ffcec56 << (DAT_00928068 & 0x3f);
  lRam0000000000000598 = -0x80fec68804f46c << (DAT_00928060 & 0x3f);
  lRam00000000000005a0 = -0x191201681917af4b << (DAT_00928058 & 0x3f);
  lRam00000000000005a8 = 0x1088052e30313aa << (DAT_00928060 & 0x3f);
  lRam00000000000005b0 = -0x9fce0550ab0fe57 << (DAT_00928068 & 0x3f);
  uRam00000000000005b8 = (ulong)DAT_00928050 | 0xa6e6e8cac7f47ed3;
  lRam00000000000005c0 = -0x1efcea550080ff57 << (DAT_00928068 & 0x3f);
  lRam00000000000005c8 = -0x1917f2e84bd5bf47 << (DAT_00928058 & 0x3f);
  uRam00000000000005d0 = (DAT_00928070 | (ulong)DAT_00928050 & 0xc4f20c94ff8302d1) & DAT_00928078;
  uRam00000000000005d8 = DAT_00928080 & (DAT_00928078 | DAT_00928060 & 0xc4f20c94ff8302d1);
  uRam00000000000005e0 = DAT_00928088 & (DAT_00928080 | DAT_00928068 & 0xc4f20c94ff8302d1);
  uRam00000000000005e8 = (DAT_00928088 | DAT_00928058 & 0xc4f20c94ff8302d1) & (ulong)DAT_00928050;
  lVar14 = (*(code *)0x0)(0,lVar7,7,0x22,0xffffffffffffffff,0,0);
  if (lVar14 == 0) {
    local_a0[0] = (code *)&DAT_e049e668;
  }
  else {
    DAT_00928050 = &DAT_75b17218b1b0efa0;
    DAT_00928068 = 0xe5b661740ab652b2;
    DAT_00928058 = 0x4adb13815e795343;
    DAT_00928048 = 0x157d8ba09a9d4767;
    DAT_00928060 = 0x7f312dfd0f335221;
    local_a0[0] = (code *)&DAT_bc72622c;
    CallSupervisor(0);
  }
  uVar4 = *(ulong *)local_a0[0];
  CallSupervisor(0);
  lVar14 = 0;
  do {
    pcVar11 = (code *)0xde;
    CallSupervisor(0);
    local_a0[lVar14] = (code *)0x0;
    if (3 < uVar4) {
                    /* WARNING: Could not recover jumptable at 0x001f5e78. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      uVar5 = (*(code *)((long)(int)switchD_001f5e78::switchdataD_00112634 + 0x1f5e6c))(0xffffffff);
      return uVar5;
    }
    if (lVar14 != 0) {
      pcVar11 = local_a0[(int)lVar14 - 1];
      *(uint *)pcVar11 = (uint)-(int)pcVar11 >> 2 & 0x3ffffff | 0x14000000;
    }
    auVar17 = FUN_0091ad58(pcVar11,0,uVar4,7,0x22,0xffffffffffffffff,0);
    lVar14 = lVar14 + 1;
  } while (lVar14 != 7);
  (*local_a0[0])(auVar17._0_8_,auVar17._8_8_);
  lVar7 = sysconf(0x27);
  plVar12 = (long *)0x0;
  lVar14 = 0;
  CallSupervisor(0);
  uVar4 = _DAT_00110a70;
  uVar16 = _UNK_00110a78;
  do {
    if (uVar4 < 0xa9) {
      *plVar12 = lVar14;
    }
    if (uVar16 < 0xa9) {
      plVar12[1] = lVar14 + 0x520280d201a40091;
    }
    uVar4 = uVar4 + 2;
    uVar16 = uVar16 + 2;
    lVar14 = lVar14 + -0x5bfafe5bfcb7fede;
    plVar12 = plVar12 + 2;
  } while (plVar12 != (long *)0x550);
  lRam0000000000000550 = 0x224000d1e31f80d2 << (DAT_00928048 & 0x3f);
  lRam0000000000000560 = -0x20ddfa51bc7eae2b << (DAT_00928058 & 0x3f);
  uRam0000000000000558 = (ulong)DAT_00928050 | 0x452de038a8500702;
  lRam0000000000000568 = -0xbfcff552efaff6c << (DAT_00928060 & 0x3f);
  lRam0000000000000578 = -0x1ffceb558a030069 << (DAT_00928058 & 0x3f);
  uRam0000000000000570 = (ulong)DAT_00928050 | 0xeb03d1d3a9d59bd2;
  lRam0000000000000580 = -0xbb0f7560284f657 << (DAT_00928060 & 0x3f);
  uRam0000000000000588 = (ulong)DAT_00928050 | 0xc4f20c94ff8302d1;
  lRam0000000000000590 = -0x6b3dff6e1ffcec56 << (DAT_00928068 & 0x3f);
  lRam0000000000000598 = -0x80fec68804f46c << (DAT_00928060 & 0x3f);
  lRam00000000000005a0 = -0x191201681917af4b << (DAT_00928058 & 0x3f);
  lRam00000000000005a8 = 0x1088052e30313aa << (DAT_00928060 & 0x3f);
  lRam00000000000005b0 = -0x9fce0550ab0fe57 << (DAT_00928068 & 0x3f);
  uRam00000000000005b8 = (ulong)DAT_00928050 | 0xa6e6e8cac7f47ed3;
  lRam00000000000005c0 = -0x1efcea550080ff57 << (DAT_00928068 & 0x3f);
  lRam00000000000005c8 = -0x1917f2e84bd5bf47 << (DAT_00928058 & 0x3f);
  uRam00000000000005d0 = (DAT_00928070 | (ulong)DAT_00928050 & 0xc4f20c94ff8302d1) & DAT_00928078;
  uRam00000000000005d8 = DAT_00928080 & (DAT_00928078 | DAT_00928060 & 0xc4f20c94ff8302d1);
  uRam00000000000005e0 = DAT_00928088 & (DAT_00928080 | DAT_00928068 & 0xc4f20c94ff8302d1);
  uRam00000000000005e8 = (DAT_00928088 | DAT_00928058 & 0xc4f20c94ff8302d1) & (ulong)DAT_00928050;
  lVar14 = (*(code *)0x0)(0,lVar7,7,0x22,0xffffffffffffffff,0,0);
  if (lVar14 == 0) {
    local_a0[0] = (code *)&DAT_bef7a557;
  }
  else {
    DAT_00928050 = &DAT_75b17218b1b0efa0;
    DAT_00928068 = 0xe5b661740ab652b2;
    DAT_00928058 = 0x4adb13815e795343;
    DAT_00928048 = 0x157d8ba09a9d4767;
    DAT_00928060 = 0x7f312dfd0f335221;
    local_a0[0] = (code *)&DAT_bc72622c;
    CallSupervisor(0);
  }
  uVar4 = *(ulong *)local_a0[0];
  CallSupervisor(0);
  lVar14 = 0;
  do {
    pcVar11 = (code *)0xde;
    CallSupervisor(0);
    local_a0[lVar14] = (code *)0x0;
    if (3 < uVar4) {
                    /* WARNING: Could not recover jumptable at 0x001f62ec. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      uVar5 = (*(code *)((long)(int)switchD_001f62ec::switchdataD_00112644 + 0x1f62e0))(0xffffffff);
      return uVar5;
    }
    if (lVar14 != 0) {
      pcVar11 = local_a0[(int)lVar14 - 1];
      *(uint *)pcVar11 = (uint)-(int)pcVar11 >> 2 & 0x3ffffff | 0x14000000;
    }
    auVar17 = FUN_0091ad58(pcVar11,0,uVar4,7,0x22,0xffffffffffffffff,0);
    lVar14 = lVar14 + 1;
  } while (lVar14 != 7);
  (*local_a0[0])(auVar17._0_8_,auVar17._8_8_);
  lVar7 = sysconf(0x27);
  plVar12 = (long *)0x0;
  lVar14 = 0;
  CallSupervisor(0);
  uVar4 = _DAT_00110a70;
  uVar16 = _UNK_00110a78;
  do {
    if (uVar4 < 0xa9) {
      *plVar12 = lVar14;
    }
    if (uVar16 < 0xa9) {
      plVar12[1] = lVar14 + 0x520280d201a40091;
    }
    uVar4 = uVar4 + 2;
    uVar16 = uVar16 + 2;
    lVar14 = lVar14 + -0x5bfafe5bfcb7fede;
    plVar12 = plVar12 + 2;
  } while (plVar12 != (long *)0x550);
  lRam0000000000000550 = 0x224000d1e31f80d2 << (DAT_00928048 & 0x3f);
  lRam0000000000000560 = -0x20ddfa51bc7eae2b << (DAT_00928058 & 0x3f);
  uRam0000000000000558 = (ulong)DAT_00928050 | 0x452de038a8500702;
  lRam0000000000000568 = -0xbfcff552efaff6c << (DAT_00928060 & 0x3f);
  lRam0000000000000578 = -0x1ffceb558a030069 << (DAT_00928058 & 0x3f);
  uRam0000000000000570 = (ulong)DAT_00928050 | 0xeb03d1d3a9d59bd2;
  lRam0000000000000580 = -0xbb0f7560284f657 << (DAT_00928060 & 0x3f);
  uRam0000000000000588 = (ulong)DAT_00928050 | 0xc4f20c94ff8302d1;
  lRam0000000000000590 = -0x6b3dff6e1ffcec56 << (DAT_00928068 & 0x3f);
  lRam0000000000000598 = -0x80fec68804f46c << (DAT_00928060 & 0x3f);
  lRam00000000000005a0 = -0x191201681917af4b << (DAT_00928058 & 0x3f);
  lRam00000000000005a8 = 0x1088052e30313aa << (DAT_00928060 & 0x3f);
  lRam00000000000005b0 = -0x9fce0550ab0fe57 << (DAT_00928068 & 0x3f);
  uRam00000000000005b8 = (ulong)DAT_00928050 | 0xa6e6e8cac7f47ed3;
  lRam00000000000005c0 = -0x1efcea550080ff57 << (DAT_00928068 & 0x3f);
  lRam00000000000005c8 = -0x1917f2e84bd5bf47 << (DAT_00928058 & 0x3f);
  uRam00000000000005d0 = (DAT_00928070 | (ulong)DAT_00928050 & 0xc4f20c94ff8302d1) & DAT_00928078;
  uRam00000000000005d8 = DAT_00928080 & (DAT_00928078 | DAT_00928060 & 0xc4f20c94ff8302d1);
  uRam00000000000005e0 = DAT_00928088 & (DAT_00928080 | DAT_00928068 & 0xc4f20c94ff8302d1);
  uRam00000000000005e8 = (DAT_00928088 | DAT_00928058 & 0xc4f20c94ff8302d1) & (ulong)DAT_00928050;
  lVar14 = (*(code *)0x0)(0,lVar7,7,0x22,0xffffffffffffffff,0,0);
  if (lVar14 == 0) {
    local_a0[0] = (code *)&DAT_9da56446;
  }
  else {
    DAT_00928050 = &DAT_75b17218b1b0efa0;
    DAT_00928068 = 0xe5b661740ab652b2;
    DAT_00928058 = 0x4adb13815e795343;
    DAT_00928048 = 0x157d8ba09a9d4767;
    DAT_00928060 = 0x7f312dfd0f335221;
    local_a0[0] = (code *)&DAT_bc72622c;
    CallSupervisor(0);
  }
  uVar4 = *(ulong *)local_a0[0];
  CallSupervisor(0);
  lVar14 = 0;
  do {
    pcVar11 = (code *)0xde;
    CallSupervisor(0);
    local_a0[lVar14] = (code *)0x0;
    if (3 < uVar4) {
                    /* WARNING: Could not recover jumptable at 0x001f6760. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      uVar5 = (*(code *)((long)(int)switchD_001f6760::switchdataD_00112654 + 0x1f6754))(0xffffffff);
      return uVar5;
    }
    if (lVar14 != 0) {
      pcVar11 = local_a0[(int)lVar14 - 1];
      *(uint *)pcVar11 = (uint)-(int)pcVar11 >> 2 & 0x3ffffff | 0x14000000;
    }
    auVar17 = FUN_0091ad58(pcVar11,0,uVar4,7,0x22,0xffffffffffffffff,0);
    lVar14 = lVar14 + 1;
  } while (lVar14 != 7);
  (*local_a0[0])(auVar17._0_8_,auVar17._8_8_);
  lVar7 = sysconf(0x27);
  plVar12 = (long *)0x0;
  lVar14 = 0;
  CallSupervisor(0);
  uVar4 = _DAT_00110a70;
  uVar16 = _UNK_00110a78;
  do {
    if (uVar4 < 0xa9) {
      *plVar12 = lVar14;
    }
    if (uVar16 < 0xa9) {
      plVar12[1] = lVar14 + 0x520280d201a40091;
    }
    uVar4 = uVar4 + 2;
    uVar16 = uVar16 + 2;
    lVar14 = lVar14 + -0x5bfafe5bfcb7fede;
    plVar12 = plVar12 + 2;
  } while (plVar12 != (long *)0x550);
  lRam0000000000000550 = 0x224000d1e31f80d2 << (DAT_00928048 & 0x3f);
  lRam0000000000000560 = -0x20ddfa51bc7eae2b << (DAT_00928058 & 0x3f);
  uRam0000000000000558 = (ulong)DAT_00928050 | 0x452de038a8500702;
  lRam0000000000000568 = -0xbfcff552efaff6c << (DAT_00928060 & 0x3f);
  lRam0000000000000578 = -0x1ffceb558a030069 << (DAT_00928058 & 0x3f);
  uRam0000000000000570 = (ulong)DAT_00928050 | 0xeb03d1d3a9d59bd2;
  lRam0000000000000580 = -0xbb0f7560284f657 << (DAT_00928060 & 0x3f);
  uRam0000000000000588 = (ulong)DAT_00928050 | 0xc4f20c94ff8302d1;
  lRam0000000000000590 = -0x6b3dff6e1ffcec56 << (DAT_00928068 & 0x3f);
  lRam0000000000000598 = -0x80fec68804f46c << (DAT_00928060 & 0x3f);
  lRam00000000000005a0 = -0x191201681917af4b << (DAT_00928058 & 0x3f);
  lRam00000000000005a8 = 0x1088052e30313aa << (DAT_00928060 & 0x3f);
  lRam00000000000005b0 = -0x9fce0550ab0fe57 << (DAT_00928068 & 0x3f);
  uRam00000000000005b8 = (ulong)DAT_00928050 | 0xa6e6e8cac7f47ed3;
  lRam00000000000005c0 = -0x1efcea550080ff57 << (DAT_00928068 & 0x3f);
  lRam00000000000005c8 = -0x1917f2e84bd5bf47 << (DAT_00928058 & 0x3f);
  uRam00000000000005d0 = (DAT_00928070 | (ulong)DAT_00928050 & 0xc4f20c94ff8302d1) & DAT_00928078;
  uRam00000000000005d8 = DAT_00928080 & (DAT_00928078 | DAT_00928060 & 0xc4f20c94ff8302d1);
  uRam00000000000005e0 = DAT_00928088 & (DAT_00928080 | DAT_00928068 & 0xc4f20c94ff8302d1);
  uRam00000000000005e8 = (DAT_00928088 | DAT_00928058 & 0xc4f20c94ff8302d1) & (ulong)DAT_00928050;
  lVar14 = (*(code *)0x0)(0,lVar7,7,0x22,0xffffffffffffffff,0,0);
  if (lVar14 == 0) {
    local_a0[0] = (code *)&DAT_7c532335;
  }
  else {
    DAT_00928050 = &DAT_75b17218b1b0efa0;
    DAT_00928068 = 0xe5b661740ab652b2;
    DAT_00928058 = 0x4adb13815e795343;
    DAT_00928048 = 0x157d8ba09a9d4767;
    DAT_00928060 = 0x7f312dfd0f335221;
    local_a0[0] = (code *)&DAT_bc72622c;
    CallSupervisor(0);
  }
  uVar4 = *(ulong *)local_a0[0];
  CallSupervisor(0);
  lVar14 = 0;
  do {
    pcVar11 = (code *)0xde;
    CallSupervisor(0);
    local_a0[lVar14] = (code *)0x0;
    if (3 < uVar4) {
                    /* WARNING: Could not recover jumptable at 0x001f6bd4. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      uVar5 = (*(code *)((long)(int)switchD_001f6bd4::switchdataD_00112664 + 0x1f6bc8))(0xffffffff);
      return uVar5;
    }
    if (lVar14 != 0) {
      pcVar11 = local_a0[(int)lVar14 - 1];
      *(uint *)pcVar11 = (uint)-(int)pcVar11 >> 2 & 0x3ffffff | 0x14000000;
    }
    auVar17 = FUN_0091ad58(pcVar11,0,uVar4,7,0x22,0xffffffffffffffff,0);
    lVar14 = lVar14 + 1;
  } while (lVar14 != 7);
  (*local_a0[0])(auVar17._0_8_,auVar17._8_8_);
  lVar7 = sysconf(0x27);
  plVar12 = (long *)0x0;
  lVar14 = 0;
  CallSupervisor(0);
  uVar4 = _DAT_00110a70;
  uVar16 = _UNK_00110a78;
  do {
    if (uVar4 < 0xa9) {
      *plVar12 = lVar14;
    }
    if (uVar16 < 0xa9) {
      plVar12[1] = lVar14 + 0x520280d201a40091;
    }
    uVar4 = uVar4 + 2;
    uVar16 = uVar16 + 2;
    lVar14 = lVar14 + -0x5bfafe5bfcb7fede;
    plVar12 = plVar12 + 2;
  } while (plVar12 != (long *)0x550);
  lRam0000000000000550 = 0x224000d1e31f80d2 << (DAT_00928048 & 0x3f);
  uRam0000000000000558 = (ulong)DAT_00928050 | 0x452de038a8500702;
  lRam0000000000000568 = -0xbfcff552efaff6c << (DAT_00928060 & 0x3f);
  lRam0000000000000578 = -0x1ffceb558a030069 << (DAT_00928058 & 0x3f);
  lRam0000000000000560 = -0x20ddfa51bc7eae2b << (DAT_00928058 & 0x3f);
  uRam0000000000000570 = (ulong)DAT_00928050 | 0xeb03d1d3a9d59bd2;
  lRam0000000000000580 = -0xbb0f7560284f657 << (DAT_00928060 & 0x3f);
  uRam0000000000000588 = (ulong)DAT_00928050 | 0xc4f20c94ff8302d1;
  lRam0000000000000590 = -0x6b3dff6e1ffcec56 << (DAT_00928068 & 0x3f);
  lRam0000000000000598 = -0x80fec68804f46c << (DAT_00928060 & 0x3f);
  lRam00000000000005a0 = -0x191201681917af4b << (DAT_00928058 & 0x3f);
  lRam00000000000005a8 = 0x1088052e30313aa << (DAT_00928060 & 0x3f);
  lRam00000000000005b0 = -0x9fce0550ab0fe57 << (DAT_00928068 & 0x3f);
  uRam00000000000005b8 = (ulong)DAT_00928050 | 0xa6e6e8cac7f47ed3;
  lRam00000000000005c0 = -0x1efcea550080ff57 << (DAT_00928068 & 0x3f);
  lRam00000000000005c8 = -0x1917f2e84bd5bf47 << (DAT_00928058 & 0x3f);
  uRam00000000000005d0 = (DAT_00928070 | (ulong)DAT_00928050 & 0xc4f20c94ff8302d1) & DAT_00928078;
  uRam00000000000005d8 = DAT_00928080 & (DAT_00928078 | DAT_00928060 & 0xc4f20c94ff8302d1);
  uRam00000000000005e0 = DAT_00928088 & (DAT_00928080 | DAT_00928068 & 0xc4f20c94ff8302d1);
  uRam00000000000005e8 = (DAT_00928088 | DAT_00928058 & 0xc4f20c94ff8302d1) & (ulong)DAT_00928050;
  lVar14 = (*(code *)0x0)(0,lVar7,7,0x22,0xffffffffffffffff,0,0);
  if (lVar14 == 0) {
    local_a0[0] = (code *)&DAT_5b00e224;
  }
  else {
    DAT_00928050 = &DAT_75b17218b1b0efa0;
    DAT_00928060 = 0x7f312dfd0f335221;
    DAT_00928068 = 0xe5b661740ab652b2;
    DAT_00928058 = 0x4adb13815e795343;
    DAT_00928048 = 0x157d8ba09a9d4767;
    local_a0[0] = (code *)&DAT_bc72622c;
    CallSupervisor(0);
  }
  CallSupervisor(0);
  if (extraout_x9 != 0x35) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(*(undefined8 *)local_a0[0]);
  }
  return 0xfffffffd;
}



