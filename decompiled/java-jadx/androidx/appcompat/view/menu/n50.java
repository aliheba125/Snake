package androidx.appcompat.view.menu;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Objects;

/* loaded from: classes.dex */
public class n50 implements Parcelable {
    public static final Parcelable.Creator<n50> CREATOR = new a();
    public int m;
    public String n;

    public class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public n50 createFromParcel(Parcel parcel) {
            return new n50(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public n50[] newArray(int i) {
            return new n50[i];
        }
    }

    public n50() {
    }

    public n50(Parcel parcel) {
        this.m = parcel.readInt();
        this.n = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return Objects.equals(this.n, ((n50) obj).n);
    }

    public int hashCode() {
        return Objects.hash(this.n);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.m);
        parcel.writeString(this.n);
    }
}
