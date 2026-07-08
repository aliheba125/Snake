package androidx.appcompat.view.menu;

import android.os.Build;
import android.window.BackEvent;
import android.window.OnBackAnimationCallback;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.appcompat.view.menu.cg0;
import java.util.ListIterator;

/* loaded from: classes.dex */
public final class cg0 {
    public final Runnable a;
    public final pf b;
    public final k4 c;
    public bg0 d;
    public OnBackInvokedCallback e;
    public OnBackInvokedDispatcher f;
    public boolean g;
    public boolean h;

    public static final class a extends g80 implements fw {
        public a() {
            super(1);
        }

        public final void a(h7 h7Var) {
            z50.e(h7Var, "backEvent");
            cg0.this.g(h7Var);
        }

        @Override // androidx.appcompat.view.menu.fw
        public /* bridge */ /* synthetic */ Object i(Object obj) {
            a((h7) obj);
            return r31.a;
        }
    }

    public static final class b extends g80 implements fw {
        public b() {
            super(1);
        }

        public final void a(h7 h7Var) {
            z50.e(h7Var, "backEvent");
            cg0.this.f(h7Var);
        }

        @Override // androidx.appcompat.view.menu.fw
        public /* bridge */ /* synthetic */ Object i(Object obj) {
            a((h7) obj);
            return r31.a;
        }
    }

    public static final class c extends g80 implements dw {
        public c() {
            super(0);
        }

        public final void a() {
            cg0.this.e();
        }

        @Override // androidx.appcompat.view.menu.dw
        public /* bridge */ /* synthetic */ Object d() {
            a();
            return r31.a;
        }
    }

    public static final class d extends g80 implements dw {
        public d() {
            super(0);
        }

        public final void a() {
            cg0.this.d();
        }

        @Override // androidx.appcompat.view.menu.dw
        public /* bridge */ /* synthetic */ Object d() {
            a();
            return r31.a;
        }
    }

    public static final class e extends g80 implements dw {
        public e() {
            super(0);
        }

        public final void a() {
            cg0.this.e();
        }

        @Override // androidx.appcompat.view.menu.dw
        public /* bridge */ /* synthetic */ Object d() {
            a();
            return r31.a;
        }
    }

    public static final class f {
        public static final f a = new f();

        public static final void c(dw dwVar) {
            z50.e(dwVar, "$onBackInvoked");
            dwVar.d();
        }

        public final OnBackInvokedCallback b(final dw dwVar) {
            z50.e(dwVar, "onBackInvoked");
            return new OnBackInvokedCallback() { // from class: androidx.appcompat.view.menu.dg0
                public final void onBackInvoked() {
                    cg0.f.c(dw.this);
                }
            };
        }

        public final void d(Object obj, int i, Object obj2) {
            z50.e(obj, "dispatcher");
            z50.e(obj2, "callback");
            ((OnBackInvokedDispatcher) obj).registerOnBackInvokedCallback(i, (OnBackInvokedCallback) obj2);
        }

        public final void e(Object obj, Object obj2) {
            z50.e(obj, "dispatcher");
            z50.e(obj2, "callback");
            ((OnBackInvokedDispatcher) obj).unregisterOnBackInvokedCallback((OnBackInvokedCallback) obj2);
        }
    }

    public static final class g {
        public static final g a = new g();

        public static final class a implements OnBackAnimationCallback {
            public final /* synthetic */ fw a;
            public final /* synthetic */ fw b;
            public final /* synthetic */ dw c;
            public final /* synthetic */ dw d;

            public a(fw fwVar, fw fwVar2, dw dwVar, dw dwVar2) {
                this.a = fwVar;
                this.b = fwVar2;
                this.c = dwVar;
                this.d = dwVar2;
            }

            public void onBackCancelled() {
                this.d.d();
            }

            public void onBackInvoked() {
                this.c.d();
            }

            public void onBackProgressed(BackEvent backEvent) {
                z50.e(backEvent, "backEvent");
                this.b.i(new h7(backEvent));
            }

            public void onBackStarted(BackEvent backEvent) {
                z50.e(backEvent, "backEvent");
                this.a.i(new h7(backEvent));
            }
        }

