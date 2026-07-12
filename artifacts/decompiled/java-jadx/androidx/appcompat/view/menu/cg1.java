package androidx.appcompat.view.menu;

import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class cg1 implements qg1 {
    public final qg1 m;
    public final String n;

    public cg1(String str) {
        this.m = qg1.e;
        this.n = str;
    }

    public final qg1 a() {
        return this.m;
    }

    public final String b() {
        return this.n;
    }

    @Override // androidx.appcompat.view.menu.qg1
    public final qg1 c() {
        return new cg1(this.n, this.m.c());
    }

    @Override // androidx.appcompat.view.menu.qg1
    public final Boolean d() {
        throw new IllegalStateException("Control is not a boolean");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof cg1)) {
            return false;
        }
        cg1 cg1Var = (cg1) obj;
        return this.n.equals(cg1Var.n) && this.m.equals(cg1Var.m);
    }

    @Override // androidx.appcompat.view.menu.qg1
    public final Double f() {
        throw new IllegalStateException("Control is not a double");
    }

    @Override // androidx.appcompat.view.menu.qg1
    public final String g() {
        throw new IllegalStateException("Control is not a String");
    }

    public final int hashCode() {
        return (this.n.hashCode() * 31) + this.m.hashCode();
    }

    @Override // androidx.appcompat.view.menu.qg1
    public final Iterator i() {
        return null;
    }

    @Override // androidx.appcompat.view.menu.qg1
    public final qg1 p(String str, pw1 pw1Var, List list) {
        throw new IllegalStateException("Control does not have functions");
    }

    public cg1(String str, qg1 qg1Var) {
        this.m = qg1Var;
        this.n = str;
    }
}
