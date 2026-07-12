package androidx.appcompat.view.menu;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class md2 extends r {
    public static final Parcelable.Creator<md2> CREATOR = new he2();
    public final boolean m;
    public final String n;
    public final int o;
    public final int p;

    public md2(boolean z, String str, int i, int i2) {
        this.m = z;
        this.n = str;
        this.o = uf2.a(i) - 1;
        this.p = sm1.a(i2) - 1;
    }

    public final String d() {
        return this.n;
    }

    public final boolean f() {
        return this.m;
    }

    public final int i() {
        return sm1.a(this.p);
    }

    public final int k() {
        return uf2.a(this.o);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = jr0.a(parcel);
        jr0.c(parcel, 1, this.m);
        jr0.n(parcel, 2, this.n, false);
        jr0.i(parcel, 3, this.o);
        jr0.i(parcel, 4, this.p);
        jr0.b(parcel, a);
    }
}
