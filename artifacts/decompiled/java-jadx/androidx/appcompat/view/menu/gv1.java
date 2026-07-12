package androidx.appcompat.view.menu;

import android.content.SharedPreferences;

/* loaded from: classes.dex */
public final class gv1 {
    public final String a;
    public final String b;
    public boolean c;
    public String d;
    public final /* synthetic */ tu1 e;

    public gv1(tu1 tu1Var, String str, String str2) {
        this.e = tu1Var;
        mj0.e(str);
        this.a = str;
        this.b = null;
    }

    public final String a() {
        if (!this.c) {
            this.c = true;
            this.d = this.e.F().getString(this.a, null);
        }
        return this.d;
    }

    public final void b(String str) {
        SharedPreferences.Editor edit = this.e.F().edit();
        edit.putString(this.a, str);
        edit.apply();
        this.d = str;
    }
}
