package androidx.appcompat.view.menu;

import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Bundle;

/* loaded from: classes.dex */
public final class pv1 implements Runnable {
    public final /* synthetic */ zj1 m;
    public final /* synthetic */ ServiceConnection n;
    public final /* synthetic */ jv1 o;

    public pv1(jv1 jv1Var, zj1 zj1Var, ServiceConnection serviceConnection) {
        this.o = jv1Var;
        this.m = zj1Var;
        this.n = serviceConnection;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        jv1 jv1Var = this.o;
        lv1 lv1Var = jv1Var.m;
        str = jv1Var.l;
        zj1 zj1Var = this.m;
        ServiceConnection serviceConnection = this.n;
        Bundle a = lv1Var.a(str, zj1Var);
        lv1Var.a.h().n();
        lv1Var.a.Q();
        if (a != null) {
            long j = a.getLong("install_begin_timestamp_seconds", 0L) * 1000;
            if (j == 0) {
                lv1Var.a.l().L().a("Service response is missing Install Referrer install timestamp");
            } else {
                String string = a.getString("install_referrer");
                if (string == null || string.isEmpty()) {
                    lv1Var.a.l().G().a("No referrer defined in Install Referrer response");
                } else {
                    lv1Var.a.l().K().b("InstallReferrer API result", string);
                    Bundle C = lv1Var.a.L().C(Uri.parse("?" + string), kd2.a() && lv1Var.a.z().s(si1.F0), nb2.a() && lv1Var.a.z().s(si1.a1));
                    if (C == null) {
                        lv1Var.a.l().G().a("No campaign params defined in Install Referrer result");
                    } else {
                        String string2 = C.getString("medium");
                        if (string2 != null && !"(not set)".equalsIgnoreCase(string2) && !"organic".equalsIgnoreCase(string2)) {
                            long j2 = a.getLong("referrer_click_timestamp_seconds", 0L) * 1000;
                            if (j2 == 0) {
                                lv1Var.a.l().G().a("Install Referrer is missing click timestamp for ad campaign");
                            } else {
                                C.putLong("click_timestamp", j2);
                            }
                        }
                        if (j == lv1Var.a.F().f.a()) {
                            lv1Var.a.l().K().a("Logging Install Referrer campaign from module while it may have already been logged.");
                        }
                        if (lv1Var.a.p()) {
                            lv1Var.a.F().f.b(j);
                            lv1Var.a.l().K().b("Logging Install Referrer campaign from gmscore with ", "referrer API v2");
                            C.putString("_cis", "referrer API v2");
                            lv1Var.a.H().Y("auto", "_cmp", C, str);
                        }
                    }
                }
            }
        }
        if (serviceConnection != null) {
            hf.b().c(lv1Var.a.a(), serviceConnection);
        }
    }
}
