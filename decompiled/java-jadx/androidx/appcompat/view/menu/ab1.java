package androidx.appcompat.view.menu;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class ab1 extends r {
    public static final Parcelable.Creator<ab1> CREATOR = new lb1();
    public final int m;
    public int n;
    public Intent o;

    public ab1(int i, int i2, Intent intent) {
        this.m = i;
        this.n = i2;
        this.o = intent;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = jr0.a(parcel);
        jr0.i(parcel, 1, this.m);
        jr0.i(parcel, 2, this.n);
        jr0.m(parcel, 3, this.o, i, false);
        jr0.b(parcel, a);
    }
}
