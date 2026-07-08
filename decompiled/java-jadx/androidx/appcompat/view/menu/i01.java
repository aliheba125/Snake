package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.kh;

/* loaded from: classes.dex */
public abstract class i01 {
    public static final my0 a = new my0("NO_THREAD_ELEMENTS");
    public static final tw b = a.n;
    public static final tw c = b.n;
    public static final tw d = c.n;

    public static final class a extends g80 implements tw {
        public static final a n = new a();

        public a() {
            super(2);
        }

        @Override // androidx.appcompat.view.menu.tw
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object h(Object obj, kh.b bVar) {
            if (!(bVar instanceof h01)) {
                return obj;
            }
            Integer num = obj instanceof Integer ? (Integer) obj : null;
            int intValue = num != null ? num.intValue() : 1;
            return intValue == 0 ? bVar : Integer.valueOf(intValue + 1);
        }
    }

    public static final class b extends g80 implements tw {
        public static final b n = new b();

        public b() {
            super(2);
        }

        @Override // androidx.appcompat.view.menu.tw
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final h01 h(h01 h01Var, kh.b bVar) {
            if (h01Var != null) {
                return h01Var;
            }
            if (bVar instanceof h01) {
                return (h01) bVar;
            }
            return null;
        }
    }

    public static final class c extends g80 implements tw {
        public static final c n = new c();

        public c() {
            super(2);
        }

        @Override // androidx.appcompat.view.menu.tw
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final o01 h(o01 o01Var, kh.b bVar) {
            if (bVar instanceof h01) {
                h01 h01Var = (h01) bVar;
                o01Var.a(h01Var, h01Var.C(o01Var.a));
            }
            return o01Var;
        }
    }

    public static final void a(kh khVar, Object obj) {
        if (obj == a) {
            return;
        }
        if (obj instanceof o01) {
            ((o01) obj).b(khVar);
            return;
        }
        Object p = khVar.p(null, c);
        z50.c(p, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        ((h01) p).m(khVar, obj);
    }

    public static final Object b(kh khVar) {
        Object p = khVar.p(0, b);
        z50.b(p);
        return p;
    }

    public static final Object c(kh khVar, Object obj) {
        if (obj == null) {
            obj = b(khVar);
        }
        if (obj == 0) {
            return a;
        }
        if (obj instanceof Integer) {
            return khVar.p(new o01(khVar, ((Number) obj).intValue()), d);
        }
        z50.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        return ((h01) obj).C(khVar);
    }
}
