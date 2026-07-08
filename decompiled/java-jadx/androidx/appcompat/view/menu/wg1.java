package androidx.appcompat.view.menu;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class wg1 implements qg1 {
    public final String m;
    public final ArrayList n;

    public wg1(String str, List list) {
        this.m = str;
        ArrayList arrayList = new ArrayList();
        this.n = arrayList;
        arrayList.addAll(list);
    }

    public final String a() {
        return this.m;
    }

    public final ArrayList b() {
        return this.n;
    }

    @Override // androidx.appcompat.view.menu.qg1
    public final qg1 c() {
        return this;
    }

    @Override // androidx.appcompat.view.menu.qg1
    public final Boolean d() {
        throw new IllegalStateException("Statement cannot be cast as Boolean");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof wg1)) {
            return false;
        }
        wg1 wg1Var = (wg1) obj;
        String str = this.m;
        if (str == null ? wg1Var.m != null : !str.equals(wg1Var.m)) {
            return false;
        }
        ArrayList arrayList = this.n;
        ArrayList arrayList2 = wg1Var.n;
        return arrayList != null ? arrayList.equals(arrayList2) : arrayList2 == null;
    }

    @Override // androidx.appcompat.view.menu.qg1
    public final Double f() {
        throw new IllegalStateException("Statement cannot be cast as Double");
    }

    @Override // androidx.appcompat.view.menu.qg1
    public final String g() {
        throw new IllegalStateException("Statement cannot be cast as String");
    }

    public final int hashCode() {
        String str = this.m;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        ArrayList arrayList = this.n;
        return hashCode + (arrayList != null ? arrayList.hashCode() : 0);
    }

    @Override // androidx.appcompat.view.menu.qg1
    public final Iterator i() {
        return null;
    }

    @Override // androidx.appcompat.view.menu.qg1
    public final qg1 p(String str, pw1 pw1Var, List list) {
        throw new IllegalStateException("Statement is not an evaluated entity");
    }
}
