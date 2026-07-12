package androidx.appcompat.view.menu;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class i42 implements j52 {
    public final w32 a;
    public final l72 b;
    public final boolean c;
    public final vz1 d;

    public i42(l72 l72Var, vz1 vz1Var, w32 w32Var) {
        this.b = l72Var;
        this.c = vz1Var.d(w32Var);
        this.d = vz1Var;
        this.a = w32Var;
    }

    public static i42 j(l72 l72Var, vz1 vz1Var, w32 w32Var) {
        return new i42(l72Var, vz1Var, w32Var);
    }

    @Override // androidx.appcompat.view.menu.j52
    public final Object a() {
        w32 w32Var = this.a;
        return w32Var instanceof q02 ? ((q02) w32Var).y() : w32Var.d().k();
    }

    @Override // androidx.appcompat.view.menu.j52
    public final int b(Object obj) {
        l72 l72Var = this.b;
        int e = l72Var.e(l72Var.k(obj));
        return this.c ? e + this.d.b(obj).a() : e;
    }

    @Override // androidx.appcompat.view.menu.j52
    public final boolean c(Object obj) {
        return this.d.b(obj).n();
    }

    @Override // androidx.appcompat.view.menu.j52
    public final void d(Object obj, Object obj2) {
        m52.n(this.b, obj, obj2);
        if (this.c) {
            m52.l(this.d, obj, obj2);
        }
    }

    @Override // androidx.appcompat.view.menu.j52
    public final void e(Object obj) {
        this.b.l(obj);
        this.d.f(obj);
    }

    @Override // androidx.appcompat.view.menu.j52
    public final int f(Object obj) {
        int hashCode = this.b.k(obj).hashCode();
        return this.c ? (hashCode * 53) + this.d.b(obj).hashCode() : hashCode;
    }

    @Override // androidx.appcompat.view.menu.j52
    public final void g(Object obj, d92 d92Var) {
        Iterator l = this.d.b(obj).l();
        if (l.hasNext()) {
            jy0.a(((Map.Entry) l.next()).getKey());
            throw null;
        }
        l72 l72Var = this.b;
        l72Var.d(l72Var.k(obj), d92Var);
    }

    @Override // androidx.appcompat.view.menu.j52
    public final boolean h(Object obj, Object obj2) {
        if (!this.b.k(obj).equals(this.b.k(obj2))) {
            return false;
        }
        if (this.c) {
            return this.d.b(obj).equals(this.d.b(obj2));
        }
        return true;
    }

    @Override // androidx.appcompat.view.menu.j52
    public final void i(Object obj, byte[] bArr, int i, int i2, ox1 ox1Var) {
        q02 q02Var = (q02) obj;
        if (q02Var.zzb == d72.k()) {
            q02Var.zzb = d72.l();
        }
        jy0.a(obj);
        throw null;
    }
}
