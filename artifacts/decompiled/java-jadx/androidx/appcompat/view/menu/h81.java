package androidx.appcompat.view.menu;

import android.app.Activity;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class h81 implements g81 {
    public final g81 b;
    public final n9 c;

    public h81(g81 g81Var, n9 n9Var) {
        this.b = g81Var;
        this.c = n9Var;
    }

    @Override // androidx.appcompat.view.menu.g81
    public ss a(Activity activity) {
        z50.e(activity, "activity");
        return this.b.a(activity);
    }

    public final void b(Activity activity, Executor executor, pf pfVar) {
        z50.e(activity, "activity");
        z50.e(executor, "executor");
        z50.e(pfVar, "consumer");
        this.c.a(executor, pfVar, this.b.a(activity));
    }

    public final void c(pf pfVar) {
        z50.e(pfVar, "consumer");
        this.c.b(pfVar);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public h81(g81 g81Var) {
        this(g81Var, new n9());
        z50.e(g81Var, "tracker");
    }
}
