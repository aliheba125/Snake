package androidx.appcompat.view.menu;

import android.content.Context;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class kq implements b81 {
    public static final void d(pf pfVar) {
        z50.e(pfVar, "$callback");
        pfVar.accept(new y91(sc.e()));
    }

    @Override // androidx.appcompat.view.menu.b81
    public void a(Context context, Executor executor, final pf pfVar) {
        z50.e(context, "context");
        z50.e(executor, "executor");
        z50.e(pfVar, "callback");
        executor.execute(new Runnable() { // from class: androidx.appcompat.view.menu.jq
            @Override // java.lang.Runnable
            public final void run() {
                kq.d(pf.this);
            }
        });
    }

    @Override // androidx.appcompat.view.menu.b81
    public void b(pf pfVar) {
        z50.e(pfVar, "callback");
    }
}
