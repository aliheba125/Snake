package androidx.appcompat.view.menu;

import android.app.ActivityManager;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class bq0 implements Parcelable {
    public static final Parcelable.Creator<bq0> CREATOR = new a();
    public final List m;

    public class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public bq0 createFromParcel(Parcel parcel) {
            return new bq0(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public bq0[] newArray(int i) {
            return new bq0[i];
        }
    }

    public bq0() {
        this.m = new ArrayList();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedList(this.m);
    }

    public bq0(Parcel parcel) {
        this.m = parcel.createTypedArrayList(ActivityManager.RunningServiceInfo.CREATOR);
    }
}
