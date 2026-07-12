package androidx.appcompat.view.menu;

import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public abstract class bg0 {
    public boolean a;
    public final CopyOnWriteArrayList b = new CopyOnWriteArrayList();
    public dw c;

    public bg0(boolean z) {
        this.a = z;
    }

    public abstract void a();

    public abstract void b();

    public abstract void c(h7 h7Var);

    public abstract void d(h7 h7Var);

    public final boolean e() {
        return this.a;
    }

    public final void f() {
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            ((w9) it.next()).cancel();
        }
    }

    public final void g(boolean z) {
        this.a = z;
        dw dwVar = this.c;
        if (dwVar != null) {
            dwVar.d();
        }
    }
}
