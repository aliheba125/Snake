package androidx.appcompat.view.menu;

import android.app.Activity;
import androidx.appcompat.view.menu.k81;

/* loaded from: classes.dex */
public final class k81 implements g81 {
    public final ca1 b;
    public final b81 c;

    public static final class a extends ly0 implements tw {
        public int q;
        public /* synthetic */ Object r;
        public final /* synthetic */ Activity t;

        /* renamed from: androidx.appcompat.view.menu.k81$a$a, reason: collision with other inner class name */
        public static final class C0013a extends g80 implements dw {
            public final /* synthetic */ k81 n;
            public final /* synthetic */ pf o;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0013a(k81 k81Var, pf pfVar) {
                super(0);
                this.n = k81Var;
                this.o = pfVar;
            }

            public final void a() {
                this.n.c.b(this.o);
            }

            @Override // androidx.appcompat.view.menu.dw
            public /* bridge */ /* synthetic */ Object d() {
                a();
                return r31.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Activity activity, xg xgVar) {
            super(2, xgVar);
            this.t = activity;
        }

        public static final void q(gk0 gk0Var, y91 y91Var) {
            gk0Var.y(y91Var);
        }

        @Override // androidx.appcompat.view.menu.y7
        public final xg a(Object obj, xg xgVar) {
            a aVar = k81.this.new a(this.t, xgVar);
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
                final gk0 gk0Var = (gk0) this.r;
                pf pfVar = new pf() { // from class: androidx.appcompat.view.menu.j81
                    @Override // androidx.appcompat.view.menu.pf, androidx.window.extensions.core.util.function.Consumer
                    public final void accept(Object obj2) {
                        k81.a.q(gk0.this, (y91) obj2);
                    }
                };
                k81.this.c.a(this.t, new ic0(), pfVar);
                C0013a c0013a = new C0013a(k81.this, pfVar);
                this.q = 1;
                if (ek0.a(gk0Var, c0013a, this) == c) {
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
        /* renamed from: p, reason: merged with bridge method [inline-methods] */
        public final Object h(gk0 gk0Var, xg xgVar) {
            return ((a) a(gk0Var, xgVar)).k(r31.a);
        }
    }

    public k81(ca1 ca1Var, b81 b81Var) {
        z50.e(ca1Var, "windowMetricsCalculator");
        z50.e(b81Var, "windowBackend");
        this.b = ca1Var;
        this.c = b81Var;
    }

    @Override // androidx.appcompat.view.menu.g81
    public ss a(Activity activity) {
        z50.e(activity, "activity");
        return us.d(us.a(new a(activity, null)), fm.c());
    }
}
