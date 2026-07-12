package androidx.appcompat.view.menu;

import android.content.pm.PackageParser;
import android.os.Bundle;
import android.os.Parcel;
import androidx.appcompat.view.menu.q02;
import java.util.List;

/* loaded from: classes.dex */
public abstract class vs1 extends xj1 implements xs1 {
    public vs1() {
        super("com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override // androidx.appcompat.view.menu.xj1
    public final boolean h(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 1:
                oi1 oi1Var = (oi1) vj1.a(parcel, oi1.CREATOR);
                cb2 cb2Var = (cb2) vj1.a(parcel, cb2.CREATOR);
                vj1.f(parcel);
                g0(oi1Var, cb2Var);
                parcel2.writeNoException();
                return true;
            case 2:
                v92 v92Var = (v92) vj1.a(parcel, v92.CREATOR);
                cb2 cb2Var2 = (cb2) vj1.a(parcel, cb2.CREATOR);
                vj1.f(parcel);
                L0(v92Var, cb2Var2);
                parcel2.writeNoException();
                return true;
            case q02.c.c /* 3 */:
            case PackageParser.PARSE_IGNORE_PROCESSES /* 8 */:
            case 22:
            case 23:
            default:
                return false;
            case 4:
                cb2 cb2Var3 = (cb2) vj1.a(parcel, cb2.CREATOR);
                vj1.f(parcel);
                i2(cb2Var3);
                parcel2.writeNoException();
                return true;
            case q02.c.e /* 5 */:
                oi1 oi1Var2 = (oi1) vj1.a(parcel, oi1.CREATOR);
                String readString = parcel.readString();
                String readString2 = parcel.readString();
                vj1.f(parcel);
                A(oi1Var2, readString, readString2);
                parcel2.writeNoException();
                return true;
            case q02.c.f /* 6 */:
                cb2 cb2Var4 = (cb2) vj1.a(parcel, cb2.CREATOR);
                vj1.f(parcel);
                C1(cb2Var4);
                parcel2.writeNoException();
                return true;
            case q02.c.g /* 7 */:
                cb2 cb2Var5 = (cb2) vj1.a(parcel, cb2.CREATOR);
                boolean h = vj1.h(parcel);
                vj1.f(parcel);
                List T = T(cb2Var5, h);
                parcel2.writeNoException();
                parcel2.writeTypedList(T);
                return true;
            case 9:
                oi1 oi1Var3 = (oi1) vj1.a(parcel, oi1.CREATOR);
                String readString3 = parcel.readString();
                vj1.f(parcel);
                byte[] E1 = E1(oi1Var3, readString3);
                parcel2.writeNoException();
                parcel2.writeByteArray(E1);
                return true;
            case 10:
                long readLong = parcel.readLong();
                String readString4 = parcel.readString();
                String readString5 = parcel.readString();
                String readString6 = parcel.readString();
                vj1.f(parcel);
                V1(readLong, readString4, readString5, readString6);
                parcel2.writeNoException();
                return true;
            case 11:
                cb2 cb2Var6 = (cb2) vj1.a(parcel, cb2.CREATOR);
                vj1.f(parcel);
                String P1 = P1(cb2Var6);
                parcel2.writeNoException();
                parcel2.writeString(P1);
                return true;
            case 12:
                if1 if1Var = (if1) vj1.a(parcel, if1.CREATOR);
                cb2 cb2Var7 = (cb2) vj1.a(parcel, cb2.CREATOR);
                vj1.f(parcel);
                o(if1Var, cb2Var7);
                parcel2.writeNoException();
                return true;
            case 13:
                if1 if1Var2 = (if1) vj1.a(parcel, if1.CREATOR);
                vj1.f(parcel);
                I(if1Var2);
                parcel2.writeNoException();
                return true;
            case 14:
                String readString7 = parcel.readString();
                String readString8 = parcel.readString();
                boolean h2 = vj1.h(parcel);
                cb2 cb2Var8 = (cb2) vj1.a(parcel, cb2.CREATOR);
                vj1.f(parcel);
                List m1 = m1(readString7, readString8, h2, cb2Var8);
                parcel2.writeNoException();
                parcel2.writeTypedList(m1);
                return true;
            case 15:
                String readString9 = parcel.readString();
                String readString10 = parcel.readString();
                String readString11 = parcel.readString();
                boolean h3 = vj1.h(parcel);
                vj1.f(parcel);
                List r0 = r0(readString9, readString10, readString11, h3);
                parcel2.writeNoException();
                parcel2.writeTypedList(r0);
                return true;
            case PackageParser.PARSE_FORWARD_LOCK /* 16 */:
                String readString12 = parcel.readString();
                String readString13 = parcel.readString();
                cb2 cb2Var9 = (cb2) vj1.a(parcel, cb2.CREATOR);
                vj1.f(parcel);
                List o0 = o0(readString12, readString13, cb2Var9);
                parcel2.writeNoException();
                parcel2.writeTypedList(o0);
                return true;
            case 17:
                String readString14 = parcel.readString();
                String readString15 = parcel.readString();
                String readString16 = parcel.readString();
                vj1.f(parcel);
                List Z1 = Z1(readString14, readString15, readString16);
                parcel2.writeNoException();
                parcel2.writeTypedList(Z1);
                return true;
            case 18:
                cb2 cb2Var10 = (cb2) vj1.a(parcel, cb2.CREATOR);
                vj1.f(parcel);
                S(cb2Var10);
                parcel2.writeNoException();
                return true;
            case 19:
                Bundle bundle = (Bundle) vj1.a(parcel, Bundle.CREATOR);
                cb2 cb2Var11 = (cb2) vj1.a(parcel, cb2.CREATOR);
                vj1.f(parcel);
                G0(bundle, cb2Var11);
                parcel2.writeNoException();
                return true;
            case 20:
                cb2 cb2Var12 = (cb2) vj1.a(parcel, cb2.CREATOR);
                vj1.f(parcel);
                F0(cb2Var12);
                parcel2.writeNoException();
                return true;
            case 21:
                cb2 cb2Var13 = (cb2) vj1.a(parcel, cb2.CREATOR);
                vj1.f(parcel);
                hg1 Q0 = Q0(cb2Var13);
                parcel2.writeNoException();
                vj1.g(parcel2, Q0);
                return true;
            case 24:
                cb2 cb2Var14 = (cb2) vj1.a(parcel, cb2.CREATOR);
                Bundle bundle2 = (Bundle) vj1.a(parcel, Bundle.CREATOR);
                vj1.f(parcel);
                List s = s(cb2Var14, bundle2);
                parcel2.writeNoException();
                parcel2.writeTypedList(s);
                return true;
        }
    }
}
