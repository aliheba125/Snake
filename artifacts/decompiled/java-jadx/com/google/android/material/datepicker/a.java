package com.google.android.material.datepicker;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.appcompat.view.menu.q41;
import androidx.appcompat.view.menu.td0;
import androidx.appcompat.view.menu.yf0;
import java.util.Arrays;
import java.util.Objects;

/* loaded from: classes.dex */
public final class a implements Parcelable {
    public static final Parcelable.Creator<a> CREATOR = new C0062a();
    public final td0 m;
    public final td0 n;
    public final c o;
    public td0 p;
    public final int q;
    public final int r;
    public final int s;

    /* renamed from: com.google.android.material.datepicker.a$a, reason: collision with other inner class name */
    public class C0062a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public a createFromParcel(Parcel parcel) {
            return new a((td0) parcel.readParcelable(td0.class.getClassLoader()), (td0) parcel.readParcelable(td0.class.getClassLoader()), (c) parcel.readParcelable(c.class.getClassLoader()), (td0) parcel.readParcelable(td0.class.getClassLoader()), parcel.readInt(), null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public a[] newArray(int i) {
            return new a[i];
        }
    }

    public static final class b {
        public static final long f = q41.a(td0.e(1900, 0).r);
        public static final long g = q41.a(td0.e(2100, 11).r);
        public long a;
        public long b;
        public Long c;
        public int d;
        public c e;

        public b(a aVar) {
            this.a = f;
            this.b = g;
            this.e = com.google.android.material.datepicker.b.a(Long.MIN_VALUE);
            this.a = aVar.m.r;
            this.b = aVar.n.r;
            this.c = Long.valueOf(aVar.p.r);
            this.d = aVar.q;
            this.e = aVar.o;
        }

        public a a() {
            Bundle bundle = new Bundle();
            bundle.putParcelable("DEEP_COPY_VALIDATOR_KEY", this.e);
            td0 i = td0.i(this.a);
            td0 i2 = td0.i(this.b);
            c cVar = (c) bundle.getParcelable("DEEP_COPY_VALIDATOR_KEY");
            Long l = this.c;
            return new a(i, i2, cVar, l == null ? null : td0.i(l.longValue()), this.d, null);
        }

        public b b(long j) {
            this.c = Long.valueOf(j);
            return this;
        }
    }

    public interface c extends Parcelable {
        boolean g(long j);
    }

    public /* synthetic */ a(td0 td0Var, td0 td0Var2, c cVar, td0 td0Var3, int i, C0062a c0062a) {
        this(td0Var, td0Var2, cVar, td0Var3, i);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.m.equals(aVar.m) && this.n.equals(aVar.n) && yf0.a(this.p, aVar.p) && this.q == aVar.q && this.o.equals(aVar.o);
    }

    public c f() {
        return this.o;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.m, this.n, this.p, Integer.valueOf(this.q), this.o});
    }

    public td0 i() {
        return this.n;
    }

    public int j() {
        return this.q;
    }

    public int k() {
        return this.s;
    }

    public td0 l() {
        return this.p;
    }

    public td0 m() {
        return this.m;
    }

    public int n() {
        return this.r;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.m, 0);
        parcel.writeParcelable(this.n, 0);
        parcel.writeParcelable(this.p, 0);
        parcel.writeParcelable(this.o, 0);
        parcel.writeInt(this.q);
    }

    public a(td0 td0Var, td0 td0Var2, c cVar, td0 td0Var3, int i) {
        Objects.requireNonNull(td0Var, "start cannot be null");
        Objects.requireNonNull(td0Var2, "end cannot be null");
        Objects.requireNonNull(cVar, "validator cannot be null");
        this.m = td0Var;
        this.n = td0Var2;
        this.p = td0Var3;
        this.q = i;
        this.o = cVar;
        if (td0Var3 != null && td0Var.compareTo(td0Var3) > 0) {
            throw new IllegalArgumentException("start Month cannot be after current Month");
        }
        if (td0Var3 != null && td0Var3.compareTo(td0Var2) > 0) {
            throw new IllegalArgumentException("current Month cannot be after end Month");
        }
        if (i < 0 || i > q41.i().getMaximum(7)) {
            throw new IllegalArgumentException("firstDayOfWeek is not valid");
        }
        this.s = td0Var.q(td0Var2) + 1;
        this.r = (td0Var2.o - td0Var.o) + 1;
    }
}
