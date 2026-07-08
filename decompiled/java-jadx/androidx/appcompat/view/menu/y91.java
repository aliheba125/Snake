package androidx.appcompat.view.menu;

import java.util.List;

/* loaded from: classes.dex */
public final class y91 {
    public final List a;

    public y91(List list) {
        z50.e(list, "displayFeatures");
        this.a = list;
    }

    public final List a() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !z50.a(y91.class, obj.getClass())) {
            return false;
        }
        return z50.a(this.a, ((y91) obj).a);
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public String toString() {
        String r;
        r = ad.r(this.a, ", ", "WindowLayoutInfo{ DisplayFeatures[", "] }", 0, null, null, 56, null);
        return r;
    }
}
