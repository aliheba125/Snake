package androidx.appcompat.view.menu;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Calendar;
import java.util.GregorianCalendar;

/* loaded from: classes.dex */
public final class td0 implements Comparable, Parcelable {
    public static final Parcelable.Creator<td0> CREATOR = new a();
    public final Calendar m;
    public final int n;
    public final int o;
    public final int p;
    public final int q;
    public final long r;
    public String s;

    public class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public td0 createFromParcel(Parcel parcel) {
            return td0.e(parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public td0[] newArray(int i) {
            return new td0[i];
        }
    }

    public td0(Calendar calendar) {
        calendar.set(5, 1);
        Calendar c = q41.c(calendar);
        this.m = c;
        this.n = c.get(2);
        this.o = c.get(1);
        this.p = c.getMaximum(7);
        this.q = c.getActualMaximum(5);
        this.r = c.getTimeInMillis();
    }

    public static td0 e(int i, int i2) {
        Calendar i3 = q41.i();
        i3.set(1, i);
        i3.set(2, i2);
        return new td0(i3);
    }

    public static td0 i(long j) {
        Calendar i = q41.i();
        i.setTimeInMillis(j);
        return new td0(i);
    }

    public static td0 j() {
        return new td0(q41.g());
    }

    @Override // java.lang.Comparable
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public int compareTo(td0 td0Var) {
        return this.m.compareTo(td0Var.m);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof td0)) {
            return false;
        }
        td0 td0Var = (td0) obj;
        return this.n == td0Var.n && this.o == td0Var.o;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.n), Integer.valueOf(this.o)});
    }

    public int k(int i) {
        int i2 = this.m.get(7);
        if (i <= 0) {
            i = this.m.getFirstDayOfWeek();
        }
        int i3 = i2 - i;
        return i3 < 0 ? i3 + this.p : i3;
    }

    public long l(int i) {
        Calendar c = q41.c(this.m);
        c.set(5, i);
        return c.getTimeInMillis();
    }

    public int m(long j) {
        Calendar c = q41.c(this.m);
        c.setTimeInMillis(j);
        return c.get(5);
    }

    public String n() {
        if (this.s == null) {
            this.s = zi.f(this.m.getTimeInMillis());
        }
        return this.s;
    }

    public long o() {
        return this.m.getTimeInMillis();
    }

    public td0 p(int i) {
        Calendar c = q41.c(this.m);
        c.add(2, i);
        return new td0(c);
    }

    public int q(td0 td0Var) {
        if (this.m instanceof GregorianCalendar) {
            return ((td0Var.o - this.o) * 12) + (td0Var.n - this.n);
        }
        throw new IllegalArgumentException("Only Gregorian calendars are supported.");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.o);
        parcel.writeInt(this.n);
    }
}
