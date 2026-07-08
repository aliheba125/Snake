package androidx.appcompat.view.menu;

import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class wn0 implements Parcelable {
    public static final Parcelable.Creator<wn0> CREATOR = new a();
    public Intent m;
    public ActivityInfo n;
    public wh0 o;

    public class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public wn0 createFromParcel(Parcel parcel) {
            return new wn0(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public wn0[] newArray(int i) {
            return new wn0[i];
        }
    }

    public wn0() {
    }

    public wn0(Parcel parcel) {
        this.m = (Intent) parcel.readParcelable(Intent.class.getClassLoader());
        this.n = (ActivityInfo) parcel.readParcelable(ActivityInfo.class.getClassLoader());
        this.o = (wh0) parcel.readParcelable(wh0.class.getClassLoader());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.m, i);
        parcel.writeParcelable(this.n, i);
        parcel.writeParcelable(this.o, i);
    }
}
