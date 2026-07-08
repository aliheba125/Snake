package androidx.appcompat.view.menu;

import java.util.ArrayList;

/* loaded from: classes.dex */
public class zp0 {
    public static int h;
    public y71 c;
    public y71 d;
    public int f;
    public int g;
    public int a = 0;
    public boolean b = false;
    public ArrayList e = new ArrayList();

    public zp0(y71 y71Var, int i) {
        this.c = null;
        this.d = null;
        int i2 = h;
        this.f = i2;
        h = i2 + 1;
        this.c = y71Var;
        this.d = y71Var;
        this.g = i;
    }

    public void a(y71 y71Var) {
        this.e.add(y71Var);
        this.d = y71Var;
    }

    public long b(nf nfVar, int i) {
        long j;
        int i2;
        y71 y71Var = this.c;
        if (y71Var instanceof qa) {
            if (((qa) y71Var).f != i) {
                return 0L;
            }
        } else if (i == 0) {
            if (!(y71Var instanceof jz)) {
                return 0L;
            }
        } else if (!(y71Var instanceof k51)) {
            return 0L;
        }
        nl nlVar = (i == 0 ? nfVar.e : nfVar.f).h;
        nl nlVar2 = (i == 0 ? nfVar.e : nfVar.f).i;
        boolean contains = y71Var.h.l.contains(nlVar);
        boolean contains2 = this.c.i.l.contains(nlVar2);
        long j2 = this.c.j();
        if (contains && contains2) {
            long d = d(this.c.h, 0L);
            long c = c(this.c.i, 0L);
            long j3 = d - j2;
            y71 y71Var2 = this.c;
            int i3 = y71Var2.i.f;
            if (j3 >= (-i3)) {
                j3 += i3;
            }
            int i4 = y71Var2.h.f;
            long j4 = ((-c) - j2) - i4;
            if (j4 >= i4) {
                j4 -= i4;
            }
            float o = y71Var2.b.o(i);
            float f = o > 0.0f ? (long) ((j4 / o) + (j3 / (1.0f - o))) : 0L;
            long j5 = ((long) ((f * o) + 0.5f)) + j2 + ((long) ((f * (1.0f - o)) + 0.5f));
            j = r12.h.f + j5;
            i2 = this.c.i.f;
        } else {
            if (contains) {
                return Math.max(d(this.c.h, r12.f), this.c.h.f + j2);
            }
            if (contains2) {
                return Math.max(-c(this.c.i, r12.f), (-this.c.i.f) + j2);
            }
            j = r12.h.f + this.c.j();
            i2 = this.c.i.f;
        }
        return j - i2;
    }

    public final long c(nl nlVar, long j) {
        y71 y71Var = nlVar.d;
        if (y71Var instanceof ez) {
            return j;
        }
        int size = nlVar.k.size();
        long j2 = j;
        for (int i = 0; i < size; i++) {
            jl jlVar = (jl) nlVar.k.get(i);
            if (jlVar instanceof nl) {
                nl nlVar2 = (nl) jlVar;
                if (nlVar2.d != y71Var) {
                    j2 = Math.min(j2, c(nlVar2, nlVar2.f + j));
                }
            }
        }
        if (nlVar != y71Var.i) {
            return j2;
        }
        long j3 = j - y71Var.j();
        return Math.min(Math.min(j2, c(y71Var.h, j3)), j3 - y71Var.h.f);
    }

    public final long d(nl nlVar, long j) {
        y71 y71Var = nlVar.d;
        if (y71Var instanceof ez) {
            return j;
        }
        int size = nlVar.k.size();
        long j2 = j;
        for (int i = 0; i < size; i++) {
            jl jlVar = (jl) nlVar.k.get(i);
            if (jlVar instanceof nl) {
                nl nlVar2 = (nl) jlVar;
                if (nlVar2.d != y71Var) {
                    j2 = Math.max(j2, d(nlVar2, nlVar2.f + j));
                }
            }
        }
        if (nlVar != y71Var.h) {
            return j2;
        }
        long j3 = j + y71Var.j();
        return Math.max(Math.max(j2, d(y71Var.i, j3)), j3 - y71Var.i.f);
    }
}
