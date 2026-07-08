package androidx.appcompat.view.menu;

import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class ff2 extends pf2 {
    public final Callable f;

    public /* synthetic */ ff2(Callable callable, ze2 ze2Var) {
        super();
        this.f = callable;
    }

    @Override // androidx.appcompat.view.menu.pf2
    public final String a() {
        try {
            return (String) this.f.call();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
