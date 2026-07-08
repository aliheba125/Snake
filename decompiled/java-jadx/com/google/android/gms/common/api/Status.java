package com.google.android.gms.common.api;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.appcompat.view.menu.ef;
import androidx.appcompat.view.menu.fd;
import androidx.appcompat.view.menu.jr0;
import androidx.appcompat.view.menu.r;
import androidx.appcompat.view.menu.uh1;
import androidx.appcompat.view.menu.wf0;
import com.google.android.gms.common.internal.ReflectedParcelable;

/* loaded from: classes.dex */
public final class Status extends r implements ReflectedParcelable {
    public final int m;
    public final int n;
    public final String o;
    public final PendingIntent p;
    public final ef q;
    public static final Status r = new Status(-1);
    public static final Status s = new Status(0);
    public static final Status t = new Status(14);
    public static final Status u = new Status(8);
    public static final Status v = new Status(15);
    public static final Status w = new Status(16);
    public static final Status y = new Status(17);
    public static final Status x = new Status(18);
    public static final Parcelable.Creator<Status> CREATOR = new uh1();

    public Status(int i, int i2, String str, PendingIntent pendingIntent, ef efVar) {
        this.m = i;
        this.n = i2;
        this.o = str;
        this.p = pendingIntent;
        this.q = efVar;
    }

    public ef d() {
        return this.q;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Status)) {
            return false;
        }
        Status status = (Status) obj;
        return this.m == status.m && this.n == status.n && wf0.a(this.o, status.o) && wf0.a(this.p, status.p) && wf0.a(this.q, status.q);
    }

    public int f() {
        return this.n;
    }

    public int hashCode() {
        return wf0.b(Integer.valueOf(this.m), Integer.valueOf(this.n), this.o, this.p, this.q);
    }

    public String i() {
        return this.o;
    }

    public boolean k() {
        return this.p != null;
    }

    public final String n() {
        String str = this.o;
        return str != null ? str : fd.a(this.n);
    }

    public String toString() {
        wf0.a c = wf0.c(this);
        c.a("statusCode", n());
        c.a("resolution", this.p);
        return c.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = jr0.a(parcel);
        jr0.i(parcel, 1, f());
        jr0.n(parcel, 2, i(), false);
        jr0.m(parcel, 3, this.p, i, false);
        jr0.m(parcel, 4, d(), i, false);
        jr0.i(parcel, 1000, this.m);
        jr0.b(parcel, a);
    }

    public Status(int i) {
        this(i, (String) null);
    }

    public Status(int i, String str) {
        this(1, i, str, null, null);
    }

    public Status(ef efVar, String str) {
        this(efVar, str, 17);
    }

    public Status(ef efVar, String str, int i) {
        this(1, i, str, efVar.i(), efVar);
    }
}
