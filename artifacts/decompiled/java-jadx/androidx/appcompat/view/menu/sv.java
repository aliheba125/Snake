package androidx.appcompat.view.menu;

import android.content.pm.PackageParser;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class sv implements Parcelable {
    public static final Parcelable.Creator<sv> CREATOR = new a();
    public final String m;
    public final String n;
    public final boolean o;
    public final int p;
    public final int q;
    public final String r;
    public final boolean s;
    public final boolean t;
    public final boolean u;
    public final boolean v;
    public final int w;
    public final String x;
    public final int y;
    public final boolean z;

    public class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public sv createFromParcel(Parcel parcel) {
            return new sv(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public sv[] newArray(int i) {
            return new sv[i];
        }
    }

    public sv(av avVar) {
        this.m = avVar.getClass().getName();
        this.n = avVar.e;
        this.o = avVar.o;
        this.p = avVar.w;
        this.q = avVar.x;
        this.r = avVar.y;
        this.s = avVar.B;
        this.t = avVar.l;
        this.u = avVar.A;
        this.v = avVar.z;
        this.w = avVar.Q.ordinal();
        this.x = avVar.h;
        this.y = avVar.i;
        this.z = avVar.J;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(PackageParser.PARSE_IS_PRIVILEGED);
        sb.append("FragmentState{");
        sb.append(this.m);
        sb.append(" (");
        sb.append(this.n);
        sb.append(")}:");
        if (this.o) {
            sb.append(" fromLayout");
        }
        if (this.q != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.q));
        }
        String str = this.r;
        if (str != null && !str.isEmpty()) {
            sb.append(" tag=");
            sb.append(this.r);
        }
        if (this.s) {
            sb.append(" retainInstance");
        }
        if (this.t) {
            sb.append(" removing");
        }
        if (this.u) {
            sb.append(" detached");
        }
        if (this.v) {
            sb.append(" hidden");
        }
        if (this.x != null) {
            sb.append(" targetWho=");
            sb.append(this.x);
            sb.append(" targetRequestCode=");
            sb.append(this.y);
        }
        if (this.z) {
            sb.append(" userVisibleHint");
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.m);
        parcel.writeString(this.n);
        parcel.writeInt(this.o ? 1 : 0);
        parcel.writeInt(this.p);
        parcel.writeInt(this.q);
        parcel.writeString(this.r);
        parcel.writeInt(this.s ? 1 : 0);
        parcel.writeInt(this.t ? 1 : 0);
        parcel.writeInt(this.u ? 1 : 0);
        parcel.writeInt(this.v ? 1 : 0);
        parcel.writeInt(this.w);
        parcel.writeString(this.x);
        parcel.writeInt(this.y);
        parcel.writeInt(this.z ? 1 : 0);
    }

    public sv(Parcel parcel) {
        this.m = parcel.readString();
        this.n = parcel.readString();
        this.o = parcel.readInt() != 0;
        this.p = parcel.readInt();
        this.q = parcel.readInt();
        this.r = parcel.readString();
        this.s = parcel.readInt() != 0;
        this.t = parcel.readInt() != 0;
        this.u = parcel.readInt() != 0;
        this.v = parcel.readInt() != 0;
        this.w = parcel.readInt();
        this.x = parcel.readString();
        this.y = parcel.readInt();
        this.z = parcel.readInt() != 0;
    }
}
