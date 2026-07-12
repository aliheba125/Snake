package androidx.appcompat.view.menu;

import android.app.ActivityManager;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class aq0 implements Parcelable {
    public static final Parcelable.Creator<aq0> CREATOR = new a();
    public final List m;

    public class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public aq0 createFromParcel(Parcel parcel) {
            return new aq0(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public aq0[] newArray(int i) {
            return new aq0[i];
        }
    }

    public aq0() {
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

    public aq0(Parcel parcel) {
        this.m = parcel.createTypedArrayList(ActivityManager.RunningAppProcessInfo.CREATOR);
    }
}
