package androidx.appcompat.view.menu;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class kt {
    public static volatile kt b;
    public final Map a = new HashMap();

    public static kt b() {
        if (b == null) {
            synchronized (kt.class) {
                try {
                    if (b == null) {
                        b = new kt();
                    }
                } finally {
                }
            }
        }
        return b;
    }

    public io.flutter.embedding.engine.b a(String str) {
        return (io.flutter.embedding.engine.b) this.a.get(str);
    }
}
