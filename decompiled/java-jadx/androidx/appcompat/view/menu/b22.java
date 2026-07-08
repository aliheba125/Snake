package androidx.appcompat.view.menu;

import android.os.Bundle;
import android.text.TextUtils;

/* loaded from: classes.dex */
public final class b22 implements ba2 {
    public final /* synthetic */ d02 a;

    public b22(d02 d02Var) {
        this.a = d02Var;
    }

    @Override // androidx.appcompat.view.menu.ba2
    public final void l(String str, String str2, Bundle bundle) {
        if (TextUtils.isEmpty(str)) {
            this.a.y0("auto", str2, bundle);
        } else {
            this.a.Y("auto", str2, bundle, str);
        }
    }
}
