package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.q02;
import java.util.Collections;
import java.util.Map;

/* loaded from: classes.dex */
public class qz1 {
    public static volatile qz1 b;
    public static final qz1 c = new qz1(true);
    public final Map a = Collections.emptyMap();

    public static final class a {
        public final Object a;
        public final int b;

        public a(Object obj, int i) {
            this.a = obj;
            this.b = i;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.a == aVar.a && this.b == aVar.b;
        }

        public final int hashCode() {
            return (System.identityHashCode(this.a) * 65535) + this.b;
        }
    }

    public qz1(boolean z) {
    }

    public static qz1 a() {
        qz1 qz1Var = b;
        if (qz1Var != null) {
            return qz1Var;
        }
        synchronized (qz1.class) {
            try {
                qz1 qz1Var2 = b;
                if (qz1Var2 != null) {
                    return qz1Var2;
                }
                qz1 a2 = o02.a(qz1.class);
                b = a2;
                return a2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final q02.d b(w32 w32Var, int i) {
        jy0.a(this.a.get(new a(w32Var, i)));
        return null;
    }
}
