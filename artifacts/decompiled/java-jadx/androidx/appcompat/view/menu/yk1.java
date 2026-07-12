package androidx.appcompat.view.menu;

import java.net.URL;
import java.net.URLConnection;

/* loaded from: classes.dex */
public abstract class yk1 {
    public static yk1 a = new el1();

    public static synchronized yk1 a() {
        yk1 yk1Var;
        synchronized (yk1.class) {
            yk1Var = a;
        }
        return yk1Var;
    }

    public abstract URLConnection b(URL url, String str);
}
