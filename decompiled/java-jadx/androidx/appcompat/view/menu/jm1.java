package androidx.appcompat.view.menu;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

/* loaded from: classes.dex */
public final class jm1 extends rj1 implements fm1 {
    public jm1(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
    }

    @Override // androidx.appcompat.view.menu.fm1
    public final void beginAdUnitExposure(String str, long j) {
        Parcel h = h();
        h.writeString(str);
        h.writeLong(j);
        k(23, h);
    }

    @Override // androidx.appcompat.view.menu.fm1
    public final void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        Parcel h = h();
        h.writeString(str);
        h.writeString(str2);
        vj1.d(h, bundle);
        k(9, h);
    }

    @Override // androidx.appcompat.view.menu.fm1
    public final void endAdUnitExposure(String str, long j) {
        Parcel h = h();
        h.writeString(str);
        h.writeLong(j);
        k(24, h);
    }

    @Override // androidx.appcompat.view.menu.fm1
    public final void generateEventId(hm1 hm1Var) {
        Parcel h = h();
        vj1.c(h, hm1Var);
        k(22, h);
    }

    @Override // androidx.appcompat.view.menu.fm1
    public final void getCachedAppInstanceId(hm1 hm1Var) {
        Parcel h = h();
        vj1.c(h, hm1Var);
        k(19, h);
    }

    @Override // androidx.appcompat.view.menu.fm1
    public final void getConditionalUserProperties(String str, String str2, hm1 hm1Var) {
        Parcel h = h();
        h.writeString(str);
        h.writeString(str2);
        vj1.c(h, hm1Var);
        k(10, h);
    }

    @Override // androidx.appcompat.view.menu.fm1
    public final void getCurrentScreenClass(hm1 hm1Var) {
        Parcel h = h();
        vj1.c(h, hm1Var);
        k(17, h);
    }

    @Override // androidx.appcompat.view.menu.fm1
    public final void getCurrentScreenName(hm1 hm1Var) {
        Parcel h = h();
        vj1.c(h, hm1Var);
        k(16, h);
    }

    @Override // androidx.appcompat.view.menu.fm1
    public final void getGmpAppId(hm1 hm1Var) {
        Parcel h = h();
        vj1.c(h, hm1Var);
        k(21, h);
    }

    @Override // androidx.appcompat.view.menu.fm1
    public final void getMaxUserProperties(String str, hm1 hm1Var) {
        Parcel h = h();
        h.writeString(str);
        vj1.c(h, hm1Var);
        k(6, h);
    }

    @Override // androidx.appcompat.view.menu.fm1
    public final void getUserProperties(String str, String str2, boolean z, hm1 hm1Var) {
        Parcel h = h();
        h.writeString(str);
        h.writeString(str2);
        vj1.e(h, z);
        vj1.c(h, hm1Var);
        k(5, h);
    }

    @Override // androidx.appcompat.view.menu.fm1
    public final void initialize(b20 b20Var, jn1 jn1Var, long j) {
        Parcel h = h();
        vj1.c(h, b20Var);
        vj1.d(h, jn1Var);
        h.writeLong(j);
        k(1, h);
    }

    @Override // androidx.appcompat.view.menu.fm1
    public final void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) {
        Parcel h = h();
        h.writeString(str);
        h.writeString(str2);
        vj1.d(h, bundle);
        vj1.e(h, z);
        vj1.e(h, z2);
        h.writeLong(j);
        k(2, h);
    }

    @Override // androidx.appcompat.view.menu.fm1
    public final void logHealthData(int i, String str, b20 b20Var, b20 b20Var2, b20 b20Var3) {
        Parcel h = h();
        h.writeInt(i);
        h.writeString(str);
        vj1.c(h, b20Var);
        vj1.c(h, b20Var2);
        vj1.c(h, b20Var3);
        k(33, h);
    }

    @Override // androidx.appcompat.view.menu.fm1
    public final void onActivityCreated(b20 b20Var, Bundle bundle, long j) {
        Parcel h = h();
        vj1.c(h, b20Var);
        vj1.d(h, bundle);
        h.writeLong(j);
        k(27, h);
    }

    @Override // androidx.appcompat.view.menu.fm1
    public final void onActivityDestroyed(b20 b20Var, long j) {
        Parcel h = h();
        vj1.c(h, b20Var);
        h.writeLong(j);
        k(28, h);
    }

    @Override // androidx.appcompat.view.menu.fm1
    public final void onActivityPaused(b20 b20Var, long j) {
        Parcel h = h();
        vj1.c(h, b20Var);
        h.writeLong(j);
        k(29, h);
    }

    @Override // androidx.appcompat.view.menu.fm1
    public final void onActivityResumed(b20 b20Var, long j) {
        Parcel h = h();
        vj1.c(h, b20Var);
        h.writeLong(j);
        k(30, h);
    }

    @Override // androidx.appcompat.view.menu.fm1
    public final void onActivitySaveInstanceState(b20 b20Var, hm1 hm1Var, long j) {
        Parcel h = h();
        vj1.c(h, b20Var);
        vj1.c(h, hm1Var);
        h.writeLong(j);
        k(31, h);
    }

    @Override // androidx.appcompat.view.menu.fm1
    public final void onActivityStarted(b20 b20Var, long j) {
        Parcel h = h();
        vj1.c(h, b20Var);
        h.writeLong(j);
        k(25, h);
    }

    @Override // androidx.appcompat.view.menu.fm1
    public final void onActivityStopped(b20 b20Var, long j) {
        Parcel h = h();
        vj1.c(h, b20Var);
        h.writeLong(j);
        k(26, h);
    }

    @Override // androidx.appcompat.view.menu.fm1
    public final void setConditionalUserProperty(Bundle bundle, long j) {
        Parcel h = h();
        vj1.d(h, bundle);
        h.writeLong(j);
        k(8, h);
    }

    @Override // androidx.appcompat.view.menu.fm1
    public final void setCurrentScreen(b20 b20Var, String str, String str2, long j) {
        Parcel h = h();
        vj1.c(h, b20Var);
        h.writeString(str);
        h.writeString(str2);
        h.writeLong(j);
        k(15, h);
    }

    @Override // androidx.appcompat.view.menu.fm1
    public final void setDataCollectionEnabled(boolean z) {
        Parcel h = h();
        vj1.e(h, z);
        k(39, h);
    }

    @Override // androidx.appcompat.view.menu.fm1
    public final void setUserProperty(String str, String str2, b20 b20Var, boolean z, long j) {
        Parcel h = h();
        h.writeString(str);
        h.writeString(str2);
        vj1.c(h, b20Var);
        vj1.e(h, z);
        h.writeLong(j);
        k(4, h);
    }
}
