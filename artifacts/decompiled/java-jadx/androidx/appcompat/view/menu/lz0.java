package androidx.appcompat.view.menu;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class lz0 extends r {
    public static final Parcelable.Creator<lz0> CREATOR = new cb1();
    public final int m;
    public List n;

    public lz0(int i, List list) {
        this.m = i;
        this.n = list;
    }

    public final int d() {
        return this.m;
    }

    public final List f() {
        return this.n;
    }

    public final void i(nd0 nd0Var) {
        if (this.n == null) {
            this.n = new ArrayList();
        }
        this.n.add(nd0Var);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = jr0.a(parcel);
        jr0.i(parcel, 1, this.m);
        jr0.q(parcel, 2, this.n, false);
        jr0.b(parcel, a);
    }
}
