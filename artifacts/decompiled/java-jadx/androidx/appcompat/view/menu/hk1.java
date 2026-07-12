package androidx.appcompat.view.menu;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class hk1 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        return new ep1(parcel.readStrongBinder());
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new ep1[i];
    }
}
