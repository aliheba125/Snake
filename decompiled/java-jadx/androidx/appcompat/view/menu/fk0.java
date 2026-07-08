package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.ls0;

/* loaded from: classes.dex */
public final class fk0 extends ta implements gk0 {
    public fk0(kh khVar, sa saVar) {
        super(khVar, saVar, true, true);
    }

    @Override // androidx.appcompat.view.menu.g
    public void I0(Throwable th, boolean z) {
        if (L0().k(th) || z) {
            return;
        }
        rh.a(b(), th);
    }

    @Override // androidx.appcompat.view.menu.g
    /* renamed from: M0, reason: merged with bridge method [inline-methods] */
    public void J0(r31 r31Var) {
        ls0.a.a(L0(), null, 1, null);
    }

    @Override // androidx.appcompat.view.menu.g, androidx.appcompat.view.menu.b70, androidx.appcompat.view.menu.q60
    public boolean c() {
        return super.c();
    }
}
