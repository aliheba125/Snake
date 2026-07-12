package androidx.appcompat.view.menu;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class po0 extends r {
    public static final Parcelable.Creator<po0> CREATOR = new qo0();
    public Bundle m;

    public po0(Bundle bundle) {
        this.m = bundle;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        qo0.c(this, parcel, i);
    }
}
