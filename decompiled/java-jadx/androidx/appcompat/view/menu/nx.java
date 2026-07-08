package androidx.appcompat.view.menu;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public class nx {
    public static volatile nx b;
    public final Set a = new HashSet();

    public static nx a() {
        nx nxVar = b;
        if (nxVar == null) {
            synchronized (nx.class) {
                try {
                    nxVar = b;
                    if (nxVar == null) {
                        nxVar = new nx();
                        b = nxVar;
                    }
                } finally {
                }
            }
        }
        return nxVar;
    }

    public Set b() {
        Set unmodifiableSet;
        synchronized (this.a) {
            unmodifiableSet = Collections.unmodifiableSet(this.a);
        }
        return unmodifiableSet;
    }
}
