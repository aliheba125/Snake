package androidx.appcompat.view.menu;

import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class fr1 {
    public final fi1 a;
    public final pw1 b;
    public final pw1 c;
    public final c52 d;

    public fr1() {
        fi1 fi1Var = new fi1();
        this.a = fi1Var;
        pw1 pw1Var = new pw1(null, fi1Var);
        this.c = pw1Var;
        this.b = pw1Var.d();
        c52 c52Var = new c52();
        this.d = c52Var;
        pw1Var.h("require", new ag2(c52Var));
        c52Var.b("internal.platform", new Callable() { // from class: androidx.appcompat.view.menu.ap1
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new wf2();
            }
        });
        pw1Var.h("runtime.counter", new yf1(Double.valueOf(0.0d)));
    }

    public final qg1 a(pw1 pw1Var, kt1... kt1VarArr) {
        qg1 qg1Var = qg1.e;
        for (kt1 kt1Var : kt1VarArr) {
            qg1Var = y02.a(kt1Var);
            iu1.b(this.c);
            if ((qg1Var instanceof wg1) || (qg1Var instanceof sg1)) {
                qg1Var = this.a.a(pw1Var, qg1Var);
            }
        }
        return qg1Var;
    }

    public final void b(String str, Callable callable) {
        this.d.b(str, callable);
    }
}
