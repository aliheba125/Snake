package androidx.appcompat.view.menu;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class bt1 extends rj1 implements xs1 {
    public bt1(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override // androidx.appcompat.view.menu.xs1
    public final void A(oi1 oi1Var, String str, String str2) {
        Parcel h = h();
        vj1.d(h, oi1Var);
        h.writeString(str);
        h.writeString(str2);
        k(5, h);
    }

    @Override // androidx.appcompat.view.menu.xs1
    public final void C1(cb2 cb2Var) {
        Parcel h = h();
        vj1.d(h, cb2Var);
        k(6, h);
    }

    @Override // androidx.appcompat.view.menu.xs1
    public final byte[] E1(oi1 oi1Var, String str) {
        Parcel h = h();
        vj1.d(h, oi1Var);
        h.writeString(str);
        Parcel j = j(9, h);
        byte[] createByteArray = j.createByteArray();
        j.recycle();
        return createByteArray;
    }

    @Override // androidx.appcompat.view.menu.xs1
    public final void F0(cb2 cb2Var) {
        Parcel h = h();
        vj1.d(h, cb2Var);
        k(20, h);
    }

    @Override // androidx.appcompat.view.menu.xs1
    public final void G0(Bundle bundle, cb2 cb2Var) {
        Parcel h = h();
        vj1.d(h, bundle);
        vj1.d(h, cb2Var);
        k(19, h);
    }

    @Override // androidx.appcompat.view.menu.xs1
    public final void I(if1 if1Var) {
        Parcel h = h();
        vj1.d(h, if1Var);
        k(13, h);
    }

    @Override // androidx.appcompat.view.menu.xs1
    public final void L0(v92 v92Var, cb2 cb2Var) {
        Parcel h = h();
        vj1.d(h, v92Var);
        vj1.d(h, cb2Var);
        k(2, h);
    }

    @Override // androidx.appcompat.view.menu.xs1
    public final String P1(cb2 cb2Var) {
        Parcel h = h();
        vj1.d(h, cb2Var);
        Parcel j = j(11, h);
        String readString = j.readString();
        j.recycle();
        return readString;
    }

    @Override // androidx.appcompat.view.menu.xs1
    public final hg1 Q0(cb2 cb2Var) {
        Parcel h = h();
        vj1.d(h, cb2Var);
        Parcel j = j(21, h);
        hg1 hg1Var = (hg1) vj1.a(j, hg1.CREATOR);
        j.recycle();
        return hg1Var;
    }

    @Override // androidx.appcompat.view.menu.xs1
    public final void S(cb2 cb2Var) {
        Parcel h = h();
        vj1.d(h, cb2Var);
        k(18, h);
    }

    @Override // androidx.appcompat.view.menu.xs1
    public final void V1(long j, String str, String str2, String str3) {
        Parcel h = h();
        h.writeLong(j);
        h.writeString(str);
        h.writeString(str2);
        h.writeString(str3);
        k(10, h);
    }

    @Override // androidx.appcompat.view.menu.xs1
    public final List Z1(String str, String str2, String str3) {
        Parcel h = h();
        h.writeString(str);
        h.writeString(str2);
        h.writeString(str3);
        Parcel j = j(17, h);
        ArrayList createTypedArrayList = j.createTypedArrayList(if1.CREATOR);
        j.recycle();
        return createTypedArrayList;
    }

    @Override // androidx.appcompat.view.menu.xs1
    public final void g0(oi1 oi1Var, cb2 cb2Var) {
        Parcel h = h();
        vj1.d(h, oi1Var);
        vj1.d(h, cb2Var);
        k(1, h);
    }

    @Override // androidx.appcompat.view.menu.xs1
    public final void i2(cb2 cb2Var) {
        Parcel h = h();
        vj1.d(h, cb2Var);
        k(4, h);
    }

    @Override // androidx.appcompat.view.menu.xs1
    public final List m1(String str, String str2, boolean z, cb2 cb2Var) {
        Parcel h = h();
        h.writeString(str);
        h.writeString(str2);
        vj1.e(h, z);
        vj1.d(h, cb2Var);
        Parcel j = j(14, h);
        ArrayList createTypedArrayList = j.createTypedArrayList(v92.CREATOR);
        j.recycle();
        return createTypedArrayList;
    }

    @Override // androidx.appcompat.view.menu.xs1
    public final void o(if1 if1Var, cb2 cb2Var) {
        Parcel h = h();
        vj1.d(h, if1Var);
        vj1.d(h, cb2Var);
        k(12, h);
    }

    @Override // androidx.appcompat.view.menu.xs1
    public final List o0(String str, String str2, cb2 cb2Var) {
        Parcel h = h();
        h.writeString(str);
        h.writeString(str2);
        vj1.d(h, cb2Var);
        Parcel j = j(16, h);
        ArrayList createTypedArrayList = j.createTypedArrayList(if1.CREATOR);
        j.recycle();
        return createTypedArrayList;
    }

    @Override // androidx.appcompat.view.menu.xs1
    public final List r0(String str, String str2, String str3, boolean z) {
        Parcel h = h();
        h.writeString(str);
        h.writeString(str2);
        h.writeString(str3);
        vj1.e(h, z);
        Parcel j = j(15, h);
        ArrayList createTypedArrayList = j.createTypedArrayList(v92.CREATOR);
        j.recycle();
        return createTypedArrayList;
    }

    @Override // androidx.appcompat.view.menu.xs1
    public final List s(cb2 cb2Var, Bundle bundle) {
        Parcel h = h();
        vj1.d(h, cb2Var);
        vj1.d(h, bundle);
        Parcel j = j(24, h);
        ArrayList createTypedArrayList = j.createTypedArrayList(y72.CREATOR);
        j.recycle();
        return createTypedArrayList;
    }
}
