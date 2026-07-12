package androidx.appcompat.view.menu;

import android.database.sqlite.SQLiteException;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class bz1 implements Callable {
    public final /* synthetic */ cb2 a;
    public final /* synthetic */ Bundle b;
    public final /* synthetic */ kx1 c;

    public bz1(kx1 kx1Var, cb2 cb2Var, Bundle bundle) {
        this.c = kx1Var;
        this.a = cb2Var;
        this.b = bundle;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Object call() {
        o82 o82Var;
        o82 o82Var2;
        o82Var = this.c.l;
        o82Var.o0();
        o82Var2 = this.c.l;
        cb2 cb2Var = this.a;
        Bundle bundle = this.b;
        o82Var2.h().n();
        if (!sc2.a() || !o82Var2.c0().B(cb2Var.m, si1.L0) || cb2Var.m == null) {
            return new ArrayList();
        }
        if (bundle != null) {
            int[] intArray = bundle.getIntArray("uriSources");
            long[] longArray = bundle.getLongArray("uriTimestamps");
            if (intArray != null) {
                if (longArray == null || longArray.length != intArray.length) {
                    o82Var2.l().G().a("Uri sources and timestamps do not match");
                } else {
                    for (int i = 0; i < intArray.length; i++) {
                        lg1 e0 = o82Var2.e0();
                        String str = cb2Var.m;
                        int i2 = intArray[i];
                        long j = longArray[i];
                        mj0.e(str);
                        e0.n();
                        e0.u();
                        try {
                            int delete = e0.B().delete("trigger_uris", "app_id=? and source=? and timestamp_millis<=?", new String[]{str, String.valueOf(i2), String.valueOf(j)});
                            e0.l().K().d("Pruned " + delete + " trigger URIs. appId, source, timestamp", str, Integer.valueOf(i2), Long.valueOf(j));
                        } catch (SQLiteException e) {
                            e0.l().G().c("Error pruning trigger URIs. appId", pt1.v(str), e);
                        }
                    }
                }
            }
        }
        return o82Var2.e0().K0(cb2Var.m);
    }
}
