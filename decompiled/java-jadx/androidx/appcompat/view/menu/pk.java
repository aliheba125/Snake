package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.kd0;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class pk {
    public final kd0 a;
    public Map b;
    public final kd0.c c;

    public class a implements kd0.c {
        public a() {
        }

        @Override // androidx.appcompat.view.menu.kd0.c
        public void C(id0 id0Var, kd0.d dVar) {
            pk.a(pk.this);
        }
    }

    public pk(si siVar) {
        a aVar = new a();
        this.c = aVar;
        kd0 kd0Var = new kd0(siVar, "flutter/deferredcomponent", qw0.b);
        this.a = kd0Var;
        kd0Var.e(aVar);
        pt.e().a();
        this.b = new HashMap();
    }

    public static /* synthetic */ qk a(pk pkVar) {
        pkVar.getClass();
        return null;
    }
}
