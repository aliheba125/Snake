package androidx.appcompat.view.menu;

import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class eh1 implements qg1 {
    @Override // androidx.appcompat.view.menu.qg1
    public final qg1 c() {
        return qg1.e;
    }

    @Override // androidx.appcompat.view.menu.qg1
    public final Boolean d() {
        return Boolean.FALSE;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return obj instanceof eh1;
    }

    @Override // androidx.appcompat.view.menu.qg1
    public final Double f() {
        return Double.valueOf(Double.NaN);
    }

    @Override // androidx.appcompat.view.menu.qg1
    public final String g() {
        return "undefined";
    }

    @Override // androidx.appcompat.view.menu.qg1
    public final Iterator i() {
        return null;
    }

    @Override // androidx.appcompat.view.menu.qg1
    public final qg1 p(String str, pw1 pw1Var, List list) {
        throw new IllegalStateException(String.format("Undefined has no function %s", str));
    }
}
