package androidx.appcompat.view.menu;

import android.content.Context;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.appcompat.view.menu.b20;

/* loaded from: classes.dex */
public final class za2 extends r {
    public static final Parcelable.Creator<za2> CREATOR = new fc2();
    public final String m;
    public final boolean n;
    public final boolean o;
    public final Context p;
    public final boolean q;

    public za2(String str, boolean z, boolean z2, IBinder iBinder, boolean z3) {
        this.m = str;
        this.n = z;
        this.o = z2;
        this.p = (Context) vf0.j(b20.a.asInterface(iBinder));
        this.q = z3;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [android.os.IBinder, androidx.appcompat.view.menu.b20] */
    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = jr0.a(parcel);
        jr0.n(parcel, 1, this.m, false);
        jr0.c(parcel, 2, this.n);
        jr0.c(parcel, 3, this.o);
        jr0.h(parcel, 4, vf0.k(this.p), false);
        jr0.c(parcel, 5, this.q);
        jr0.b(parcel, a);
    }
}
