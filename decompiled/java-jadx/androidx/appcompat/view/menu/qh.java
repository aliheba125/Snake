package androidx.appcompat.view.menu;

import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class qh {
    public static final void a(kh khVar, Throwable th) {
        Iterator it = ph.a().iterator();
        while (it.hasNext()) {
            try {
                ((oh) it.next()).r(khVar, th);
            } catch (Throwable th2) {
                ph.b(rh.b(th, th2));
            }
        }
        try {
            pp.a(th, new tl(khVar));
        } catch (Throwable unused) {
        }
        ph.b(th);
    }
}
