package androidx.appcompat.view.menu;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class y72 extends r {
    public static final Parcelable.Creator<y72> CREATOR = new e82();
    public final String m;
    public final long n;
    public final int o;

    public y72(String str, long j, int i) {
        this.m = str;
        this.n = j;
        this.o = i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = jr0.a(parcel);
        jr0.n(parcel, 1, this.m, false);
        jr0.k(parcel, 2, this.n);
        jr0.i(parcel, 3, this.o);
        jr0.b(parcel, a);
    }
}
