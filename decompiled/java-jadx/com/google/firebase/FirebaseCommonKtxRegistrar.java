package com.google.firebase;

import androidx.annotation.Keep;
import androidx.appcompat.view.menu.c90;
import androidx.appcompat.view.menu.de;
import androidx.appcompat.view.menu.f31;
import androidx.appcompat.view.menu.il;
import androidx.appcompat.view.menu.k8;
import androidx.appcompat.view.menu.nh;
import androidx.appcompat.view.menu.sc;
import androidx.appcompat.view.menu.u7;
import androidx.appcompat.view.menu.ud;
import androidx.appcompat.view.menu.ul0;
import androidx.appcompat.view.menu.xd;
import androidx.appcompat.view.menu.xp;
import androidx.appcompat.view.menu.z50;
import com.google.firebase.components.ComponentRegistrar;
import java.util.List;
import java.util.concurrent.Executor;

@Keep
/* loaded from: classes.dex */
public final class FirebaseCommonKtxRegistrar implements ComponentRegistrar {

    public static final class a implements de {
        public static final a a = new a();

        @Override // androidx.appcompat.view.menu.de
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public final nh a(xd xdVar) {
            Object e = xdVar.e(ul0.a(u7.class, Executor.class));
            z50.d(e, "c.get(Qualified.qualifie…a, Executor::class.java))");
            return xp.a((Executor) e);
        }
    }

    public static final class b implements de {
        public static final b a = new b();

        @Override // androidx.appcompat.view.menu.de
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public final nh a(xd xdVar) {
            Object e = xdVar.e(ul0.a(c90.class, Executor.class));
            z50.d(e, "c.get(Qualified.qualifie…a, Executor::class.java))");
            return xp.a((Executor) e);
        }
    }

    public static final class c implements de {
        public static final c a = new c();

        @Override // androidx.appcompat.view.menu.de
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public final nh a(xd xdVar) {
            Object e = xdVar.e(ul0.a(k8.class, Executor.class));
            z50.d(e, "c.get(Qualified.qualifie…a, Executor::class.java))");
            return xp.a((Executor) e);
        }
    }

    public static final class d implements de {
        public static final d a = new d();

        @Override // androidx.appcompat.view.menu.de
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public final nh a(xd xdVar) {
            Object e = xdVar.e(ul0.a(f31.class, Executor.class));
            z50.d(e, "c.get(Qualified.qualifie…a, Executor::class.java))");
            return xp.a((Executor) e);
        }
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<ud> getComponents() {
        List<ud> g;
        ud d2 = ud.c(ul0.a(u7.class, nh.class)).b(il.i(ul0.a(u7.class, Executor.class))).f(a.a).d();
        z50.d(d2, "builder(Qualified.qualif…cher()\n    }\n    .build()");
        ud d3 = ud.c(ul0.a(c90.class, nh.class)).b(il.i(ul0.a(c90.class, Executor.class))).f(b.a).d();
        z50.d(d3, "builder(Qualified.qualif…cher()\n    }\n    .build()");
        ud d4 = ud.c(ul0.a(k8.class, nh.class)).b(il.i(ul0.a(k8.class, Executor.class))).f(c.a).d();
        z50.d(d4, "builder(Qualified.qualif…cher()\n    }\n    .build()");
        ud d5 = ud.c(ul0.a(f31.class, nh.class)).b(il.i(ul0.a(f31.class, Executor.class))).f(d.a).d();
        z50.d(d5, "builder(Qualified.qualif…cher()\n    }\n    .build()");
        g = sc.g(d2, d3, d4, d5);
        return g;
    }
}
