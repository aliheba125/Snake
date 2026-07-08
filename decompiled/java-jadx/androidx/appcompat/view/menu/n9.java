package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.q60;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes.dex */
public final class n9 {
    public final ReentrantLock a = new ReentrantLock();
    public final Map b = new LinkedHashMap();

    public static final class a extends ly0 implements tw {
        public int q;
        public final /* synthetic */ ss r;
        public final /* synthetic */ pf s;

        /* renamed from: androidx.appcompat.view.menu.n9$a$a, reason: collision with other inner class name */
        public static final class C0024a implements ts {
            public final /* synthetic */ pf a;

            public C0024a(pf pfVar) {
                this.a = pfVar;
            }

            @Override // androidx.appcompat.view.menu.ts
            public final Object a(Object obj, xg xgVar) {
                this.a.accept(obj);
                return r31.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(ss ssVar, pf pfVar, xg xgVar) {
            super(2, xgVar);
            this.r = ssVar;
            this.s = pfVar;
        }

        @Override // androidx.appcompat.view.menu.y7
        public final xg a(Object obj, xg xgVar) {
            return new a(this.r, this.s, xgVar);
        }

        @Override // androidx.appcompat.view.menu.y7
        public final Object k(Object obj) {
            Object c;
            c = c60.c();
            int i = this.q;
            if (i == 0) {
                op0.b(obj);
                ss ssVar = this.r;
                C0024a c0024a = new C0024a(this.s);
                this.q = 1;
                if (ssVar.b(c0024a, this) == c) {
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
        public final Object h(th thVar, xg xgVar) {
            return ((a) a(thVar, xgVar)).k(r31.a);
        }
    }

    public final void a(Executor executor, pf pfVar, ss ssVar) {
        q60 d;
        z50.e(executor, "executor");
        z50.e(pfVar, "consumer");
        z50.e(ssVar, "flow");
        ReentrantLock reentrantLock = this.a;
        reentrantLock.lock();
        try {
            if (this.b.get(pfVar) == null) {
                th a2 = uh.a(xp.a(executor));
                Map map = this.b;
                d = c9.d(a2, null, null, new a(ssVar, pfVar, null), 3, null);
                map.put(pfVar, d);
            }
            r31 r31Var = r31.a;
            reentrantLock.unlock();
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public final void b(pf pfVar) {
        z50.e(pfVar, "consumer");
        ReentrantLock reentrantLock = this.a;
        reentrantLock.lock();
        try {
            q60 q60Var = (q60) this.b.get(pfVar);
            if (q60Var != null) {
                q60.a.a(q60Var, null, 1, null);
            }
            reentrantLock.unlock();
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }
}
