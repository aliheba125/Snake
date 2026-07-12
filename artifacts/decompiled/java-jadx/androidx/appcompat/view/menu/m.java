package androidx.appcompat.view.menu;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class m implements fe0 {
    @Override // androidx.appcompat.view.menu.fe0
    public abstract Map a();

    public boolean b(Object obj) {
        Iterator it = a().values().iterator();
        while (it.hasNext()) {
            if (((Collection) it.next()).contains(obj)) {
                return true;
            }
        }
        return false;
    }

    public boolean equals(Object obj) {
        return ge0.a(this, obj);
    }

    public int hashCode() {
        return a().hashCode();
    }

    public String toString() {
        return a().toString();
    }
}
