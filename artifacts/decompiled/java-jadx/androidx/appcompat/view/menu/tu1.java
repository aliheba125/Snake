package androidx.appcompat.view.menu;

import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseArray;
import androidx.appcompat.view.menu.lz1;
import androidx.appcompat.view.menu.y1;

/* loaded from: classes.dex */
public final class tu1 extends dz1 {
    public static final Pair z = new Pair("", 0L);
    public SharedPreferences c;
    public bv1 d;
    public final dv1 e;
    public final dv1 f;
    public final gv1 g;
    public String h;
    public boolean i;
    public long j;
    public final dv1 k;
    public final zu1 l;
    public final gv1 m;
    public final xu1 n;
    public final zu1 o;
    public final dv1 p;
    public final dv1 q;
    public boolean r;
    public zu1 s;
    public zu1 t;
    public dv1 u;
    public final gv1 v;
    public final gv1 w;
    public final dv1 x;
    public final xu1 y;

    public tu1(cx1 cx1Var) {
        super(cx1Var);
        this.k = new dv1(this, "session_timeout", 1800000L);
        this.l = new zu1(this, "start_new_session", true);
        this.p = new dv1(this, "last_pause_time", 0L);
        this.q = new dv1(this, "session_id", 0L);
        this.m = new gv1(this, "non_personalized_ads", null);
        this.n = new xu1(this, "last_received_uri_timestamps_by_source", null);
        this.o = new zu1(this, "allow_remote_dynamite", false);
        this.e = new dv1(this, "first_open_time", 0L);
        this.f = new dv1(this, "app_install_time", 0L);
        this.g = new gv1(this, "app_instance_id", null);
        this.s = new zu1(this, "app_backgrounded", false);
        this.t = new zu1(this, "deep_link_retrieval_complete", false);
        this.u = new dv1(this, "deep_link_retrieval_attempts", 0L);
        this.v = new gv1(this, "firebase_feature_rollouts", null);
        this.w = new gv1(this, "deferred_attribution_cache", null);
        this.x = new dv1(this, "deferred_attribution_cache_timestamp", 0L);
        this.y = new xu1(this, "default_event_parameters", null);
    }

    public final boolean A(lz1 lz1Var) {
        n();
        int b = lz1Var.b();
        if (!x(b)) {
            return false;
        }
        SharedPreferences.Editor edit = F().edit();
        edit.putString("consent_settings", lz1Var.v());
        edit.putInt("consent_source", b);
        edit.apply();
        return true;
    }

    public final boolean B() {
        SharedPreferences sharedPreferences = this.c;
        if (sharedPreferences == null) {
            return false;
        }
        return sharedPreferences.contains("deferred_analytics_collection");
    }

    public final void C(Boolean bool) {
        n();
        SharedPreferences.Editor edit = F().edit();
        if (bool != null) {
            edit.putBoolean("measurement_enabled_from_api", bool.booleanValue());
        } else {
            edit.remove("measurement_enabled_from_api");
        }
        edit.apply();
    }

    public final void D(String str) {
        n();
        SharedPreferences.Editor edit = F().edit();
        edit.putString("admob_app_id", str);
        edit.apply();
    }

    public final void E(boolean z2) {
        n();
        l().K().b("App measurement setting deferred collection", Boolean.valueOf(z2));
        SharedPreferences.Editor edit = F().edit();
        edit.putBoolean("deferred_analytics_collection", z2);
        edit.apply();
    }

    public final SharedPreferences F() {
        n();
        o();
        mj0.i(this.c);
        return this.c;
    }

    public final void G(String str) {
        n();
        SharedPreferences.Editor edit = F().edit();
        edit.putString("gmp_app_id", str);
        edit.apply();
    }

    public final SparseArray H() {
        Bundle a = this.n.a();
        if (a == null) {
            return new SparseArray();
        }
        int[] intArray = a.getIntArray("uriSources");
        long[] longArray = a.getLongArray("uriTimestamps");
        if (intArray == null || longArray == null) {
            return new SparseArray();
        }
        if (intArray.length != longArray.length) {
            l().G().a("Trigger URI source and timestamp array lengths do not match");
            return new SparseArray();
        }
        SparseArray sparseArray = new SparseArray();
        for (int i = 0; i < intArray.length; i++) {
            sparseArray.put(intArray[i], Long.valueOf(longArray[i]));
        }
        return sparseArray;
    }

