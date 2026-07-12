package androidx.appcompat.view.menu;

import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public abstract class nh0 {
    public static Object a(List list) {
        Object b = mh0.c.b(list);
        if (b != null) {
            return b;
        }
        Object b2 = mh0.b.b(new Object[0]);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            mh0.d.b(b2, it.next());
        }
        mh0.f.b(b2, Boolean.TRUE);
        return b2;
    }
}
