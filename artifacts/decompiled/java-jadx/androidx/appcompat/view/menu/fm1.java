package androidx.appcompat.view.menu;

import android.os.Bundle;
import android.os.IInterface;
import java.util.Map;

/* loaded from: classes.dex */
public interface fm1 extends IInterface {
    void beginAdUnitExposure(String str, long j);

    void clearConditionalUserProperty(String str, String str2, Bundle bundle);

    void clearMeasurementEnabled(long j);

    void endAdUnitExposure(String str, long j);

    void generateEventId(hm1 hm1Var);

    void getAppInstanceId(hm1 hm1Var);

    void getCachedAppInstanceId(hm1 hm1Var);

    void getConditionalUserProperties(String str, String str2, hm1 hm1Var);

    void getCurrentScreenClass(hm1 hm1Var);

    void getCurrentScreenName(hm1 hm1Var);

    void getGmpAppId(hm1 hm1Var);

    void getMaxUserProperties(String str, hm1 hm1Var);

    void getSessionId(hm1 hm1Var);

    void getTestFlag(hm1 hm1Var, int i);

    void getUserProperties(String str, String str2, boolean z, hm1 hm1Var);

    void initForTests(Map map);

    void initialize(b20 b20Var, jn1 jn1Var, long j);

    void isDataCollectionEnabled(hm1 hm1Var);

    void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j);

    void logEventAndBundle(String str, String str2, Bundle bundle, hm1 hm1Var, long j);

    void logHealthData(int i, String str, b20 b20Var, b20 b20Var2, b20 b20Var3);

    void onActivityCreated(b20 b20Var, Bundle bundle, long j);

    void onActivityDestroyed(b20 b20Var, long j);

    void onActivityPaused(b20 b20Var, long j);

    void onActivityResumed(b20 b20Var, long j);

    void onActivitySaveInstanceState(b20 b20Var, hm1 hm1Var, long j);

    void onActivityStarted(b20 b20Var, long j);

    void onActivityStopped(b20 b20Var, long j);

    void performAction(Bundle bundle, hm1 hm1Var, long j);

    void registerOnMeasurementEventListener(dn1 dn1Var);

    void resetAnalyticsData(long j);

    void setConditionalUserProperty(Bundle bundle, long j);

    void setConsent(Bundle bundle, long j);

    void setConsentThirdParty(Bundle bundle, long j);

    void setCurrentScreen(b20 b20Var, String str, String str2, long j);

    void setDataCollectionEnabled(boolean z);

    void setDefaultEventParameters(Bundle bundle);

    void setEventInterceptor(dn1 dn1Var);

    void setInstanceIdProvider(fn1 fn1Var);

    void setMeasurementEnabled(boolean z, long j);

    void setMinimumSessionDuration(long j);

    void setSessionTimeoutDuration(long j);

    void setUserId(String str, long j);

    void setUserProperty(String str, String str2, b20 b20Var, boolean z, long j);

    void unregisterOnMeasurementEventListener(dn1 dn1Var);
}
