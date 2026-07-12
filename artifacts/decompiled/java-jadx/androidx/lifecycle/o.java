package androidx.lifecycle;

import androidx.appcompat.view.menu.a90;
import androidx.appcompat.view.menu.mr0;
import androidx.appcompat.view.menu.z50;
import androidx.lifecycle.f;

/* loaded from: classes.dex */
public final class o implements h {
    public final mr0 a;

    public o(mr0 mr0Var) {
        z50.e(mr0Var, "provider");
        this.a = mr0Var;
    }

    @Override // androidx.lifecycle.h
    public void c(a90 a90Var, f.a aVar) {
        z50.e(a90Var, "source");
        z50.e(aVar, "event");
        if (aVar == f.a.ON_CREATE) {
            a90Var.h().c(this);
            this.a.c();
        } else {
            throw new IllegalStateException(("Next event must be ON_CREATE, it was " + aVar).toString());
        }
    }
}
