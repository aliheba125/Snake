package androidx.appcompat.view.menu;

import java.util.List;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class rf2 extends gg1 {
    public final Callable o;

    public rf2(String str, Callable callable) {
        super(str);
        this.o = callable;
    }

    @Override // androidx.appcompat.view.menu.gg1
    public final qg1 a(pw1 pw1Var, List list) {
        try {
            return y02.b(this.o.call());
        } catch (Exception unused) {
            return qg1.e;
        }
    }
}
