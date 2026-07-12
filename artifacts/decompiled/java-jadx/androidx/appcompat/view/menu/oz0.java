package androidx.appcompat.view.menu;

import android.os.Bundle;
import androidx.appcompat.view.menu.m2;

/* loaded from: classes.dex */
public class oz0 implements m2.d {
    public static final oz0 b = a().a();
    public final String a;

    public static class a {
        public String a;

        public /* synthetic */ a(db1 db1Var) {
        }

        public oz0 a() {
            return new oz0(this.a, null);
        }
    }

    public /* synthetic */ oz0(String str, fb1 fb1Var) {
        this.a = str;
    }

    public static a a() {
        return new a(null);
    }

    public final Bundle b() {
        Bundle bundle = new Bundle();
        String str = this.a;
        if (str != null) {
            bundle.putString("api", str);
        }
        return bundle;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof oz0) {
            return wf0.a(this.a, ((oz0) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        return wf0.b(this.a);
    }
}
