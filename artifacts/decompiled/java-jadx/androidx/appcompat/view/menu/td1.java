package androidx.appcompat.view.menu;

import android.app.Dialog;

/* loaded from: classes.dex */
public final class td1 extends zb1 {
    public final /* synthetic */ Dialog a;
    public final /* synthetic */ vd1 b;

    public td1(vd1 vd1Var, Dialog dialog) {
        this.b = vd1Var;
        this.a = dialog;
    }

    @Override // androidx.appcompat.view.menu.zb1
    public final void a() {
        this.b.n.o();
        if (this.a.isShowing()) {
            this.a.dismiss();
        }
    }
}
