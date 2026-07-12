package androidx.appcompat.view.menu;

import android.net.Uri;

/* loaded from: classes.dex */
public final class su1 implements cv1 {
    public final nu0 a;

    public su1(nu0 nu0Var) {
        this.a = nu0Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0016 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0017  */
    @Override // androidx.appcompat.view.menu.cv1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String a(Uri uri, String str, String str2, String str3) {
        nu0 nu0Var;
        if (uri != null) {
            str = uri.toString();
        } else if (str == null) {
            nu0Var = null;
            if (nu0Var != null) {
                return null;
            }
            if (str2 != null) {
                str3 = str2 + str3;
            }
            return (String) nu0Var.get(str3);
        }
        nu0Var = (nu0) this.a.get(str);
        if (nu0Var != null) {
        }
    }
}
