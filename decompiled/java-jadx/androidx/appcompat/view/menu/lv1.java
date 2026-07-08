package androidx.appcompat.view.menu;

import android.content.pm.PackageParser;
import android.os.Bundle;

/* loaded from: classes.dex */
public final class lv1 {
    public final cx1 a;

    public lv1(o82 o82Var) {
        this.a = o82Var.i0();
    }

    public final Bundle a(String str, zj1 zj1Var) {
        this.a.h().n();
        if (zj1Var == null) {
            this.a.l().L().a("Attempting to use Install Referrer Service while it is not initialized");
            return null;
        }
        Bundle bundle = new Bundle();
        bundle.putString("package_name", str);
        try {
            Bundle f = zj1Var.f(bundle);
            if (f != null) {
                return f;
            }
            this.a.l().G().a("Install Referrer Service returned a null response");
            return null;
        } catch (Exception e) {
            this.a.l().G().b("Exception occurred while retrieving the Install Referrer", e.getMessage());
            return null;
        }
    }

    public final boolean b() {
        try {
            ah0 a = sa1.a(this.a.a());
            if (a != null) {
                return a.e("com.android.vending", PackageParser.PARSE_IS_PRIVILEGED).versionCode >= 80837300;
            }
            this.a.l().K().a("Failed to get PackageManager for Install Referrer Play Store compatibility check");
            return false;
        } catch (Exception e) {
            this.a.l().K().b("Failed to retrieve Play Store version for Install Referrer", e);
            return false;
        }
    }
}
