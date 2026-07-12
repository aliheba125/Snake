package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.gr0;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class xq extends gr0 {
    public final HashMap q = new HashMap();

    public boolean contains(Object obj) {
        return this.q.containsKey(obj);
    }

    @Override // androidx.appcompat.view.menu.gr0
    public gr0.c f(Object obj) {
        return (gr0.c) this.q.get(obj);
    }

    @Override // androidx.appcompat.view.menu.gr0
    public Object k(Object obj, Object obj2) {
        gr0.c f = f(obj);
        if (f != null) {
            return f.n;
        }
        this.q.put(obj, i(obj, obj2));
        return null;
    }

    @Override // androidx.appcompat.view.menu.gr0
    public Object n(Object obj) {
        Object n = super.n(obj);
        this.q.remove(obj);
        return n;
    }

    public Map.Entry p(Object obj) {
        if (contains(obj)) {
            return ((gr0.c) this.q.get(obj)).p;
        }
        return null;
    }
}
