package androidx.appcompat.view.menu;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class c52 {
    public Map a = new HashMap();

    public final qg1 a(String str) {
        if (!this.a.containsKey(str)) {
            return qg1.e;
        }
        try {
            return (qg1) ((Callable) this.a.get(str)).call();
        } catch (Exception unused) {
            throw new IllegalStateException("Failed to create API implementation: " + str);
        }
    }

    public final void b(String str, Callable callable) {
        this.a.put(str, callable);
    }
}
