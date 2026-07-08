package androidx.appcompat.view.menu;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class lh1 {
    public final fr1 a;
    public pw1 b;
    public cf1 c;
    public final ue1 d;

    public lh1() {
        this(new fr1());
    }

    public final cf1 a() {
        return this.c;
    }

    public final void b(jt1 jt1Var) {
        gg1 gg1Var;
        try {
            this.b = this.a.b.d();
            if (this.a.a(this.b, (kt1[]) jt1Var.I().toArray(new kt1[0])) instanceof cg1) {
                throw new IllegalStateException("Program loading failed");
            }
            for (it1 it1Var : jt1Var.G().I()) {
                List I = it1Var.I();
                String H = it1Var.H();
                Iterator it = I.iterator();
                while (it.hasNext()) {
                    qg1 a = this.a.a(this.b, (kt1) it.next());
                    if (!(a instanceof og1)) {
                        throw new IllegalArgumentException("Invalid rule definition");
                    }
                    pw1 pw1Var = this.b;
                    if (pw1Var.g(H)) {
                        qg1 c = pw1Var.c(H);
                        if (!(c instanceof gg1)) {
                            throw new IllegalStateException("Invalid function name: " + H);
                        }
                        gg1Var = (gg1) c;
                    } else {
                        gg1Var = null;
                    }
                    if (gg1Var == null) {
                        throw new IllegalStateException("Rule function is undefined: " + H);
                    }
                    gg1Var.a(this.b, Collections.singletonList(a));
                }
            }
        } catch (Throwable th) {
            throw new pk1(th);
        }
    }

    public final void c(String str, Callable callable) {
        this.a.b(str, callable);
    }

    public final boolean d(hf1 hf1Var) {
        try {
            this.c.b(hf1Var);
            this.a.c.h("runtime.counter", new yf1(Double.valueOf(0.0d)));
            this.d.b(this.b.d(), this.c);
            if (g()) {
                return true;
            }
            return f();
        } catch (Throwable th) {
            throw new pk1(th);
        }
    }

    public final /* synthetic */ gg1 e() {
        return new lf2(this.d);
    }

    public final boolean f() {
        return !this.c.f().isEmpty();
    }

    public final boolean g() {
        return !this.c.d().equals(this.c.a());
    }

    public lh1(fr1 fr1Var) {
        this.a = fr1Var;
        this.b = fr1Var.b.d();
        this.c = new cf1();
        this.d = new ue1();
        fr1Var.b("internal.registerCallback", new Callable() { // from class: androidx.appcompat.view.menu.ee1
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return lh1.this.e();
            }
        });
        fr1Var.b("internal.eventLogger", new Callable() { // from class: androidx.appcompat.view.menu.zm1
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new z22(lh1.this.c);
            }
        });
    }
}
