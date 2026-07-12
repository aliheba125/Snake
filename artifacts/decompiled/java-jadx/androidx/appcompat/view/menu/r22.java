package androidx.appcompat.view.menu;

import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;

/* loaded from: classes.dex */
public final class r22 implements Application.ActivityLifecycleCallbacks {
    public final /* synthetic */ d02 a;

    public r22(d02 d02Var) {
        this.a = d02Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x00c8 A[Catch: RuntimeException -> 0x0028, TRY_ENTER, TryCatch #0 {RuntimeException -> 0x0028, blocks: (B:3:0x000b, B:5:0x0018, B:8:0x002c, B:10:0x0032, B:13:0x0043, B:19:0x00c8, B:21:0x00d4, B:24:0x00e5, B:26:0x00eb, B:29:0x0100, B:31:0x0106, B:34:0x0113, B:36:0x0119, B:37:0x012e, B:40:0x013a, B:44:0x0141, B:48:0x0164, B:49:0x0180, B:51:0x0171, B:52:0x0187, B:54:0x018d, B:56:0x0193, B:58:0x0199, B:60:0x019f, B:62:0x01a7, B:64:0x01af, B:66:0x01b5, B:69:0x01bb, B:71:0x0057, B:74:0x005f, B:76:0x0067, B:78:0x006d, B:80:0x0073, B:82:0x0079, B:84:0x0081, B:86:0x0089, B:89:0x0093, B:91:0x009b, B:92:0x00a7, B:94:0x00bf), top: B:2:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0140 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0141 A[Catch: RuntimeException -> 0x0028, TRY_LEAVE, TryCatch #0 {RuntimeException -> 0x0028, blocks: (B:3:0x000b, B:5:0x0018, B:8:0x002c, B:10:0x0032, B:13:0x0043, B:19:0x00c8, B:21:0x00d4, B:24:0x00e5, B:26:0x00eb, B:29:0x0100, B:31:0x0106, B:34:0x0113, B:36:0x0119, B:37:0x012e, B:40:0x013a, B:44:0x0141, B:48:0x0164, B:49:0x0180, B:51:0x0171, B:52:0x0187, B:54:0x018d, B:56:0x0193, B:58:0x0199, B:60:0x019f, B:62:0x01a7, B:64:0x01af, B:66:0x01b5, B:69:0x01bb, B:71:0x0057, B:74:0x005f, B:76:0x0067, B:78:0x006d, B:80:0x0073, B:82:0x0079, B:84:0x0081, B:86:0x0089, B:89:0x0093, B:91:0x009b, B:92:0x00a7, B:94:0x00bf), top: B:2:0x000b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ void a(r22 r22Var, boolean z, Uri uri, String str, String str2) {
        Bundle C;
        Uri uri2;
        boolean z2;
        r22Var.a.n();
        try {
            x92 j = r22Var.a.j();
            boolean z3 = kd2.a() && r22Var.a.e().s(si1.E0);
            boolean z4 = nb2.a() && r22Var.a.e().s(si1.Z0);
            if (!TextUtils.isEmpty(str2)) {
                if (str2.contains("gclid") || ((z4 && str2.contains("gbraid")) || str2.contains("utm_campaign") || str2.contains("utm_source") || str2.contains("utm_medium") || str2.contains("utm_id") || str2.contains("dclid") || str2.contains("srsltid") || (z3 && str2.contains("sfmc_id")))) {
                    C = j.C(Uri.parse("https://google.com/search?" + str2), z3, z4);
                    if (C != null) {
                        C.putString("_cis", "referrer");
                    }
                    if (z) {
                        x92 j2 = r22Var.a.j();
                        boolean z5 = kd2.a() && r22Var.a.e().s(si1.E0);
                        if (nb2.a() && r22Var.a.e().s(si1.Z0)) {
                            uri2 = uri;
                            z2 = true;
                        } else {
                            uri2 = uri;
                            z2 = false;
                        }
                        Bundle C2 = j2.C(uri2, z5, z2);
                        if (C2 != null) {
                            C2.putString("_cis", "intent");
                            if (!C2.containsKey("gclid") && C != null && C.containsKey("gclid")) {
                                C2.putString("_cer", String.format("gclid=%s", C.getString("gclid")));
                            }
                            r22Var.a.z0(str, "_cmp", C2);
                            r22Var.a.n.b(str, C2);
                        }
                    }
                    if (TextUtils.isEmpty(str2)) {
                        r22Var.a.l().F().b("Activity created with referrer", str2);
                        if (r22Var.a.e().s(si1.l0)) {
                            if (C != null) {
                                r22Var.a.z0(str, "_cmp", C);
                                r22Var.a.n.b(str, C);
                            } else {
                                r22Var.a.l().F().b("Referrer does not contain valid parameters", str2);
                            }
                            r22Var.a.b0("auto", "_ldl", null, true);
                            return;
                        }
                        if (!str2.contains("gclid") || (!str2.contains("utm_campaign") && !str2.contains("utm_source") && !str2.contains("utm_medium") && !str2.contains("utm_term") && !str2.contains("utm_content"))) {
                            r22Var.a.l().F().a("Activity created with data 'referrer' without required params");
                            return;
                        } else {
                            if (TextUtils.isEmpty(str2)) {
                                return;
                            }
                            r22Var.a.b0("auto", "_ldl", str2, true);
                            return;
                        }
                    }
                    return;
                }
                j.l().F().a("Activity created with data 'referrer' without required params");
            }
            C = null;
            if (z) {
            }
            if (TextUtils.isEmpty(str2)) {
            }
        } catch (RuntimeException e) {
            r22Var.a.l().G().b("Throwable caught in handleReferrerForOnActivityCreated", e);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        try {
            try {
                this.a.l().K().a("onActivityCreated");
                Intent intent = activity.getIntent();
                if (intent == null) {
                    this.a.s().F(activity, bundle);
                    return;
                }
                Uri data = intent.getData();
                if (data == null || !data.isHierarchical()) {
                    Bundle extras = intent.getExtras();
                    if (extras != null) {
                        String string = extras.getString("com.android.vending.referral_url");
                        if (!TextUtils.isEmpty(string)) {
                            data = Uri.parse(string);
                        }
                    }
                    data = null;
                }
                Uri uri = data;
                if (uri != null && uri.isHierarchical()) {
                    this.a.j();
                    this.a.h().D(new d32(this, bundle == null, uri, x92.e0(intent) ? "gs" : "auto", uri.getQueryParameter("referrer")));
                    this.a.s().F(activity, bundle);
                }
            } catch (RuntimeException e) {
                this.a.l().G().b("Throwable caught in onActivityCreated", e);
                this.a.s().F(activity, bundle);
            }
        } finally {
            this.a.s().F(activity, bundle);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        this.a.s().E(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        this.a.s().Q(activity);
        y62 u = this.a.u();
        u.h().D(new c72(u, u.b().b()));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        y62 u = this.a.u();
        u.h().D(new k72(u, u.b().b()));
        this.a.s().S(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        this.a.s().R(activity, bundle);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }
}
