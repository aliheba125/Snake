package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.mf;
import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class oa {
    public static void a(nf nfVar, g90 g90Var, int i) {
        int i2;
        pa[] paVarArr;
        int i3;
        if (i == 0) {
            i2 = nfVar.G0;
            paVarArr = nfVar.J0;
            i3 = 0;
        } else {
            i2 = nfVar.H0;
            paVarArr = nfVar.I0;
            i3 = 2;
        }
        for (int i4 = 0; i4 < i2; i4++) {
            pa paVar = paVarArr[i4];
            paVar.a();
            b(nfVar, g90Var, i, i3, paVar);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002d, code lost:
    
        if (r7 == 2) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x002f, code lost:
    
        r5 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:306:0x0031, code lost:
    
        r5 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:314:0x0044, code lost:
    
        if (r7 == 2) goto L16;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0249 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:135:0x04b9 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:142:0x04ce  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x04d7  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x04de  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x04ee  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x04f2 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:158:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:159:0x04da  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x04d1  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x02a5 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:186:0x038e  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x038f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:234:0x0397 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:242:0x03aa  */
    /* JADX WARN: Removed duplicated region for block: B:292:0x0478  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01c4  */
    /* JADX WARN: Type inference failed for: r2v56, types: [androidx.appcompat.view.menu.mf] */
    /* JADX WARN: Type inference failed for: r8v41 */
    /* JADX WARN: Type inference failed for: r8v42 */
    /* JADX WARN: Type inference failed for: r8v47 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6, types: [androidx.appcompat.view.menu.mf] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void b(nf nfVar, g90 g90Var, int i, int i2, pa paVar) {
        boolean z;
        boolean z2;
        boolean z3;
        ArrayList arrayList;
        mf mfVar;
        kf kfVar;
        kf kfVar2;
        kf kfVar3;
        mf mfVar2;
        int i3;
        kf kfVar4;
        yv0 yv0Var;
        yv0 yv0Var2;
        mf mfVar3;
        kf kfVar5;
        yv0 yv0Var3;
        yv0 yv0Var4;
        mf mfVar4;
        yv0 yv0Var5;
        int size;
        int i4;
        ArrayList arrayList2;
        boolean z4;
        boolean z5;
        boolean z6;
        mf mfVar5;
        mf mfVar6;
        int i5;
        mf mfVar7 = paVar.a;
        mf mfVar8 = paVar.c;
        mf mfVar9 = paVar.b;
        mf mfVar10 = paVar.d;
        mf mfVar11 = paVar.e;
        float f = paVar.k;
        boolean z7 = nfVar.M[i] == mf.b.WRAP_CONTENT;
        if (i == 0) {
            int i6 = mfVar11.m0;
            z = i6 == 0;
            z2 = i6 == 1;
        } else {
            int i7 = mfVar11.n0;
            z = i7 == 0;
            z2 = i7 == 1;
        }
        boolean z8 = z2;
        boolean z9 = false;
        boolean z10 = z;
        ?? r8 = mfVar7;
        while (true) {
            if (z9) {
                break;
            }
            kf kfVar6 = r8.J[i2];
            int i8 = z3 ? 1 : 4;
            int c = kfVar6.c();
            mf.b bVar = r8.M[i];
            float f2 = f;
            mf.b bVar2 = mf.b.MATCH_CONSTRAINT;
            if (bVar == bVar2 && r8.n[i] == 0) {
                z4 = z9;
                z5 = true;
            } else {
                z4 = z9;
                z5 = false;
            }
            kf kfVar7 = kfVar6.d;
            if (kfVar7 != null && r8 != mfVar7) {
                c += kfVar7.c();
            }
            int i9 = c;
            if (!z3 || r8 == mfVar7 || r8 == mfVar9) {
                z6 = z10;
            } else {
                z6 = z10;
                i8 = 5;
            }
            kf kfVar8 = kfVar6.d;
            if (kfVar8 != null) {
                if (r8 == mfVar9) {
                    mfVar5 = mfVar11;
                    mfVar6 = mfVar7;
                    g90Var.h(kfVar6.g, kfVar8.g, i9, 6);
                } else {
                    mfVar5 = mfVar11;
                    mfVar6 = mfVar7;
                    g90Var.h(kfVar6.g, kfVar8.g, i9, 8);
                }
                g90Var.e(kfVar6.g, kfVar6.d.g, i9, (!z5 || z3) ? i8 : 5);
            } else {
                mfVar5 = mfVar11;
                mfVar6 = mfVar7;
            }
            if (z7) {
                if (r8.O() == 8 || r8.M[i] != bVar2) {
                    i5 = 0;
                } else {
                    kf[] kfVarArr = r8.J;
                    i5 = 0;
                    g90Var.h(kfVarArr[i2 + 1].g, kfVarArr[i2].g, 0, 5);
                }
                g90Var.h(r8.J[i2].g, nfVar.J[i2].g, i5, 8);
            }
            kf kfVar9 = r8.J[i2 + 1].d;
            if (kfVar9 != null) {
                ?? r2 = kfVar9.b;
                kf kfVar10 = r2.J[i2].d;
                if (kfVar10 != null && kfVar10.b == r8) {
                    r20 = r2;
                }
            }
            if (r20 != null) {
                r8 = r20;
                z9 = z4;
            } else {
                z9 = true;
            }
            z10 = z6;
            f = f2;
            mfVar11 = mfVar5;
            mfVar7 = mfVar6;
            r8 = r8;
        }
        mf mfVar12 = mfVar11;
        float f3 = f;
        mf mfVar13 = mfVar7;
        boolean z11 = z10;
        if (mfVar10 != null) {
            int i10 = i2 + 1;
            if (mfVar8.J[i10].d != null) {
                kf kfVar11 = mfVar10.J[i10];
                if (mfVar10.M[i] == mf.b.MATCH_CONSTRAINT && mfVar10.n[i] == 0 && !z3) {
                    kf kfVar12 = kfVar11.d;
                    if (kfVar12.b == nfVar) {
                        g90Var.e(kfVar11.g, kfVar12.g, -kfVar11.c(), 5);
                        g90Var.j(kfVar11.g, mfVar8.J[i10].d.g, -kfVar11.c(), 6);
                        if (z7) {
                            int i11 = i2 + 1;
                            yv0 yv0Var6 = nfVar.J[i11].g;
                            kf kfVar13 = mfVar8.J[i11];
                            g90Var.h(yv0Var6, kfVar13.g, kfVar13.c(), 8);
                        }
                        arrayList = paVar.h;
                        if (arrayList != null && (size = arrayList.size()) > 1) {
                            float f4 = (paVar.r || paVar.t) ? f3 : paVar.j;
                            float f5 = 0.0f;
                            float f6 = 0.0f;
                            mf mfVar14 = null;
                            i4 = 0;
                            while (i4 < size) {
                                mf mfVar15 = (mf) arrayList.get(i4);
                                float f7 = mfVar15.q0[i];
                                if (f7 < f5) {
                                    if (paVar.t) {
                                        kf[] kfVarArr2 = mfVar15.J;
                                        g90Var.e(kfVarArr2[i2 + 1].g, kfVarArr2[i2].g, 0, 4);
                                        arrayList2 = arrayList;
                                        i4++;
                                        arrayList = arrayList2;
                                        f5 = 0.0f;
                                    } else {
                                        f7 = 1.0f;
                                    }
                                }
                                if (f7 == f5) {
                                    kf[] kfVarArr3 = mfVar15.J;
                                    g90Var.e(kfVarArr3[i2 + 1].g, kfVarArr3[i2].g, 0, 8);
                                    arrayList2 = arrayList;
                                    i4++;
                                    arrayList = arrayList2;
                                    f5 = 0.0f;
                                } else {
                                    if (mfVar14 != null) {
                                        kf[] kfVarArr4 = mfVar14.J;
                                        yv0 yv0Var7 = kfVarArr4[i2].g;
                                        int i12 = i2 + 1;
                                        yv0 yv0Var8 = kfVarArr4[i12].g;
                                        kf[] kfVarArr5 = mfVar15.J;
                                        yv0 yv0Var9 = kfVarArr5[i2].g;
                                        yv0 yv0Var10 = kfVarArr5[i12].g;
                                        arrayList2 = arrayList;
                                        p4 r = g90Var.r();
                                        r.l(f6, f4, f7, yv0Var7, yv0Var8, yv0Var9, yv0Var10);
                                        g90Var.d(r);
                                    } else {
                                        arrayList2 = arrayList;
                                    }
                                    mfVar14 = mfVar15;
                                    f6 = f7;
                                    i4++;
                                    arrayList = arrayList2;
                                    f5 = 0.0f;
                                }
                            }
                        }
                        if (mfVar9 == null && (mfVar9 == mfVar10 || z3)) {
                            kf kfVar14 = mfVar13.J[i2];
                            int i13 = i2 + 1;
                            kf kfVar15 = mfVar8.J[i13];
                            kf kfVar16 = kfVar14.d;
                            yv0 yv0Var11 = kfVar16 != null ? kfVar16.g : null;
                            kf kfVar17 = kfVar15.d;
                            yv0 yv0Var12 = kfVar17 != null ? kfVar17.g : null;
                            kf kfVar18 = mfVar9.J[i2];
                            kf kfVar19 = mfVar10.J[i13];
                            if (yv0Var11 != null && yv0Var12 != null) {
                                g90Var.c(kfVar18.g, yv0Var11, kfVar18.c(), i == 0 ? mfVar12.b0 : mfVar12.c0, yv0Var12, kfVar19.g, kfVar19.c(), 7);
                            }
                        } else if (z11 || mfVar9 == null) {
                            int i14 = 8;
                            if (z8 && mfVar9 != null) {
                                int i15 = paVar.j;
                                boolean z12 = i15 <= 0 && paVar.i == i15;
                                mfVar = mfVar9;
                                mf mfVar16 = mfVar;
                                while (mfVar != null) {
                                    mf mfVar17 = mfVar.s0[i];
                                    while (mfVar17 != null && mfVar17.O() == i14) {
                                        mfVar17 = mfVar17.s0[i];
                                    }
                                    if (mfVar == mfVar9 || mfVar == mfVar10 || mfVar17 == null) {
                                        mfVar2 = mfVar16;
                                        i3 = i14;
                                    } else {
                                        mf mfVar18 = mfVar17 == mfVar10 ? null : mfVar17;
                                        kf kfVar20 = mfVar.J[i2];
                                        yv0 yv0Var13 = kfVar20.g;
                                        kf kfVar21 = kfVar20.d;
                                        if (kfVar21 != null) {
                                            yv0 yv0Var14 = kfVar21.g;
                                        }
                                        int i16 = i2 + 1;
                                        yv0 yv0Var15 = mfVar16.J[i16].g;
                                        int c2 = kfVar20.c();
                                        int c3 = mfVar.J[i16].c();
                                        if (mfVar18 != null) {
                                            kfVar4 = mfVar18.J[i2];
                                            yv0Var = kfVar4.g;
                                            kf kfVar22 = kfVar4.d;
                                            yv0Var2 = kfVar22 != null ? kfVar22.g : null;
                                        } else {
                                            kfVar4 = mfVar10.J[i2];
                                            yv0Var = kfVar4 != null ? kfVar4.g : null;
                                            yv0Var2 = mfVar.J[i16].g;
                                        }
                                        if (kfVar4 != null) {
                                            c3 += kfVar4.c();
                                        }
                                        int i17 = c3;
                                        int c4 = mfVar16.J[i16].c() + c2;
                                        int i18 = z12 ? 8 : 4;
                                        if (yv0Var13 == null || yv0Var15 == null || yv0Var == null || yv0Var2 == null) {
                                            mfVar3 = mfVar18;
                                            mfVar2 = mfVar16;
                                            i3 = 8;
                                        } else {
                                            mfVar3 = mfVar18;
                                            mfVar2 = mfVar16;
                                            i3 = 8;
                                            g90Var.c(yv0Var13, yv0Var15, c4, 0.5f, yv0Var, yv0Var2, i17, i18);
                                        }
                                        mfVar17 = mfVar3;
                                    }
                                    if (mfVar.O() == i3) {
                                        mfVar = mfVar2;
                                    }
                                    i14 = i3;
                                    mfVar16 = mfVar;
                                    mfVar = mfVar17;
                                }
                                kf kfVar23 = mfVar9.J[i2];
                                kfVar = mfVar13.J[i2].d;
                                int i19 = i2 + 1;
                                kfVar2 = mfVar10.J[i19];
                                kfVar3 = mfVar8.J[i19].d;
                                if (kfVar != null) {
                                    if (mfVar9 != mfVar10) {
                                        g90Var.e(kfVar23.g, kfVar.g, kfVar23.c(), 5);
                                    } else if (kfVar3 != null) {
                                        g90Var.c(kfVar23.g, kfVar.g, kfVar23.c(), 0.5f, kfVar2.g, kfVar3.g, kfVar2.c(), 5);
                                    }
                                }
                                if (kfVar3 != null && mfVar9 != mfVar10) {
                                    g90Var.e(kfVar2.g, kfVar3.g, -kfVar2.c(), 5);
                                }
                            }
                        } else {
                            int i20 = paVar.j;
                            boolean z13 = i20 > 0 && paVar.i == i20;
                            mf mfVar19 = mfVar9;
                            mf mfVar20 = mfVar19;
                            while (mfVar19 != null) {
                                mf mfVar21 = mfVar19.s0[i];
                                while (mfVar21 != null && mfVar21.O() == 8) {
                                    mfVar21 = mfVar21.s0[i];
                                }
                                if (mfVar21 != null || mfVar19 == mfVar10) {
                                    kf kfVar24 = mfVar19.J[i2];
                                    yv0 yv0Var16 = kfVar24.g;
                                    kf kfVar25 = kfVar24.d;
                                    yv0 yv0Var17 = kfVar25 != null ? kfVar25.g : null;
                                    if (mfVar20 != mfVar19) {
                                        yv0Var17 = mfVar20.J[i2 + 1].g;
                                    } else if (mfVar19 == mfVar9 && mfVar20 == mfVar19) {
                                        kf kfVar26 = mfVar13.J[i2].d;
                                        yv0Var17 = kfVar26 != null ? kfVar26.g : null;
                                    }
                                    int c5 = kfVar24.c();
                                    int i21 = i2 + 1;
                                    int c6 = mfVar19.J[i21].c();
                                    if (mfVar21 != null) {
                                        kfVar5 = mfVar21.J[i2];
                                        yv0 yv0Var18 = kfVar5.g;
                                        yv0Var4 = mfVar19.J[i21].g;
                                        yv0Var3 = yv0Var18;
                                    } else {
                                        kfVar5 = mfVar8.J[i21].d;
                                        yv0Var3 = kfVar5 != null ? kfVar5.g : null;
                                        yv0Var4 = mfVar19.J[i21].g;
                                    }
                                    if (kfVar5 != null) {
                                        c6 += kfVar5.c();
                                    }
                                    if (mfVar20 != null) {
                                        c5 += mfVar20.J[i21].c();
                                    }
                                    if (yv0Var16 != null && yv0Var17 != null && yv0Var3 != null && yv0Var4 != null) {
                                        if (mfVar19 == mfVar9) {
                                            c5 = mfVar9.J[i2].c();
                                        }
                                        int i22 = c5;
                                        mfVar4 = mfVar21;
                                        g90Var.c(yv0Var16, yv0Var17, i22, 0.5f, yv0Var3, yv0Var4, mfVar19 == mfVar10 ? mfVar10.J[i21].c() : c6, z13 ? 8 : 5);
                                        if (mfVar19.O() == 8) {
                                            mfVar20 = mfVar19;
                                        }
                                        mfVar19 = mfVar4;
                                    }
                                }
                                mfVar4 = mfVar21;
                                if (mfVar19.O() == 8) {
                                }
                                mfVar19 = mfVar4;
                            }
                        }
                        if ((z11 && !z8) || mfVar9 == null || mfVar9 == mfVar10) {
                            return;
                        }
                        kf[] kfVarArr6 = mfVar9.J;
                        kf kfVar27 = kfVarArr6[i2];
                        int i23 = i2 + 1;
                        kf kfVar28 = mfVar10.J[i23];
                        kf kfVar29 = kfVar27.d;
                        yv0Var5 = kfVar29 != null ? kfVar29.g : null;
                        kf kfVar30 = kfVar28.d;
                        yv0 yv0Var19 = kfVar30 != null ? kfVar30.g : null;
                        if (mfVar8 != mfVar10) {
                            kf kfVar31 = mfVar8.J[i23].d;
                            yv0Var19 = kfVar31 != null ? kfVar31.g : null;
                        }
                        if (mfVar9 == mfVar10) {
                            kfVar28 = kfVarArr6[i23];
                        }
                        if (yv0Var5 == null || yv0Var19 == null) {
                            return;
                        }
                        g90Var.c(kfVar27.g, yv0Var5, kfVar27.c(), 0.5f, yv0Var19, kfVar28.g, mfVar10.J[i23].c(), 5);
                        return;
                    }
                }
                if (z3) {
                    kf kfVar32 = kfVar11.d;
                    if (kfVar32.b == nfVar) {
                        g90Var.e(kfVar11.g, kfVar32.g, -kfVar11.c(), 4);
                    }
                }
                g90Var.j(kfVar11.g, mfVar8.J[i10].d.g, -kfVar11.c(), 6);
                if (z7) {
                }
                arrayList = paVar.h;
                if (arrayList != null) {
                    if (paVar.r) {
                    }
                    float f52 = 0.0f;
                    float f62 = 0.0f;
                    mf mfVar142 = null;
                    i4 = 0;
                    while (i4 < size) {
                    }
                }
                if (mfVar9 == null) {
                }
                if (z11) {
                }
                int i142 = 8;
                if (z8) {
                    int i152 = paVar.j;
                    if (i152 <= 0) {
                    }
                    mfVar = mfVar9;
                    mf mfVar162 = mfVar;
                    while (mfVar != null) {
                    }
                    kf kfVar232 = mfVar9.J[i2];
                    kfVar = mfVar13.J[i2].d;
                    int i192 = i2 + 1;
                    kfVar2 = mfVar10.J[i192];
                    kfVar3 = mfVar8.J[i192].d;
                    if (kfVar != null) {
                    }
                    if (kfVar3 != null) {
                        g90Var.e(kfVar2.g, kfVar3.g, -kfVar2.c(), 5);
                    }
                }
                if (z11) {
                }
                kf[] kfVarArr62 = mfVar9.J;
                kf kfVar272 = kfVarArr62[i2];
                int i232 = i2 + 1;
                kf kfVar282 = mfVar10.J[i232];
                kf kfVar292 = kfVar272.d;
                if (kfVar292 != null) {
                }
                kf kfVar302 = kfVar282.d;
                if (kfVar302 != null) {
                }
                if (mfVar8 != mfVar10) {
                }
                if (mfVar9 == mfVar10) {
                }
                if (yv0Var5 == null) {
                    return;
                } else {
                    return;
                }
            }
        }
        if (z7) {
        }
        arrayList = paVar.h;
        if (arrayList != null) {
        }
        if (mfVar9 == null) {
        }
        if (z11) {
        }
        int i1422 = 8;
        if (z8) {
        }
        if (z11) {
        }
        kf[] kfVarArr622 = mfVar9.J;
        kf kfVar2722 = kfVarArr622[i2];
        int i2322 = i2 + 1;
        kf kfVar2822 = mfVar10.J[i2322];
        kf kfVar2922 = kfVar2722.d;
        if (kfVar2922 != null) {
        }
        kf kfVar3022 = kfVar2822.d;
        if (kfVar3022 != null) {
        }
        if (mfVar8 != mfVar10) {
        }
        if (mfVar9 == mfVar10) {
        }
        if (yv0Var5 == null) {
        }
    }
}
