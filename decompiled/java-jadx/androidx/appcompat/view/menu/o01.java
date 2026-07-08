package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class o01 {
    public final kh a;
    public final Object[] b;
    public final h01[] c;
    public int d;

    public o01(kh khVar, int i) {
        this.a = khVar;
        this.b = new Object[i];
        this.c = new h01[i];
    }

    public final void a(h01 h01Var, Object obj) {
        Object[] objArr = this.b;
        int i = this.d;
        objArr[i] = obj;
        h01[] h01VarArr = this.c;
        this.d = i + 1;
        z50.c(h01Var, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        h01VarArr[i] = h01Var;
    }

    public final void b(kh khVar) {
        int length = this.c.length - 1;
        if (length < 0) {
            return;
        }
        while (true) {
            int i = length - 1;
            h01 h01Var = this.c[length];
            z50.b(h01Var);
            h01Var.m(khVar, this.b[length]);
            if (i < 0) {
                return;
            } else {
                length = i;
            }
        }
    }
}
