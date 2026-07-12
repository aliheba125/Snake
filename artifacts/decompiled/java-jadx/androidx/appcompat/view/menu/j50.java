package androidx.appcompat.view.menu;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class j50 implements Parcelable {
    public static final Parcelable.Creator<j50> CREATOR = new a();
    public int m;

    public class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public j50 createFromParcel(Parcel parcel) {
            return new j50(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public j50[] newArray(int i) {
            return new j50[i];
        }
    }

    public j50() {
        this.m = 0;
    }

    public static j50 a() {
        j50 j50Var = new j50();
        j50Var.m |= 1;
        return j50Var;
    }

    public boolean b(int i) {
        return (i & this.m) != 0;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.m);
    }

    public j50(Parcel parcel) {
        this.m = 0;
        this.m = parcel.readInt();
    }
}
