package androidx.appcompat.view.menu;

import android.content.Context;
import android.text.TextUtils;

/* loaded from: classes.dex */
public final class os {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final String f;
    public final String g;

    public os(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        mj0.m(!mx0.a(str), "ApplicationId must be set.");
        this.b = str;
        this.a = str2;
        this.c = str3;
        this.d = str4;
        this.e = str5;
        this.f = str6;
        this.g = str7;
    }

    public static os a(Context context) {
        kx0 kx0Var = new kx0(context);
        String a = kx0Var.a("google_app_id");
        if (TextUtils.isEmpty(a)) {
            return null;
        }
        return new os(a, kx0Var.a("google_api_key"), kx0Var.a("firebase_database_url"), kx0Var.a("ga_trackingId"), kx0Var.a("gcm_defaultSenderId"), kx0Var.a("google_storage_bucket"), kx0Var.a("project_id"));
    }

    public String b() {
        return this.a;
    }

    public String c() {
        return this.b;
    }

    public String d() {
        return this.e;
    }

    public String e() {
        return this.g;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof os)) {
            return false;
        }
        os osVar = (os) obj;
        return wf0.a(this.b, osVar.b) && wf0.a(this.a, osVar.a) && wf0.a(this.c, osVar.c) && wf0.a(this.d, osVar.d) && wf0.a(this.e, osVar.e) && wf0.a(this.f, osVar.f) && wf0.a(this.g, osVar.g);
    }

    public int hashCode() {
        return wf0.b(this.b, this.a, this.c, this.d, this.e, this.f, this.g);
    }

    public String toString() {
        return wf0.c(this).a("applicationId", this.b).a("apiKey", this.a).a("databaseUrl", this.c).a("gcmSenderId", this.e).a("storageBucket", this.f).a("projectId", this.g).toString();
    }
}
