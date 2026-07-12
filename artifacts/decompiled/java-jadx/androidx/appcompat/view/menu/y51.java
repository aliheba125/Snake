package androidx.appcompat.view.menu;

import java.io.Closeable;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public abstract class y51 {
    public final Map a = new HashMap();
    public final Set b = new LinkedHashSet();
    public volatile boolean c = false;

    public static void b(Object obj) {
        if (obj instanceof Closeable) {
            try {
                ((Closeable) obj).close();
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }

    public final void a() {
        this.c = true;
        Map map = this.a;
        if (map != null) {
            synchronized (map) {
                try {
                    Iterator it = this.a.values().iterator();
                    while (it.hasNext()) {
                        b(it.next());
                    }
                } finally {
                }
            }
        }
        Set set = this.b;
        if (set != null) {
            synchronized (set) {
                try {
                    Iterator it2 = this.b.iterator();
                    while (it2.hasNext()) {
                        b((Closeable) it2.next());
                    }
                } finally {
                }
            }
            this.b.clear();
        }
        c();
    }

    public void c() {
    }
}
