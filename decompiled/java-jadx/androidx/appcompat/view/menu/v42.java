package androidx.appcompat.view.menu;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* loaded from: classes.dex */
public final class v42 {
    public static final v42 c = new v42();
    public final ConcurrentMap b = new ConcurrentHashMap();
    public final o52 a = new s22();

    public static v42 a() {
        return c;
    }

    public final j52 b(Class cls) {
        v02.f(cls, "messageType");
        j52 j52Var = (j52) this.b.get(cls);
        if (j52Var != null) {
            return j52Var;
        }
        j52 a = this.a.a(cls);
        v02.f(cls, "messageType");
        v02.f(a, "schema");
        j52 j52Var2 = (j52) this.b.putIfAbsent(cls, a);
        return j52Var2 != null ? j52Var2 : a;
    }

    public final j52 c(Object obj) {
        return b(obj.getClass());
    }
}
