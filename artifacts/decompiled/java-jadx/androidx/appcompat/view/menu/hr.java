package androidx.appcompat.view.menu;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.appcompat.view.menu.wf0;

/* loaded from: classes.dex */
public class hr extends r {
    public static final Parcelable.Creator<hr> CREATOR = new ik1();
    public final String m;
    public final int n;
    public final long o;

    public hr(String str, int i, long j) {
        this.m = str;
        this.n = i;
        this.o = j;
    }

    public String d() {
        return this.m;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof hr) {
            hr hrVar = (hr) obj;
            if (((d() != null && d().equals(hrVar.d())) || (d() == null && hrVar.d() == null)) && f() == hrVar.f()) {
                return true;
            }
        }
        return false;
    }

    public long f() {
        long j = this.o;
        return j == -1 ? this.n : j;
    }

    public final int hashCode() {
        return wf0.b(d(), Long.valueOf(f()));
    }

    public final String toString() {
        wf0.a c = wf0.c(this);
        c.a("name", d());
        c.a("version", Long.valueOf(f()));
        return c.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = jr0.a(parcel);
        jr0.n(parcel, 1, d(), false);
        jr0.i(parcel, 2, this.n);
        jr0.k(parcel, 3, f());
        jr0.b(parcel, a);
    }

    public hr(String str, long j) {
        this.m = str;
        this.o = j;
        this.n = -1;
    }
}
