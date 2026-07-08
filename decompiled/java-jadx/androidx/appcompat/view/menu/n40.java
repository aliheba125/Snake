package androidx.appcompat.view.menu;

import java.io.Serializable;
import java.util.Comparator;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class n40 extends a8 implements Serializable {
    public final transient m40 m;
    public final transient int n;

    public static class a {
        public final Map a = ei0.c();
        public Comparator b;
        public Comparator c;
    }

    public n40(m40 m40Var, int i) {
        this.m = m40Var;
        this.n = i;
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean b(Object obj) {
        return obj != null && super.b(obj);
    }

    @Override // androidx.appcompat.view.menu.m, androidx.appcompat.view.menu.fe0
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public m40 a() {
        return this.m;
    }

    @Override // androidx.appcompat.view.menu.m
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // androidx.appcompat.view.menu.m
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // androidx.appcompat.view.menu.m
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }
}
