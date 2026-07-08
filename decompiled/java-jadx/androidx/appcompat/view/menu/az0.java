package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.m2;

/* loaded from: classes.dex */
public abstract class az0 {
    public final hr[] a;
    public final boolean b;
    public final int c;

    public static class a {
        public no0 a;
        public hr[] c;
        public boolean b = true;
        public int d = 0;

        public /* synthetic */ a(oc1 oc1Var) {
        }

        public az0 a() {
            mj0.b(this.a != null, "execute parameter required");
            return new nc1(this, this.c, this.b, this.d);
        }

        public a b(no0 no0Var) {
            this.a = no0Var;
            return this;
        }

        public a c(boolean z) {
            this.b = z;
            return this;
        }

        public a d(hr... hrVarArr) {
            this.c = hrVarArr;
            return this;
        }
    }

    public az0(hr[] hrVarArr, boolean z, int i) {
        this.a = hrVarArr;
        boolean z2 = false;
        if (hrVarArr != null && z) {
            z2 = true;
        }
        this.b = z2;
        this.c = i;
    }

    public static a a() {
        return new a(null);
    }

    public abstract void b(m2.b bVar, bz0 bz0Var);

    public boolean c() {
        return this.b;
    }

    public final int d() {
        return this.c;
    }

    public final hr[] e() {
        return this.a;
    }
}
