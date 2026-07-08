package androidx.appcompat.view.menu;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class ld1 extends r {
    public static final Parcelable.Creator<ld1> CREATOR = new nd1();
    public final int m;
    public final ef n;
    public final ce1 o;

    public ld1(int i, ef efVar, ce1 ce1Var) {
        this.m = i;
        this.n = efVar;
        this.o = ce1Var;
    }

    public final ef d() {
        return this.n;
    }

    public final ce1 f() {
        return this.o;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = jr0.a(parcel);
        jr0.i(parcel, 1, this.m);
        jr0.m(parcel, 2, this.n, i, false);
        jr0.m(parcel, 3, this.o, i, false);
        jr0.b(parcel, a);
    }
}
