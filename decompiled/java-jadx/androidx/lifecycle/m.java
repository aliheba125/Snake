package androidx.lifecycle;

import androidx.appcompat.view.menu.a90;
import androidx.lifecycle.a;
import androidx.lifecycle.f;

/* loaded from: classes.dex */
public class m implements h {
    public final Object a;
    public final a.C0043a b;

    public m(Object obj) {
        this.a = obj;
        this.b = a.c.c(obj.getClass());
    }

    @Override // androidx.lifecycle.h
    public void c(a90 a90Var, f.a aVar) {
        this.b.a(a90Var, aVar, this.a);
    }
}
