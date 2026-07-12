package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.py0;
import java.util.concurrent.Executor;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public class yj implements tr0 {
    public static final Logger f = Logger.getLogger(k21.class.getName());
    public final pa1 a;
    public final Executor b;
    public final r7 c;
    public final gp d;
    public final py0 e;

    public yj(Executor executor, r7 r7Var, pa1 pa1Var, gp gpVar, py0 py0Var) {
        this.b = executor;
        this.c = r7Var;
        this.a = pa1Var;
        this.d = gpVar;
        this.e = py0Var;
    }

    @Override // androidx.appcompat.view.menu.tr0
    public void a(final d21 d21Var, final ap apVar, final n21 n21Var) {
        this.b.execute(new Runnable() { // from class: androidx.appcompat.view.menu.vj
            @Override // java.lang.Runnable
            public final void run() {
                yj.this.e(d21Var, n21Var, apVar);
            }
        });
    }

    public final /* synthetic */ Object d(d21 d21Var, ap apVar) {
        this.d.k(d21Var, apVar);
        this.a.a(d21Var, 1);
        return null;
    }

    public final /* synthetic */ void e(final d21 d21Var, n21 n21Var, ap apVar) {
        try {
            c21 a = this.c.a(d21Var.b());
            if (a == null) {
                String format = String.format("Transport backend '%s' is not registered", d21Var.b());
                f.warning(format);
                n21Var.a(new IllegalArgumentException(format));
            } else {
                final ap a2 = a.a(apVar);
                this.e.d(new py0.a() { // from class: androidx.appcompat.view.menu.wj
                    @Override // androidx.appcompat.view.menu.py0.a
                    public final Object a() {
                        Object d;
                        d = yj.this.d(d21Var, a2);
                        return d;
                    }
                });
                n21Var.a(null);
            }
        } catch (Exception e) {
            f.warning("Error scheduling event " + e.getMessage());
            n21Var.a(e);
        }
    }
}