        public final OnBackInvokedCallback a(fw fwVar, fw fwVar2, dw dwVar, dw dwVar2) {
            z50.e(fwVar, "onBackStarted");
            z50.e(fwVar2, "onBackProgressed");
            z50.e(dwVar, "onBackInvoked");
            z50.e(dwVar2, "onBackCancelled");
            return new a(fwVar, fwVar2, dwVar, dwVar2);
        }
    }

    public cg0(Runnable runnable, pf pfVar) {
        this.a = runnable;
        this.b = pfVar;
        this.c = new k4();
        int i = Build.VERSION.SDK_INT;
        if (i >= 33) {
            this.e = i >= 34 ? g.a.a(new a(), new b(), new c(), new d()) : f.a.b(new e());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.lang.Object] */
    public final void d() {
        bg0 bg0Var;
        bg0 bg0Var2 = this.d;
        if (bg0Var2 == null) {
            k4 k4Var = this.c;
            ListIterator listIterator = k4Var.listIterator(k4Var.size());
            while (true) {
                if (!listIterator.hasPrevious()) {
                    bg0Var = 0;
                    break;
                } else {
                    bg0Var = listIterator.previous();
                    if (((bg0) bg0Var).e()) {
                        break;
                    }
                }
            }
            bg0Var2 = bg0Var;
        }
        this.d = null;
        if (bg0Var2 != null) {
            bg0Var2.a();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.lang.Object] */
    public final void e() {
        bg0 bg0Var;
        bg0 bg0Var2 = this.d;
        if (bg0Var2 == null) {
            k4 k4Var = this.c;
            ListIterator listIterator = k4Var.listIterator(k4Var.size());
            while (true) {
                if (!listIterator.hasPrevious()) {
                    bg0Var = 0;
                    break;
                } else {
                    bg0Var = listIterator.previous();
                    if (((bg0) bg0Var).e()) {
                        break;
                    }
                }
            }
            bg0Var2 = bg0Var;
        }
        this.d = null;
        if (bg0Var2 != null) {
            bg0Var2.b();
            return;
        }
        Runnable runnable = this.a;
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.lang.Object] */
    public final void f(h7 h7Var) {
        bg0 bg0Var;
        bg0 bg0Var2 = this.d;
        if (bg0Var2 == null) {
            k4 k4Var = this.c;
            ListIterator listIterator = k4Var.listIterator(k4Var.size());
            while (true) {
                if (!listIterator.hasPrevious()) {
                    bg0Var = 0;
                    break;
                } else {
                    bg0Var = listIterator.previous();
                    if (((bg0) bg0Var).e()) {
                        break;
                    }
                }
            }
            bg0Var2 = bg0Var;
        }
        if (bg0Var2 != null) {
            bg0Var2.c(h7Var);
        }
    }

    public final void g(h7 h7Var) {
        Object obj;
        k4 k4Var = this.c;
        ListIterator<E> listIterator = k4Var.listIterator(k4Var.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                obj = null;
                break;
            } else {
                obj = listIterator.previous();
                if (((bg0) obj).e()) {
                    break;
                }
            }
        }
        bg0 bg0Var = (bg0) obj;
        this.d = bg0Var;
        if (bg0Var != null) {
            bg0Var.d(h7Var);
        }
    }

    public final void h(OnBackInvokedDispatcher onBackInvokedDispatcher) {
        z50.e(onBackInvokedDispatcher, "invoker");
        this.f = onBackInvokedDispatcher;
        i(this.h);
    }

    public final void i(boolean z) {
        OnBackInvokedDispatcher onBackInvokedDispatcher = this.f;
        OnBackInvokedCallback onBackInvokedCallback = this.e;
        if (onBackInvokedDispatcher == null || onBackInvokedCallback == null) {
            return;
        }
        if (z && !this.g) {
            f.a.d(onBackInvokedDispatcher, 0, onBackInvokedCallback);
            this.g = true;
        } else {
            if (z || !this.g) {
                return;
            }
            f.a.e(onBackInvokedDispatcher, onBackInvokedCallback);
            this.g = false;
        }
    }

    public cg0(Runnable runnable) {
        this(runnable, null);
    }
}
