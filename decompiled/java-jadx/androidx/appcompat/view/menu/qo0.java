package androidx.appcompat.view.menu;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class qo0 implements Parcelable.Creator {
    public static void c(po0 po0Var, Parcel parcel, int i) {
        int a = jr0.a(parcel);
        jr0.e(parcel, 2, po0Var.m, false);
        jr0.b(parcel, a);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public po0 createFromParcel(Parcel parcel) {
        int u = ir0.u(parcel);
        Bundle bundle = null;
        while (parcel.dataPosition() < u) {
            int n = ir0.n(parcel);
            if (ir0.i(n) != 2) {
                ir0.t(parcel, n);
            } else {
                bundle = ir0.a(parcel, n);
            }
        }
        ir0.h(parcel, u);
        return new po0(bundle);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public po0[] newArray(int i) {
        return new po0[i];
    }
}
