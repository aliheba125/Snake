package androidx.appcompat.view.menu;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.appcompat.view.menu.q02;

/* loaded from: classes.dex */
public final class b52 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int u = ir0.u(parcel);
        vp0 vp0Var = null;
        int[] iArr = null;
        int[] iArr2 = null;
        boolean z = false;
        boolean z2 = false;
        int i = 0;
        while (parcel.dataPosition() < u) {
            int n = ir0.n(parcel);
            switch (ir0.i(n)) {
                case 1:
                    vp0Var = (vp0) ir0.c(parcel, n, vp0.CREATOR);
                    break;
                case 2:
                    z = ir0.j(parcel, n);
                    break;
                case q02.c.c /* 3 */:
                    z2 = ir0.j(parcel, n);
                    break;
                case 4:
                    iArr = ir0.b(parcel, n);
                    break;
                case q02.c.e /* 5 */:
                    i = ir0.p(parcel, n);
                    break;
                case q02.c.f /* 6 */:
                    iArr2 = ir0.b(parcel, n);
                    break;
                default:
                    ir0.t(parcel, n);
                    break;
            }
        }
        ir0.h(parcel, u);
        return new ff(vp0Var, z, z2, iArr, i, iArr2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new ff[i];
    }
}
