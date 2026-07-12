package androidx.appcompat.view.menu;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.appcompat.view.menu.mz;

/* loaded from: classes.dex */
public final class ce1 extends r {
    public static final Parcelable.Creator<ce1> CREATOR = new de1();
    public final int m;
    public final IBinder n;
    public final ef o;
    public final boolean p;
    public final boolean q;

    public ce1(int i, IBinder iBinder, ef efVar, boolean z, boolean z2) {
        this.m = i;
        this.n = iBinder;
        this.o = efVar;
        this.p = z;
        this.q = z2;
    }

    public final ef d() {
        return this.o;
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ce1)) {
            return false;
        }
        ce1 ce1Var = (ce1) obj;
        return this.o.equals(ce1Var.o) && wf0.a(f(), ce1Var.f());
    }

    public final mz f() {
        IBinder iBinder = this.n;
        if (iBinder == null) {
            return null;
        }
        return mz.a.asInterface(iBinder);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = jr0.a(parcel);
        jr0.i(parcel, 1, this.m);
        jr0.h(parcel, 2, this.n, false);
        jr0.m(parcel, 3, this.o, i, false);
        jr0.c(parcel, 4, this.p);
        jr0.c(parcel, 5, this.q);
        jr0.b(parcel, a);
    }
}
