package androidx.appcompat.view.menu;

import android.content.Context;
import android.os.Bundle;
import androidx.appcompat.view.menu.mn1;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;

/* loaded from: classes.dex */
public final class tn1 extends mn1.a {
    public final /* synthetic */ String q;
    public final /* synthetic */ String r;
    public final /* synthetic */ Context s;
    public final /* synthetic */ Bundle t;
    public final /* synthetic */ mn1 u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tn1(mn1 mn1Var, String str, String str2, Context context, Bundle bundle) {
        super(mn1Var);
        this.u = mn1Var;
        this.q = str;
        this.r = str2;
        this.s = context;
        this.t = bundle;
    }

    @Override // androidx.appcompat.view.menu.mn1.a
    public final void a() {
        boolean B;
        String str;
        String str2;
        String str3;
        fm1 fm1Var;
        fm1 fm1Var2;
        String str4;
        String unused;
        try {
            B = this.u.B(this.q, this.r);
            if (B) {
                String str5 = this.r;
                String str6 = this.q;
                str4 = this.u.a;
                str3 = str5;
                str2 = str6;
                str = str4;
            } else {
                str = null;
                str2 = null;
                str3 = null;
            }
            mj0.i(this.s);
            mn1 mn1Var = this.u;
            mn1Var.i = mn1Var.c(this.s, true);
            fm1Var = this.u.i;
            if (fm1Var == null) {
                unused = this.u.a;
                return;
            }
            int a = DynamiteModule.a(this.s, ModuleDescriptor.MODULE_ID);
            jn1 jn1Var = new jn1(82001L, Math.max(a, r0), DynamiteModule.b(this.s, ModuleDescriptor.MODULE_ID) < a, str, str2, str3, this.t, lw1.a(this.s));
            fm1Var2 = this.u.i;
            ((fm1) mj0.i(fm1Var2)).initialize(vf0.k(this.s), jn1Var, this.m);
        } catch (Exception e) {
            this.u.p(e, true, false);
        }
    }
}
