package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.mf;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class qa extends y71 {
    public ArrayList k;
    public int l;

    public qa(mf mfVar, int i) {
        super(mfVar);
        this.k = new ArrayList();
        this.f = i;
        q();
    }

    /* JADX WARN: Code restructure failed: missing block: B:114:0x01ad, code lost:
    
        if (r1 != r7) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x01d8, code lost:
    
        r9.e.d(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x01d5, code lost:
    
        r13 = r13 + 1;
        r7 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x01d3, code lost:
    
        if (r1 != r7) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:296:0x0416, code lost:
    
        r7 = r7 - r10;
     */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00eb  */
    @Override // androidx.appcompat.view.menu.y71, androidx.appcompat.view.menu.jl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(jl jlVar) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        float f;
        boolean z;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        boolean z2;
        int i12;
        float f2;
        int max;
        int i13;
        int i14;
        if (this.h.j && this.i.j) {
            mf G = this.b.G();
            boolean a1 = (G == null || !(G instanceof nf)) ? false : ((nf) G).a1();
            int i15 = this.i.g - this.h.g;
            int size = this.k.size();
            int i16 = 0;
            while (true) {
                i = -1;
                i2 = 8;
                if (i16 >= size) {
                    i16 = -1;
                    break;
                } else if (((y71) this.k.get(i16)).b.O() != 8) {
                    break;
                } else {
                    i16++;
                }
            }
            int i17 = size - 1;
            int i18 = i17;
            while (true) {
                if (i18 < 0) {
                    break;
                }
                if (((y71) this.k.get(i18)).b.O() != 8) {
                    i = i18;
                    break;
                }
                i18--;
            }
            int i19 = 0;
            while (i19 < 2) {
                int i20 = 0;
                i4 = 0;
                i5 = 0;
                int i21 = 0;
                f = 0.0f;
                while (i20 < size) {
                    y71 y71Var = (y71) this.k.get(i20);
                    if (y71Var.b.O() != i2) {
                        i21++;
                        if (i20 > 0 && i20 >= i16) {
                            i4 += y71Var.h.f;
                        }
                        zl zlVar = y71Var.e;
                        int i22 = zlVar.g;
                        boolean z3 = y71Var.d != mf.b.MATCH_CONSTRAINT;
                        if (z3) {
                            int i23 = this.f;
                            if (i23 == 0 && !y71Var.b.e.e.j) {
                                return;
                            }
                            if (i23 == 1 && !y71Var.b.f.e.j) {
                                return;
                            } else {
                                i13 = i22;
                            }
                        } else {
                            i13 = i22;
                            if (y71Var.a == 1 && i19 == 0) {
                                i14 = zlVar.m;
                                i5++;
                            } else if (zlVar.j) {
                                i14 = i13;
                            }
                            z3 = true;
                            if (z3) {
                                i5++;
                                float f3 = y71Var.b.q0[this.f];
                                if (f3 >= 0.0f) {
                                    f += f3;
                                }
                            } else {
                                i4 += i14;
                            }
                            if (i20 < i17 && i20 < i) {
                                i4 += -y71Var.i.f;
                            }
                        }
                        i14 = i13;
                        if (z3) {
                        }
                        if (i20 < i17) {
                            i4 += -y71Var.i.f;
                        }
                    }
                    i20++;
                    i2 = 8;
                }
                if (i4 < i15 || i5 == 0) {
                    i3 = i21;
                    break;
                } else {
                    i19++;
                    i2 = 8;
                }
            }
            i3 = 0;
            i4 = 0;
            i5 = 0;
            f = 0.0f;
            int i24 = this.h.g;
            if (a1) {
                i24 = this.i.g;
            }
            if (i4 > i15) {
                i24 = a1 ? i24 + ((int) (((i4 - i15) / 2.0f) + 0.5f)) : i24 - ((int) (((i4 - i15) / 2.0f) + 0.5f));
            }
            if (i5 > 0) {
                float f4 = i15 - i4;
                int i25 = (int) ((f4 / i5) + 0.5f);
                int i26 = 0;
                int i27 = 0;
                while (i26 < size) {
                    y71 y71Var2 = (y71) this.k.get(i26);
                    int i28 = i25;
                    int i29 = i4;
                    if (y71Var2.b.O() != 8 && y71Var2.d == mf.b.MATCH_CONSTRAINT) {
                        zl zlVar2 = y71Var2.e;
                        if (!zlVar2.j) {
                            if (f > 0.0f) {
                                i10 = i24;
                                i11 = (int) (((y71Var2.b.q0[this.f] * f4) / f) + 0.5f);
                            } else {
                                i10 = i24;
                                i11 = i28;
                            }
                            if (this.f == 0) {
                                mf mfVar = y71Var2.b;
                                f2 = f4;
                                int i30 = mfVar.p;
                                z2 = a1;
                                i12 = i3;
                                max = Math.max(mfVar.o, y71Var2.a == 1 ? Math.min(i11, zlVar2.m) : i11);
                                if (i30 > 0) {
                                    max = Math.min(i30, max);
                                }
                            } else {
                                z2 = a1;
                                i12 = i3;
                                f2 = f4;
                                mf mfVar2 = y71Var2.b;
                                int i31 = mfVar2.s;
                                max = Math.max(mfVar2.r, y71Var2.a == 1 ? Math.min(i11, zlVar2.m) : i11);
                                if (i31 > 0) {
                                    max = Math.min(i31, max);
                                }
                            }
                            i26++;
                            i25 = i28;
                            i4 = i29;
                            i24 = i10;
                            f4 = f2;
                            a1 = z2;
                            i3 = i12;
                        }
                    }
                    z2 = a1;
                    i12 = i3;
                    i10 = i24;
                    f2 = f4;
                    i26++;
                    i25 = i28;
                    i4 = i29;
                    i24 = i10;
                    f4 = f2;
                    a1 = z2;
                    i3 = i12;
                }
                z = a1;
                i6 = i3;
                i7 = i24;
                int i32 = i4;
                if (i27 > 0) {
                    i5 -= i27;
                    i4 = 0;
                    for (int i33 = 0; i33 < size; i33++) {
                        y71 y71Var3 = (y71) this.k.get(i33);
                        if (y71Var3.b.O() != 8) {
                            if (i33 > 0 && i33 >= i16) {
                                i4 += y71Var3.h.f;
                            }
                            i4 += y71Var3.e.g;
                            if (i33 < i17 && i33 < i) {
                                i4 += -y71Var3.i.f;
                            }
                        }
                    }
                } else {
                    i4 = i32;
                }
                i9 = 2;
                if (this.l == 2 && i27 == 0) {
                    i8 = 0;
                    this.l = 0;
                } else {
                    i8 = 0;
                }
            } else {
                z = a1;
                i6 = i3;
                i7 = i24;
                i8 = 0;
                i9 = 2;
            }
            if (i4 > i15) {
                this.l = i9;
            }
            if (i6 > 0 && i5 == 0 && i16 == i) {
                this.l = i9;
            }
            int i34 = this.l;
            if (i34 == 1) {
                int i35 = i6;
                int i36 = i35 > 1 ? (i15 - i4) / (i35 - 1) : i35 == 1 ? (i15 - i4) / 2 : i8;
                if (i5 > 0) {
                    i36 = i8;
                }
                int i37 = i7;
                for (int i38 = i8; i38 < size; i38++) {
                    y71 y71Var4 = (y71) this.k.get(z ? size - (i38 + 1) : i38);
                    if (y71Var4.b.O() == 8) {
                        y71Var4.h.d(i37);
                        y71Var4.i.d(i37);
                    } else {
                        if (i38 > 0) {
                            i37 = z ? i37 - i36 : i37 + i36;
                        }
                        if (i38 > 0 && i38 >= i16) {
                            i37 = z ? i37 - y71Var4.h.f : i37 + y71Var4.h.f;
                        }
                        if (z) {
                            y71Var4.i.d(i37);
                        } else {
                            y71Var4.h.d(i37);
                        }
                        zl zlVar3 = y71Var4.e;
                        int i39 = zlVar3.g;
                        if (y71Var4.d == mf.b.MATCH_CONSTRAINT && y71Var4.a == 1) {
                            i39 = zlVar3.m;
                        }
                        i37 = z ? i37 - i39 : i37 + i39;
                        if (z) {
                            y71Var4.h.d(i37);
                        } else {
                            y71Var4.i.d(i37);
                        }
                        y71Var4.g = true;
                        if (i38 < i17 && i38 < i) {
                            i37 = z ? i37 - (-y71Var4.i.f) : i37 + (-y71Var4.i.f);
                        }
                    }
                }
                return;
            }
            int i40 = i6;
            if (i34 == 0) {
                int i41 = (i15 - i4) / (i40 + 1);
                if (i5 > 0) {
                    i41 = i8;
                }
                int i42 = i7;
                for (int i43 = i8; i43 < size; i43++) {
                    y71 y71Var5 = (y71) this.k.get(z ? size - (i43 + 1) : i43);
                    if (y71Var5.b.O() == 8) {
                        y71Var5.h.d(i42);
                        y71Var5.i.d(i42);
                    } else {
                        int i44 = z ? i42 - i41 : i42 + i41;
                        if (i43 > 0 && i43 >= i16) {
                            i44 = z ? i44 - y71Var5.h.f : i44 + y71Var5.h.f;
                        }
                        if (z) {
                            y71Var5.i.d(i44);
                        } else {
                            y71Var5.h.d(i44);
                        }
                        zl zlVar4 = y71Var5.e;
                        int i45 = zlVar4.g;
                        if (y71Var5.d == mf.b.MATCH_CONSTRAINT && y71Var5.a == 1) {
                            i45 = Math.min(i45, zlVar4.m);
                        }
                        i42 = z ? i44 - i45 : i44 + i45;
                        if (z) {
                            y71Var5.h.d(i42);
                        } else {
                            y71Var5.i.d(i42);
                        }
                        if (i43 < i17 && i43 < i) {
                            i42 = z ? i42 - (-y71Var5.i.f) : i42 + (-y71Var5.i.f);
                        }
                    }
                }
                return;
            }
            if (i34 == 2) {
                float w = this.f == 0 ? this.b.w() : this.b.K();
                if (z) {
                    w = 1.0f - w;
                }
                int i46 = (int) (((i15 - i4) * w) + 0.5f);
                if (i46 < 0 || i5 > 0) {
                    i46 = i8;
                }
                int i47 = z ? i7 - i46 : i7 + i46;
                for (int i48 = i8; i48 < size; i48++) {
                    y71 y71Var6 = (y71) this.k.get(z ? size - (i48 + 1) : i48);
                    if (y71Var6.b.O() == 8) {
                        y71Var6.h.d(i47);
                        y71Var6.i.d(i47);
                    } else {
                        if (i48 > 0 && i48 >= i16) {
                            i47 = z ? i47 - y71Var6.h.f : i47 + y71Var6.h.f;
                        }
                        if (z) {
                            y71Var6.i.d(i47);
                        } else {
                            y71Var6.h.d(i47);
                        }
                        zl zlVar5 = y71Var6.e;
                        int i49 = zlVar5.g;
                        if (y71Var6.d == mf.b.MATCH_CONSTRAINT && y71Var6.a == 1) {
                            i49 = zlVar5.m;
                        }
                        i47 += i49;
                        if (z) {
                            y71Var6.h.d(i47);
                        } else {
                            y71Var6.i.d(i47);
                        }
                        if (i48 < i17 && i48 < i) {
                            i47 = z ? i47 - (-y71Var6.i.f) : i47 + (-y71Var6.i.f);
                        }
                    }
                }
            }
        }
    }

    @Override // androidx.appcompat.view.menu.y71
    public void d() {
        Iterator it = this.k.iterator();
        while (it.hasNext()) {
            ((y71) it.next()).d();
        }
        int size = this.k.size();
        if (size < 1) {
            return;
        }
        mf mfVar = ((y71) this.k.get(0)).b;
        mf mfVar2 = ((y71) this.k.get(size - 1)).b;
        if (this.f == 0) {
            kf kfVar = mfVar.B;
            kf kfVar2 = mfVar2.D;
            nl i = i(kfVar, 0);
            int c = kfVar.c();
            mf r = r();
            if (r != null) {
                c = r.B.c();
            }
            if (i != null) {
                b(this.h, i, c);
            }
            nl i2 = i(kfVar2, 0);
            int c2 = kfVar2.c();
            mf s = s();
            if (s != null) {
                c2 = s.D.c();
            }
            if (i2 != null) {
                b(this.i, i2, -c2);
            }
        } else {
            kf kfVar3 = mfVar.C;
            kf kfVar4 = mfVar2.E;
            nl i3 = i(kfVar3, 1);
            int c3 = kfVar3.c();
            mf r2 = r();
            if (r2 != null) {
                c3 = r2.C.c();
            }
            if (i3 != null) {
                b(this.h, i3, c3);
            }
            nl i4 = i(kfVar4, 1);
            int c4 = kfVar4.c();
            mf s2 = s();
            if (s2 != null) {
                c4 = s2.E.c();
            }
            if (i4 != null) {
                b(this.i, i4, -c4);
            }
        }
        this.h.a = this;
        this.i.a = this;
    }

    @Override // androidx.appcompat.view.menu.y71
    public void e() {
        for (int i = 0; i < this.k.size(); i++) {
            ((y71) this.k.get(i)).e();
        }
    }

    @Override // androidx.appcompat.view.menu.y71
    public void f() {
        this.c = null;
        Iterator it = this.k.iterator();
        while (it.hasNext()) {
            ((y71) it.next()).f();
        }
    }

    @Override // androidx.appcompat.view.menu.y71
    public long j() {
        int size = this.k.size();
        long j = 0;
        for (int i = 0; i < size; i++) {
            j = j + r4.h.f + ((y71) this.k.get(i)).j() + r4.i.f;
        }
        return j;
    }

    @Override // androidx.appcompat.view.menu.y71
    public boolean m() {
        int size = this.k.size();
        for (int i = 0; i < size; i++) {
            if (!((y71) this.k.get(i)).m()) {
                return false;
            }
        }
        return true;
    }

    public final void q() {
        mf mfVar;
        mf mfVar2 = this.b;
        mf H = mfVar2.H(this.f);
        while (true) {
            mf mfVar3 = H;
            mfVar = mfVar2;
            mfVar2 = mfVar3;
            if (mfVar2 == null) {
                break;
            } else {
                H = mfVar2.H(this.f);
            }
        }
        this.b = mfVar;
        this.k.add(mfVar.J(this.f));
        mf F = mfVar.F(this.f);
        while (F != null) {
            this.k.add(F.J(this.f));
            F = F.F(this.f);
        }
        Iterator it = this.k.iterator();
        while (it.hasNext()) {
            y71 y71Var = (y71) it.next();
            int i = this.f;
            if (i == 0) {
                y71Var.b.c = this;
            } else if (i == 1) {
                y71Var.b.d = this;
            }
        }
        if (this.f == 0 && ((nf) this.b.G()).a1() && this.k.size() > 1) {
            ArrayList arrayList = this.k;
            this.b = ((y71) arrayList.get(arrayList.size() - 1)).b;
        }
        this.l = this.f == 0 ? this.b.x() : this.b.L();
    }

    public final mf r() {
        for (int i = 0; i < this.k.size(); i++) {
            y71 y71Var = (y71) this.k.get(i);
            if (y71Var.b.O() != 8) {
                return y71Var.b;
            }
        }
        return null;
    }

    public final mf s() {
        for (int size = this.k.size() - 1; size >= 0; size--) {
            y71 y71Var = (y71) this.k.get(size);
            if (y71Var.b.O() != 8) {
                return y71Var.b;
            }
        }
        return null;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ChainRun ");
        sb.append(this.f == 0 ? "horizontal : " : "vertical : ");
        String sb2 = sb.toString();
        Iterator it = this.k.iterator();
        while (it.hasNext()) {
            String str = sb2 + "<";
            sb2 = (str + ((y71) it.next())) + "> ";
        }
        return sb2;
    }
}
