package androidx.appcompat.view.menu;

import android.content.Context;
import android.os.Bundle;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public class b2 implements a2 {
    public static volatile a2 c;
    public final t3 a;
    public final Map b;

    public b2(t3 t3Var) {
        mj0.i(t3Var);
        this.a = t3Var;
        this.b = new ConcurrentHashMap();
    }

    public static a2 c(or orVar, Context context, by0 by0Var) {
        mj0.i(orVar);
        mj0.i(context);
        mj0.i(by0Var);
        mj0.i(context.getApplicationContext());
        if (c == null) {
            synchronized (b2.class) {
                try {
                    if (c == null) {
                        Bundle bundle = new Bundle(1);
                        if (orVar.t()) {
                            by0Var.a(wi.class, new Executor() { // from class: androidx.appcompat.view.menu.je1
                                @Override // java.util.concurrent.Executor
                                public final void execute(Runnable runnable) {
                                    runnable.run();
                                }
                            }, new zo() { // from class: androidx.appcompat.view.menu.qh1
                                @Override // androidx.appcompat.view.menu.zo
                                public final void a(vo voVar) {
                                    b2.d(voVar);
                                }
                            });
                            bundle.putBoolean("dataCollectionDefaultEnabled", orVar.s());
                        }
                        c = new b2(mn1.f(context, null, null, null, bundle).u());
                    }
                } finally {
                }
            }
        }
        return c;
    }

    public static /* synthetic */ void d(vo voVar) {
        throw null;
    }

    @Override // androidx.appcompat.view.menu.a2
    public void a(String str, String str2, Object obj) {
        if (rh1.e(str) && rh1.c(str, str2)) {
            this.a.b(str, str2, obj);
        }
    }

    @Override // androidx.appcompat.view.menu.a2
    public void b(String str, String str2, Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        if (rh1.e(str) && rh1.b(str2, bundle) && rh1.d(str, str2, bundle)) {
            rh1.a(str, str2, bundle);
            this.a.a(str, str2, bundle);
        }
    }
}
