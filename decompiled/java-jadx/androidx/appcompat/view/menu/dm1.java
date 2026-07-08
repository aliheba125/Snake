package androidx.appcompat.view.menu;

import android.content.pm.PackageParser;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import androidx.appcompat.view.menu.b20;
import androidx.appcompat.view.menu.q02;
import java.util.HashMap;

/* loaded from: classes.dex */
public abstract class dm1 extends xj1 implements fm1 {
    public dm1() {
        super("com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
    }

    public static fm1 asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
        return queryLocalInterface instanceof fm1 ? (fm1) queryLocalInterface : new jm1(iBinder);
    }

    @Override // androidx.appcompat.view.menu.xj1
    public final boolean h(int i, Parcel parcel, Parcel parcel2, int i2) {
        hm1 lm1Var;
        hm1 hm1Var = null;
        hm1 hm1Var2 = null;
        hm1 hm1Var3 = null;
        hm1 hm1Var4 = null;
        dn1 dn1Var = null;
        dn1 dn1Var2 = null;
        dn1 dn1Var3 = null;
        hm1 hm1Var5 = null;
        hm1 hm1Var6 = null;
        hm1 hm1Var7 = null;
        hm1 hm1Var8 = null;
        hm1 hm1Var9 = null;
        hm1 hm1Var10 = null;
        fn1 fn1Var = null;
        hm1 hm1Var11 = null;
        hm1 hm1Var12 = null;
        hm1 hm1Var13 = null;
        hm1 hm1Var14 = null;
        switch (i) {
            case 1:
                b20 asInterface = b20.a.asInterface(parcel.readStrongBinder());
                jn1 jn1Var = (jn1) vj1.a(parcel, jn1.CREATOR);
                long readLong = parcel.readLong();
                vj1.f(parcel);
                initialize(asInterface, jn1Var, readLong);
                break;
            case 2:
                String readString = parcel.readString();
                String readString2 = parcel.readString();
                Bundle bundle = (Bundle) vj1.a(parcel, Bundle.CREATOR);
                boolean h = vj1.h(parcel);
                boolean h2 = vj1.h(parcel);
                long readLong2 = parcel.readLong();
                vj1.f(parcel);
                logEvent(readString, readString2, bundle, h, h2, readLong2);
                break;
            case q02.c.c /* 3 */:
                String readString3 = parcel.readString();
                String readString4 = parcel.readString();
                Bundle bundle2 = (Bundle) vj1.a(parcel, Bundle.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    lm1Var = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    lm1Var = queryLocalInterface instanceof hm1 ? (hm1) queryLocalInterface : new lm1(readStrongBinder);
                }
                long readLong3 = parcel.readLong();
                vj1.f(parcel);
                logEventAndBundle(readString3, readString4, bundle2, lm1Var, readLong3);
                break;
            case 4:
                String readString5 = parcel.readString();
                String readString6 = parcel.readString();
                b20 asInterface2 = b20.a.asInterface(parcel.readStrongBinder());
                boolean h3 = vj1.h(parcel);
                long readLong4 = parcel.readLong();
                vj1.f(parcel);
                setUserProperty(readString5, readString6, asInterface2, h3, readLong4);
                break;
            case q02.c.e /* 5 */:
                String readString7 = parcel.readString();
                String readString8 = parcel.readString();
                boolean h4 = vj1.h(parcel);
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    hm1Var = queryLocalInterface2 instanceof hm1 ? (hm1) queryLocalInterface2 : new lm1(readStrongBinder2);
                }
                vj1.f(parcel);
                getUserProperties(readString7, readString8, h4, hm1Var);
                break;
            case q02.c.f /* 6 */:
                String readString9 = parcel.readString();
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    hm1Var14 = queryLocalInterface3 instanceof hm1 ? (hm1) queryLocalInterface3 : new lm1(readStrongBinder3);
                }
                vj1.f(parcel);
                getMaxUserProperties(readString9, hm1Var14);
                break;
            case q02.c.g /* 7 */:
                String readString10 = parcel.readString();
                long readLong5 = parcel.readLong();
                vj1.f(parcel);
                setUserId(readString10, readLong5);
                break;
            case PackageParser.PARSE_IGNORE_PROCESSES /* 8 */:
                Bundle bundle3 = (Bundle) vj1.a(parcel, Bundle.CREATOR);
                long readLong6 = parcel.readLong();
                vj1.f(parcel);
                setConditionalUserProperty(bundle3, readLong6);
                break;
            case 9:
                String readString11 = parcel.readString();
                String readString12 = parcel.readString();
                Bundle bundle4 = (Bundle) vj1.a(parcel, Bundle.CREATOR);
                vj1.f(parcel);
                clearConditionalUserProperty(readString11, readString12, bundle4);
                break;
            case 10:
                String readString13 = parcel.readString();
                String readString14 = parcel.readString();
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    hm1Var13 = queryLocalInterface4 instanceof hm1 ? (hm1) queryLocalInterface4 : new lm1(readStrongBinder4);
                }
                vj1.f(parcel);
                getConditionalUserProperties(readString13, readString14, hm1Var13);
                break;
            case 11:
                boolean h5 = vj1.h(parcel);
                long readLong7 = parcel.readLong();
                vj1.f(parcel);
                setMeasurementEnabled(h5, readLong7);
                break;
            case 12:
                long readLong8 = parcel.readLong();
                vj1.f(parcel);
                resetAnalyticsData(readLong8);
                break;
            case 13:
                long readLong9 = parcel.readLong();
                vj1.f(parcel);
                setMinimumSessionDuration(readLong9);
                break;
            case 14:
                long readLong10 = parcel.readLong();
                vj1.f(parcel);
                setSessionTimeoutDuration(readLong10);
                break;
            case 15:
                b20 asInterface3 = b20.a.asInterface(parcel.readStrongBinder());
                String readString15 = parcel.readString();
                String readString16 = parcel.readString();
                long readLong11 = parcel.readLong();
                vj1.f(parcel);
                setCurrentScreen(asInterface3, readString15, readString16, readLong11);
                break;
            case PackageParser.PARSE_FORWARD_LOCK /* 16 */:
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 != null) {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    hm1Var12 = queryLocalInterface5 instanceof hm1 ? (hm1) queryLocalInterface5 : new lm1(readStrongBinder5);
                }
                vj1.f(parcel);
                getCurrentScreenName(hm1Var12);
                break;
            case 17:
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 != null) {
                    IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    hm1Var11 = queryLocalInterface6 instanceof hm1 ? (hm1) queryLocalInterface6 : new lm1(readStrongBinder6);
                }
                vj1.f(parcel);
                getCurrentScreenClass(hm1Var11);
                break;
            case 18:
                IBinder readStrongBinder7 = parcel.readStrongBinder();
                if (readStrongBinder7 != null) {
                    IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.measurement.api.internal.IStringProvider");
                    fn1Var = queryLocalInterface7 instanceof fn1 ? (fn1) queryLocalInterface7 : new ln1(readStrongBinder7);
                }
                vj1.f(parcel);
                setInstanceIdProvider(fn1Var);
                break;
            case 19:
                IBinder readStrongBinder8 = parcel.readStrongBinder();
                if (readStrongBinder8 != null) {
                    IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    hm1Var10 = queryLocalInterface8 instanceof hm1 ? (hm1) queryLocalInterface8 : new lm1(readStrongBinder8);
                }
                vj1.f(parcel);
                getCachedAppInstanceId(hm1Var10);
                break;
            case 20:
                IBinder readStrongBinder9 = parcel.readStrongBinder();
                if (readStrongBinder9 != null) {
                    IInterface queryLocalInterface9 = readStrongBinder9.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    hm1Var9 = queryLocalInterface9 instanceof hm1 ? (hm1) queryLocalInterface9 : new lm1(readStrongBinder9);
                }
                vj1.f(parcel);
                getAppInstanceId(hm1Var9);
                break;
            case 21:
                IBinder readStrongBinder10 = parcel.readStrongBinder();
                if (readStrongBinder10 != null) {
                    IInterface queryLocalInterface10 = readStrongBinder10.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    hm1Var8 = queryLocalInterface10 instanceof hm1 ? (hm1) queryLocalInterface10 : new lm1(readStrongBinder10);
                }
                vj1.f(parcel);
                getGmpAppId(hm1Var8);
                break;
            case 22:
                IBinder readStrongBinder11 = parcel.readStrongBinder();
                if (readStrongBinder11 != null) {
                    IInterface queryLocalInterface11 = readStrongBinder11.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    hm1Var7 = queryLocalInterface11 instanceof hm1 ? (hm1) queryLocalInterface11 : new lm1(readStrongBinder11);
                }
                vj1.f(parcel);
                generateEventId(hm1Var7);
                break;
            case 23:
                String readString17 = parcel.readString();
                long readLong12 = parcel.readLong();
                vj1.f(parcel);
                beginAdUnitExposure(readString17, readLong12);
                break;
            case 24:
                String readString18 = parcel.readString();
                long readLong13 = parcel.readLong();
                vj1.f(parcel);
                endAdUnitExposure(readString18, readLong13);
                break;
            case 25:
                b20 asInterface4 = b20.a.asInterface(parcel.readStrongBinder());
                long readLong14 = parcel.readLong();
                vj1.f(parcel);
                onActivityStarted(asInterface4, readLong14);
                break;
            case 26:
                b20 asInterface5 = b20.a.asInterface(parcel.readStrongBinder());
                long readLong15 = parcel.readLong();
                vj1.f(parcel);
                onActivityStopped(asInterface5, readLong15);
                break;
            case 27:
                b20 asInterface6 = b20.a.asInterface(parcel.readStrongBinder());
                Bundle bundle5 = (Bundle) vj1.a(parcel, Bundle.CREATOR);
                long readLong16 = parcel.readLong();
                vj1.f(parcel);
                onActivityCreated(asInterface6, bundle5, readLong16);
                break;
            case 28:
                b20 asInterface7 = b20.a.asInterface(parcel.readStrongBinder());
                long readLong17 = parcel.readLong();
                vj1.f(parcel);
                onActivityDestroyed(asInterface7, readLong17);
                break;
            case 29:
                b20 asInterface8 = b20.a.asInterface(parcel.readStrongBinder());
                long readLong18 = parcel.readLong();
                vj1.f(parcel);
                onActivityPaused(asInterface8, readLong18);
                break;
            case 30:
                b20 asInterface9 = b20.a.asInterface(parcel.readStrongBinder());
                long readLong19 = parcel.readLong();
                vj1.f(parcel);
                onActivityResumed(asInterface9, readLong19);
                break;
            case 31:
                b20 asInterface10 = b20.a.asInterface(parcel.readStrongBinder());
                IBinder readStrongBinder12 = parcel.readStrongBinder();
                if (readStrongBinder12 != null) {
                    IInterface queryLocalInterface12 = readStrongBinder12.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    hm1Var6 = queryLocalInterface12 instanceof hm1 ? (hm1) queryLocalInterface12 : new lm1(readStrongBinder12);
                }
                long readLong20 = parcel.readLong();
                vj1.f(parcel);
                onActivitySaveInstanceState(asInterface10, hm1Var6, readLong20);
                break;
            case PackageParser.PARSE_EXTERNAL_STORAGE /* 32 */:
                Bundle bundle6 = (Bundle) vj1.a(parcel, Bundle.CREATOR);
                IBinder readStrongBinder13 = parcel.readStrongBinder();
                if (readStrongBinder13 != null) {
                    IInterface queryLocalInterface13 = readStrongBinder13.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    hm1Var5 = queryLocalInterface13 instanceof hm1 ? (hm1) queryLocalInterface13 : new lm1(readStrongBinder13);
                }
                long readLong21 = parcel.readLong();
                vj1.f(parcel);
                performAction(bundle6, hm1Var5, readLong21);
                break;
            case 33:
                int readInt = parcel.readInt();
                String readString19 = parcel.readString();
                b20 asInterface11 = b20.a.asInterface(parcel.readStrongBinder());
                b20 asInterface12 = b20.a.asInterface(parcel.readStrongBinder());
                b20 asInterface13 = b20.a.asInterface(parcel.readStrongBinder());
                vj1.f(parcel);
                logHealthData(readInt, readString19, asInterface11, asInterface12, asInterface13);
                break;
            case 34:
                IBinder readStrongBinder14 = parcel.readStrongBinder();
                if (readStrongBinder14 != null) {
                    IInterface queryLocalInterface14 = readStrongBinder14.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    dn1Var3 = queryLocalInterface14 instanceof dn1 ? (dn1) queryLocalInterface14 : new hn1(readStrongBinder14);
                }
                vj1.f(parcel);
                setEventInterceptor(dn1Var3);
                break;
            case 35:
                IBinder readStrongBinder15 = parcel.readStrongBinder();
                if (readStrongBinder15 != null) {
                    IInterface queryLocalInterface15 = readStrongBinder15.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    dn1Var2 = queryLocalInterface15 instanceof dn1 ? (dn1) queryLocalInterface15 : new hn1(readStrongBinder15);
                }
                vj1.f(parcel);
                registerOnMeasurementEventListener(dn1Var2);
                break;
            case 36:
                IBinder readStrongBinder16 = parcel.readStrongBinder();
                if (readStrongBinder16 != null) {
                    IInterface queryLocalInterface16 = readStrongBinder16.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    dn1Var = queryLocalInterface16 instanceof dn1 ? (dn1) queryLocalInterface16 : new hn1(readStrongBinder16);
                }
                vj1.f(parcel);
                unregisterOnMeasurementEventListener(dn1Var);
                break;
            case 37:
                HashMap b = vj1.b(parcel);
                vj1.f(parcel);
                initForTests(b);
                break;
            case 38:
                IBinder readStrongBinder17 = parcel.readStrongBinder();
                if (readStrongBinder17 != null) {
                    IInterface queryLocalInterface17 = readStrongBinder17.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    hm1Var4 = queryLocalInterface17 instanceof hm1 ? (hm1) queryLocalInterface17 : new lm1(readStrongBinder17);
                }
                int readInt2 = parcel.readInt();
                vj1.f(parcel);
                getTestFlag(hm1Var4, readInt2);
                break;
            case 39:
                boolean h6 = vj1.h(parcel);
                vj1.f(parcel);
                setDataCollectionEnabled(h6);
                break;
            case 40:
                IBinder readStrongBinder18 = parcel.readStrongBinder();
                if (readStrongBinder18 != null) {
                    IInterface queryLocalInterface18 = readStrongBinder18.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    hm1Var3 = queryLocalInterface18 instanceof hm1 ? (hm1) queryLocalInterface18 : new lm1(readStrongBinder18);
                }
                vj1.f(parcel);
                isDataCollectionEnabled(hm1Var3);
                break;
            case 41:
            default:
                return false;
            case 42:
                Bundle bundle7 = (Bundle) vj1.a(parcel, Bundle.CREATOR);
                vj1.f(parcel);
                setDefaultEventParameters(bundle7);
                break;
            case 43:
                long readLong22 = parcel.readLong();
                vj1.f(parcel);
                clearMeasurementEnabled(readLong22);
                break;
            case 44:
                Bundle bundle8 = (Bundle) vj1.a(parcel, Bundle.CREATOR);
                long readLong23 = parcel.readLong();
                vj1.f(parcel);
                setConsent(bundle8, readLong23);
                break;
            case 45:
                Bundle bundle9 = (Bundle) vj1.a(parcel, Bundle.CREATOR);
                long readLong24 = parcel.readLong();
                vj1.f(parcel);
                setConsentThirdParty(bundle9, readLong24);
                break;
            case 46:
                IBinder readStrongBinder19 = parcel.readStrongBinder();
                if (readStrongBinder19 != null) {
                    IInterface queryLocalInterface19 = readStrongBinder19.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    hm1Var2 = queryLocalInterface19 instanceof hm1 ? (hm1) queryLocalInterface19 : new lm1(readStrongBinder19);
                }
                vj1.f(parcel);
                getSessionId(hm1Var2);
                break;
        }
        parcel2.writeNoException();
        return true;
    }
}
