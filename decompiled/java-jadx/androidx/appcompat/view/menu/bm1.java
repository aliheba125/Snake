package androidx.appcompat.view.menu;

import android.os.Bundle;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class bm1 extends nm1 {
    public final AtomicReference l = new AtomicReference();
    public boolean m;

    /* JADX WARN: Code restructure failed: missing block: B:3:0x0003, code lost:
    
        r3 = r3.get("r");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Object k(Bundle bundle, Class cls) {
        Object obj;
        if (bundle == null || obj == null) {
            return null;
        }
        try {
            return cls.cast(obj);
        } catch (ClassCastException e) {
            String.format("Unexpected object type. Expected, Received: %s, %s", cls.getCanonicalName(), obj.getClass().getCanonicalName());
            throw e;
        }
    }

    @Override // androidx.appcompat.view.menu.hm1
    public final void f(Bundle bundle) {
        synchronized (this.l) {
            try {
                try {
                    this.l.set(bundle);
                    this.m = true;
                } finally {
                    this.l.notify();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final Bundle j(long j) {
        Bundle bundle;
        synchronized (this.l) {
            if (!this.m) {
                try {
                    this.l.wait(j);
                } catch (InterruptedException unused) {
                    return null;
                }
            }
            bundle = (Bundle) this.l.get();
        }
        return bundle;
    }

    public final Long u2(long j) {
        return (Long) k(j(j), Long.class);
    }

    public final String v2(long j) {
        return (String) k(j(j), String.class);
    }
}
