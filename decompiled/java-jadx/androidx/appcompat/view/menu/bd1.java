package androidx.appcompat.view.menu;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* loaded from: classes.dex */
public final class bd1 extends r {
    public static final Parcelable.Creator<bd1> CREATOR = new ed1();
    public final List m;
    public final String n;

    public bd1(List list, String str) {
        this.m = list;
        this.n = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = jr0.a(parcel);
        jr0.o(parcel, 1, this.m, false);
        jr0.n(parcel, 2, this.n, false);
        jr0.b(parcel, a);
    }
}
