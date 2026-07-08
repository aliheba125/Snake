package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public class ug0 implements el0 {
    public static final nk c = new nk() { // from class: androidx.appcompat.view.menu.sg0
        @Override // androidx.appcompat.view.menu.nk
        public final void a(el0 el0Var) {
            ug0.d(el0Var);
        }
    };
    public static final el0 d = new el0() { // from class: androidx.appcompat.view.menu.tg0
        @Override // androidx.appcompat.view.menu.el0
        public final Object get() {
            Object e;
            e = ug0.e();
            return e;
        }
    };
    public nk a;
    public volatile el0 b;

    public ug0(nk nkVar, el0 el0Var) {
        this.a = nkVar;
        this.b = el0Var;
    }

    public static ug0 c() {
        return new ug0(c, d);
    }

    public static /* synthetic */ void d(el0 el0Var) {
    }

    public static /* synthetic */ Object e() {
        return null;
    }

    public void f(el0 el0Var) {
        nk nkVar;
        if (this.b != d) {
            throw new IllegalStateException("provide() can be called only once.");
        }
        synchronized (this) {
            nkVar = this.a;
            this.a = null;
            this.b = el0Var;
        }
        nkVar.a(el0Var);
    }

    @Override // androidx.appcompat.view.menu.el0
    public Object get() {
        return this.b.get();
    }
}
