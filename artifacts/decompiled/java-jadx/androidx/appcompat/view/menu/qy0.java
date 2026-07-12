package androidx.appcompat.view.menu;

import java.io.Serializable;

/* loaded from: classes.dex */
public final class qy0 implements i80, Serializable {
    public dw m;
    public volatile Object n;
    public final Object o;

    public qy0(dw dwVar, Object obj) {
        z50.e(dwVar, "initializer");
        this.m = dwVar;
        this.n = d31.a;
        this.o = obj == null ? this : obj;
    }

    public boolean a() {
        return this.n != d31.a;
    }

    @Override // androidx.appcompat.view.menu.i80
    public Object getValue() {
        Object obj;
        Object obj2 = this.n;
        d31 d31Var = d31.a;
        if (obj2 != d31Var) {
            return obj2;
        }
        synchronized (this.o) {
            obj = this.n;
            if (obj == d31Var) {
                dw dwVar = this.m;
                z50.b(dwVar);
                obj = dwVar.d();
                this.n = obj;
                this.m = null;
            }
        }
        return obj;
    }

    public String toString() {
        return a() ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }

    public /* synthetic */ qy0(dw dwVar, Object obj, int i, lj ljVar) {
        this(dwVar, (i & 2) != 0 ? null : obj);
    }
}
