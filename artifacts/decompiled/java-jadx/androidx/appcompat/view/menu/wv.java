package androidx.appcompat.view.menu;

import android.view.ViewGroup;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class wv {
    public static final wv a = new wv();
    public static c b = c.d;

    public enum a {
        PENALTY_LOG,
        PENALTY_DEATH,
        DETECT_FRAGMENT_REUSE,
        DETECT_FRAGMENT_TAG_USAGE,
        DETECT_WRONG_NESTED_HIERARCHY,
        DETECT_RETAIN_INSTANCE_USAGE,
        DETECT_SET_USER_VISIBLE_HINT,
        DETECT_TARGET_FRAGMENT_USAGE,
        DETECT_WRONG_FRAGMENT_CONTAINER
    }

    public interface b {
    }

    public static final class c {
        public static final a c = new a(null);
        public static final c d;
        public final Set a;
        public final Map b;

        public static final class a {
            public a() {
            }

            public /* synthetic */ a(lj ljVar) {
                this();
            }
        }

        static {
            Set b;
            Map d2;
            b = ht0.b();
            d2 = cb0.d();
            d = new c(b, null, d2);
        }

        public c(Set set, b bVar, Map map) {
            z50.e(set, "flags");
            z50.e(map, "allowedViolations");
            this.a = set;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Map.Entry entry : map.entrySet()) {
                linkedHashMap.put((String) entry.getKey(), (Set) entry.getValue());
            }
            this.b = linkedHashMap;
        }

        public final Set a() {
            return this.a;
        }

        public final b b() {
            return null;
        }

        public final Map c() {
            return this.b;
        }
    }

    public static final void d(String str, d71 d71Var) {
        z50.e(d71Var, "$violation");
        StringBuilder sb = new StringBuilder();
        sb.append("Policy violation with PENALTY_DEATH in ");
        sb.append(str);
        throw d71Var;
    }

    public static final void f(av avVar, String str) {
        z50.e(avVar, "fragment");
        z50.e(str, "previousFragmentId");
        rv rvVar = new rv(avVar, str);
        wv wvVar = a;
        wvVar.e(rvVar);
        c b2 = wvVar.b(avVar);
        if (b2.a().contains(a.DETECT_FRAGMENT_REUSE) && wvVar.j(b2, avVar.getClass(), rvVar.getClass())) {
            wvVar.c(b2, rvVar);
        }
    }

    public static final void g(av avVar, ViewGroup viewGroup) {
        z50.e(avVar, "fragment");
        z50.e(viewGroup, "container");
        ua1 ua1Var = new ua1(avVar, viewGroup);
        wv wvVar = a;
        wvVar.e(ua1Var);
        c b2 = wvVar.b(avVar);
        if (b2.a().contains(a.DETECT_WRONG_FRAGMENT_CONTAINER) && wvVar.j(b2, avVar.getClass(), ua1Var.getClass())) {
            wvVar.c(b2, ua1Var);
        }
    }

    public static final void h(av avVar, av avVar2, int i) {
        z50.e(avVar, "fragment");
        z50.e(avVar2, "expectedParentFragment");
        va1 va1Var = new va1(avVar, avVar2, i);
        wv wvVar = a;
        wvVar.e(va1Var);
        c b2 = wvVar.b(avVar);
        if (b2.a().contains(a.DETECT_WRONG_NESTED_HIERARCHY) && wvVar.j(b2, avVar.getClass(), va1Var.getClass())) {
            wvVar.c(b2, va1Var);
        }
    }

    public final c b(av avVar) {
        while (avVar != null) {
            if (avVar.T()) {
                mv C = avVar.C();
                z50.d(C, "declaringFragment.parentFragmentManager");
                if (C.o0() != null) {
                    c o0 = C.o0();
                    z50.b(o0);
                    return o0;
                }
            }
            avVar = avVar.B();
        }
        return b;
    }

    public final void c(c cVar, final d71 d71Var) {
        av a2 = d71Var.a();
        final String name = a2.getClass().getName();
        if (cVar.a().contains(a.PENALTY_LOG)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Policy violation in ");
            sb.append(name);
        }
        cVar.b();
        if (cVar.a().contains(a.PENALTY_DEATH)) {
            i(a2, new Runnable() { // from class: androidx.appcompat.view.menu.vv
                @Override // java.lang.Runnable
                public final void run() {
                    wv.d(name, d71Var);
                }
            });
        }
    }

    public final void e(d71 d71Var) {
        if (mv.v0(3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("StrictMode violation in ");
            sb.append(d71Var.a().getClass().getName());
        }
    }

    public final void i(av avVar, Runnable runnable) {
        if (avVar.T()) {
            avVar.C().j0();
            throw null;
        }
        runnable.run();
    }

    public final boolean j(c cVar, Class cls, Class cls2) {
        boolean n;
        Set set = (Set) cVar.c().get(cls.getName());
        if (set == null) {
            return true;
        }
        if (!z50.a(cls2.getSuperclass(), d71.class)) {
            n = ad.n(set, cls2.getSuperclass());
            if (n) {
                return false;
            }
        }
        return !set.contains(cls2);
    }
}
