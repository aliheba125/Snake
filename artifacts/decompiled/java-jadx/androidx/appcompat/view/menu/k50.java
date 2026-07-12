package androidx.appcompat.view.menu;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class k50 implements Parcelable {
    public static final Parcelable.Creator<k50> CREATOR = new a();
    public boolean m;
    public String n;
    public String o;

    public class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public k50 createFromParcel(Parcel parcel) {
            return new k50(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public k50[] newArray(int i) {
            return new k50[i];
        }
    }

    public k50() {
        this.m = true;
    }

    public k50 a(String str) {
        this.o = str;
        this.m = false;
        return this;
    }

    public k50 b(String str, String str2) {
        this.o = str2;
        this.m = false;
        this.n = str;
        return this;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeByte(this.m ? (byte) 1 : (byte) 0);
        parcel.writeString(this.n);
        parcel.writeString(this.o);
    }

    public k50(Parcel parcel) {
        this.m = true;
        this.m = parcel.readByte() != 0;
        this.n = parcel.readString();
        this.o = parcel.readString();
    }
}
