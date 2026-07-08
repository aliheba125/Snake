package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.py0;
import java.util.Iterator;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public class ma1 {
    public final Executor a;
    public final gp b;
    public final pa1 c;
    public final py0 d;

    public ma1(Executor executor, gp gpVar, pa1 pa1Var, py0 py0Var) {
        this.a = executor;
        this.b = gpVar;
        this.c = pa1Var;
        this.d = py0Var;
    }

    public void c() {
        this.a.execute(new Runnable() { // from class: androidx.appcompat.view.menu.ka1
            @Override // java.lang.Runnable
            public final void run() {
                ma1.this.e();
            }
        });
    }

    public final /* synthetic */ Object d() {
        Iterator it = this.b.q().iterator();
        while (it.hasNext()) {
            this.c.a((d21) it.next(), 1);
        }
        return null;
    }

    public final /* synthetic */ void e() {
        this.d.d(new py0.a() { // from class: androidx.appcompat.view.menu.la1
            @Override // androidx.appcompat.view.menu.py0.a
            public final Object a() {
                Object d;
                d = ma1.this.d();
                return d;
            }
        });
    }
}
