package androidx.appcompat.view.menu;

import android.os.Bundle;
import android.text.TextUtils;

/* loaded from: classes.dex */
public final class c92 implements ba2 {
    public final /* synthetic */ o82 a;

    public c92(o82 o82Var) {
        this.a = o82Var;
    }

    @Override // androidx.appcompat.view.menu.ba2
    public final void l(String str, String str2, Bundle bundle) {
        cx1 cx1Var;
        cx1 cx1Var2;
        if (!TextUtils.isEmpty(str)) {
            this.a.h().D(new a92(this, str, str2, bundle));
            return;
        }
        cx1Var = this.a.l;
        if (cx1Var != null) {
            cx1Var2 = this.a.l;
            cx1Var2.l().G().b("AppId not known when logging event", str2);
        }
    }
}
