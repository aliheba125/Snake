package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.ah;

/* loaded from: classes.dex */
public abstract class xa extends ua {
    public final ss d;

    public static final class a extends ly0 implements tw {
        public int q;
        public /* synthetic */ Object r;

        public a(xg xgVar) {
            super(2, xgVar);
        }

        @Override // androidx.appcompat.view.menu.y7
        public final xg a(Object obj, xg xgVar) {
            a aVar = xa.this.new a(xgVar);
            aVar.r = obj;
            return aVar;
        }

        @Override // androidx.appcompat.view.menu.y7
        public final Object k(Object obj) {
            Object c;
            c = c60.c();
            int i = this.q;
            if (i == 0) {
                op0.b(obj);
                ts tsVar = (ts) this.r;
                xa xaVar = xa.this;
                this.q = 1;
                if (xaVar.m(tsVar, this) == c) {
                    return c;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                op0.b(obj);
            }
            return r31.a;
        }

        @Override // androidx.appcompat.view.menu.tw
        /* renamed from: o, reason: merged with bridge method [inline-methods] */
        public final Object h(ts tsVar, xg xgVar) {
            return ((a) a(tsVar, xgVar)).k(r31.a);
        }
    }

    public xa(ss ssVar, kh khVar, int i, u8 u8Var) {
        super(khVar, i, u8Var);
        this.d = ssVar;
    }

    public static /* synthetic */ Object j(xa xaVar, ts tsVar, xg xgVar) {
        Object c;
        Object c2;
        Object c3;
        if (xaVar.b == -3) {
            kh b = xgVar.b();
            kh o = b.o(xaVar.a);
            if (z50.a(o, b)) {
                Object m = xaVar.m(tsVar, xgVar);
                c3 = c60.c();
                return m == c3 ? m : r31.a;
            }
            ah.b bVar = ah.b;
            if (z50.a(o.d(bVar), b.d(bVar))) {
                Object l = xaVar.l(tsVar, o, xgVar);
                c2 = c60.c();
                return l == c2 ? l : r31.a;
            }
        }
        Object b2 = super.b(tsVar, xgVar);
        c = c60.c();
        return b2 == c ? b2 : r31.a;
    }

    public static /* synthetic */ Object k(xa xaVar, gk0 gk0Var, xg xgVar) {
        Object c;
        Object m = xaVar.m(new os0(gk0Var), xgVar);
        c = c60.c();
        return m == c ? m : r31.a;
    }

    @Override // androidx.appcompat.view.menu.ua, androidx.appcompat.view.menu.ss
    public Object b(ts tsVar, xg xgVar) {
        return j(this, tsVar, xgVar);
    }

    @Override // androidx.appcompat.view.menu.ua
    public Object e(gk0 gk0Var, xg xgVar) {
        return k(this, gk0Var, xgVar);
    }

    public final Object l(ts tsVar, kh khVar, xg xgVar) {
        ts d;
        Object c;
        d = wa.d(tsVar, xgVar.b());
        Object c2 = wa.c(khVar, d, null, new a(null), xgVar, 4, null);
        c = c60.c();
        return c2 == c ? c2 : r31.a;
    }

    public abstract Object m(ts tsVar, xg xgVar);

    @Override // androidx.appcompat.view.menu.ua
    public String toString() {
        return this.d + " -> " + super.toString();
    }
}