    public final fh1 I() {
        n();
        return fh1.c(F().getString("dma_consent_settings", null));
    }

    public final lz1 J() {
        n();
        return lz1.f(F().getString("consent_settings", "G1"), F().getInt("consent_source", 100));
    }

    public final Boolean K() {
        n();
        if (F().contains("use_service")) {
            return Boolean.valueOf(F().getBoolean("use_service", false));
        }
        return null;
    }

    public final Boolean L() {
        n();
        if (F().contains("measurement_enabled_from_api")) {
            return Boolean.valueOf(F().getBoolean("measurement_enabled_from_api", true));
        }
        return null;
    }

    public final Boolean M() {
        n();
        if (F().contains("measurement_enabled")) {
            return Boolean.valueOf(F().getBoolean("measurement_enabled", true));
        }
        return null;
    }

    public final String N() {
        n();
        String string = F().getString("previous_os_version", null);
        f().o();
        String str = Build.VERSION.RELEASE;
        if (!TextUtils.isEmpty(str) && !str.equals(string)) {
            SharedPreferences.Editor edit = F().edit();
            edit.putString("previous_os_version", str);
            edit.apply();
        }
        return string;
    }

    public final String O() {
        n();
        return F().getString("admob_app_id", null);
    }

    public final String P() {
        n();
        return F().getString("gmp_app_id", null);
    }

    public final void Q() {
        n();
        Boolean M = M();
        SharedPreferences.Editor edit = F().edit();
        edit.clear();
        edit.apply();
        if (M != null) {
            v(M);
        }
    }

    @Override // androidx.appcompat.view.menu.dz1
    public final boolean s() {
        return true;
    }

    @Override // androidx.appcompat.view.menu.dz1
    public final void t() {
        SharedPreferences sharedPreferences = a().getSharedPreferences("com.google.android.gms.measurement.prefs", 0);
        this.c = sharedPreferences;
        boolean z2 = sharedPreferences.getBoolean("has_been_opened", false);
        this.r = z2;
        if (!z2) {
            SharedPreferences.Editor edit = this.c.edit();
            edit.putBoolean("has_been_opened", true);
            edit.apply();
        }
        this.d = new bv1(this, "health_monitor", Math.max(0L, ((Long) si1.e.a(null)).longValue()));
    }

    public final Pair u(String str) {
        n();
        if (ua2.a() && e().s(si1.R0) && !J().l(lz1.a.AD_STORAGE)) {
            return new Pair("", Boolean.FALSE);
        }
        long b = b().b();
        if (this.h != null && b < this.j) {
            return new Pair(this.h, Boolean.valueOf(this.i));
        }
        this.j = b + e().C(str);
        y1.b(true);
        try {
            y1.a a = y1.a(a());
            this.h = "";
            String a2 = a.a();
            if (a2 != null) {
                this.h = a2;
            }
            this.i = a.b();
        } catch (Exception e) {
            l().F().b("Unable to get advertising id", e);
            this.h = "";
        }
        y1.b(false);
        return new Pair(this.h, Boolean.valueOf(this.i));
    }

    public final void v(Boolean bool) {
        n();
        SharedPreferences.Editor edit = F().edit();
        if (bool != null) {
            edit.putBoolean("measurement_enabled", bool.booleanValue());
        } else {
            edit.remove("measurement_enabled");
        }
        edit.apply();
    }

    public final void w(boolean z2) {
        n();
        SharedPreferences.Editor edit = F().edit();
        edit.putBoolean("use_service", z2);
        edit.apply();
    }

    public final boolean x(int i) {
        return lz1.k(i, F().getInt("consent_source", 100));
    }

    public final boolean y(long j) {
        return j - this.k.a() > this.p.a();
    }

    public final boolean z(fh1 fh1Var) {
        n();
        if (!lz1.k(fh1Var.a(), I().a())) {
            return false;
        }
        SharedPreferences.Editor edit = F().edit();
        edit.putString("dma_consent_settings", fh1Var.i());
        edit.apply();
        return true;
    }
}
