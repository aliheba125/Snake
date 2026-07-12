package androidx.appcompat.view.menu;

import android.content.Context;
import java.util.Collections;
import java.util.Set;

/* loaded from: classes.dex */
public class k21 implements i21 {
    public static volatile l21 e;
    public final ec a;
    public final ec b;
    public final tr0 c;
    public final i41 d;

    public k21(ec ecVar, ec ecVar2, tr0 tr0Var, i41 i41Var, ma1 ma1Var) {
        this.a = ecVar;
        this.b = ecVar2;
        this.c = tr0Var;
        this.d = i41Var;
        ma1Var.c();
    }

    public static k21 c() {
        l21 l21Var = e;
        if (l21Var != null) {
            return l21Var.c();
        }
        throw new IllegalStateException("Not initialized!");
    }

    public static Set d(pl plVar) {
        return plVar instanceof io ? Collections.unmodifiableSet(((io) plVar).a()) : Collections.singleton(lo.b("proto"));
    }

    public static void f(Context context) {
        if (e == null) {
            synchronized (k21.class) {
                try {
                    if (e == null) {
                        e = ri.d().b(context).a();
                    }
                } finally {
                }
            }
        }
    }

    @Override // androidx.appcompat.view.menu.i21
    public void a(ns0 ns0Var, n21 n21Var) {
        this.c.a(ns0Var.f().f(ns0Var.c().c()), b(ns0Var), n21Var);
    }

    public final ap b(ns0 ns0Var) {
        return ap.a().i(this.a.a()).k(this.b.a()).j(ns0Var.g()).h(new jo(ns0Var.b(), ns0Var.d())).g(ns0Var.c().a()).d();
    }

    public i41 e() {
        return this.d;
    }

    public e21 g(pl plVar) {
        return new f21(d(plVar), d21.a().b(plVar.b()).c(plVar.c()).a(), this);
    }
}
