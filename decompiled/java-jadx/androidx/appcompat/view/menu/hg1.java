package androidx.appcompat.view.menu;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class hg1 extends r {
    public static final Parcelable.Creator<hg1> CREATOR = new fg1();
    public final Bundle m;

    public hg1(Bundle bundle) {
        this.m = bundle;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = jr0.a(parcel);
        jr0.e(parcel, 1, this.m, false);
        jr0.b(parcel, a);
    }
}
