package com.google.android.gms.measurement;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import androidx.appcompat.view.menu.cx1;
import androidx.appcompat.view.menu.hz1;
import androidx.appcompat.view.menu.jn1;
import androidx.appcompat.view.menu.mj0;
import androidx.appcompat.view.menu.v22;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

@Deprecated
/* loaded from: classes.dex */
public class AppMeasurement {
    public static volatile AppMeasurement b;
    public final a a;

    public static class ConditionalUserProperty {

        @Keep
        public boolean mActive;

        @Keep
        public String mAppId;

        @Keep
        public long mCreationTimestamp;

        @Keep
        public String mExpiredEventName;

        @Keep
        public Bundle mExpiredEventParams;

        @Keep
        public String mName;

        @Keep
        public String mOrigin;

        @Keep
        public long mTimeToLive;

        @Keep
        public String mTimedOutEventName;

        @Keep
        public Bundle mTimedOutEventParams;

        @Keep
        public String mTriggerEventName;

        @Keep
        public long mTriggerTimeout;

        @Keep
        public String mTriggeredEventName;

        @Keep
        public Bundle mTriggeredEventParams;

        @Keep
        public long mTriggeredTimestamp;

        @Keep
        public Object mValue;

        public ConditionalUserProperty(Bundle bundle) {
            mj0.i(bundle);
            this.mAppId = (String) hz1.a(bundle, "app_id", String.class, null);
            this.mOrigin = (String) hz1.a(bundle, "origin", String.class, null);
            this.mName = (String) hz1.a(bundle, "name", String.class, null);
            this.mValue = hz1.a(bundle, "value", Object.class, null);
            this.mTriggerEventName = (String) hz1.a(bundle, "trigger_event_name", String.class, null);
            this.mTriggerTimeout = ((Long) hz1.a(bundle, "trigger_timeout", Long.class, 0L)).longValue();
            this.mTimedOutEventName = (String) hz1.a(bundle, "timed_out_event_name", String.class, null);
            this.mTimedOutEventParams = (Bundle) hz1.a(bundle, "timed_out_event_params", Bundle.class, null);
            this.mTriggeredEventName = (String) hz1.a(bundle, "triggered_event_name", String.class, null);
            this.mTriggeredEventParams = (Bundle) hz1.a(bundle, "triggered_event_params", Bundle.class, null);
            this.mTimeToLive = ((Long) hz1.a(bundle, "time_to_live", Long.class, 0L)).longValue();
            this.mExpiredEventName = (String) hz1.a(bundle, "expired_event_name", String.class, null);
            this.mExpiredEventParams = (Bundle) hz1.a(bundle, "expired_event_params", Bundle.class, null);
            this.mActive = ((Boolean) hz1.a(bundle, "active", Boolean.class, Boolean.FALSE)).booleanValue();
            this.mCreationTimestamp = ((Long) hz1.a(bundle, "creation_timestamp", Long.class, 0L)).longValue();
            this.mTriggeredTimestamp = ((Long) hz1.a(bundle, "triggered_timestamp", Long.class, 0L)).longValue();
        }
    }

    public static abstract class a implements v22 {
        public a() {
        }
    }

    public AppMeasurement(cx1 cx1Var) {
        this.a = new com.google.android.gms.measurement.a(cx1Var);
    }

    public static v22 a(Context context, Bundle bundle) {
        return (v22) FirebaseAnalytics.class.getDeclaredMethod("getScionFrontendApiImplementation", Context.class, Bundle.class).invoke(null, context, null);
    }

    public static AppMeasurement b(Context context, String str, String str2) {
        if (b == null) {
            synchronized (AppMeasurement.class) {
                try {
                    if (b == null) {
                        v22 a2 = a(context, null);
                        if (a2 != null) {
                            b = new AppMeasurement(a2);
                        } else {
                            b = new AppMeasurement(cx1.c(context, new jn1(0L, 0L, true, null, null, null, null, null), null));
                        }
                    }
                } finally {
                }
            }
        }
        return b;
    }

    @Keep
    @Deprecated
    public static AppMeasurement getInstance(Context context) {
        return b(context, null, null);
    }

    @Keep
    public void beginAdUnitExposure(String str) {
        this.a.m(str);
    }

    @Keep
    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        this.a.l(str, str2, bundle);
    }

    @Keep
    public void endAdUnitExposure(String str) {
        this.a.k(str);
    }

    @Keep
    public long generateEventId() {
        return this.a.a();
    }

    @Keep
    public String getAppInstanceId() {
        return this.a.g();
    }

    @Keep
    public List<ConditionalUserProperty> getConditionalUserProperties(String str, String str2) {
        List c = this.a.c(str, str2);
        ArrayList arrayList = new ArrayList(c == null ? 0 : c.size());
        Iterator it = c.iterator();
        while (it.hasNext()) {
            arrayList.add(new ConditionalUserProperty((Bundle) it.next()));
        }
        return arrayList;
    }

    @Keep
    public String getCurrentScreenClass() {
        return this.a.j();
    }

    @Keep
    public String getCurrentScreenName() {
        return this.a.i();
    }

    @Keep
    public String getGmpAppId() {
        return this.a.e();
    }

    @Keep
    public int getMaxUserProperties(String str) {
        return this.a.h(str);
    }

    @Keep
    public Map<String, Object> getUserProperties(String str, String str2, boolean z) {
        return this.a.n(str, str2, z);
    }

    @Keep
    public void logEventInternal(String str, String str2, Bundle bundle) {
        this.a.o(str, str2, bundle);
    }

    @Keep
    public void setConditionalUserProperty(ConditionalUserProperty conditionalUserProperty) {
        mj0.i(conditionalUserProperty);
        a aVar = this.a;
        Bundle bundle = new Bundle();
        String str = conditionalUserProperty.mAppId;
        if (str != null) {
            bundle.putString("app_id", str);
        }
        String str2 = conditionalUserProperty.mOrigin;
        if (str2 != null) {
            bundle.putString("origin", str2);
        }
        String str3 = conditionalUserProperty.mName;
        if (str3 != null) {
            bundle.putString("name", str3);
        }
        Object obj = conditionalUserProperty.mValue;
        if (obj != null) {
            hz1.b(bundle, obj);
        }
        String str4 = conditionalUserProperty.mTriggerEventName;
        if (str4 != null) {
            bundle.putString("trigger_event_name", str4);
        }
        bundle.putLong("trigger_timeout", conditionalUserProperty.mTriggerTimeout);
        String str5 = conditionalUserProperty.mTimedOutEventName;
        if (str5 != null) {
            bundle.putString("timed_out_event_name", str5);
        }
        Bundle bundle2 = conditionalUserProperty.mTimedOutEventParams;
        if (bundle2 != null) {
            bundle.putBundle("timed_out_event_params", bundle2);
        }
        String str6 = conditionalUserProperty.mTriggeredEventName;
        if (str6 != null) {
            bundle.putString("triggered_event_name", str6);
        }
        Bundle bundle3 = conditionalUserProperty.mTriggeredEventParams;
        if (bundle3 != null) {
            bundle.putBundle("triggered_event_params", bundle3);
        }
        bundle.putLong("time_to_live", conditionalUserProperty.mTimeToLive);
        String str7 = conditionalUserProperty.mExpiredEventName;
        if (str7 != null) {
            bundle.putString("expired_event_name", str7);
        }
        Bundle bundle4 = conditionalUserProperty.mExpiredEventParams;
        if (bundle4 != null) {
            bundle.putBundle("expired_event_params", bundle4);
        }
        bundle.putLong("creation_timestamp", conditionalUserProperty.mCreationTimestamp);
        bundle.putBoolean("active", conditionalUserProperty.mActive);
        bundle.putLong("triggered_timestamp", conditionalUserProperty.mTriggeredTimestamp);
        aVar.f(bundle);
    }

    public AppMeasurement(v22 v22Var) {
        this.a = new b(v22Var);
    }
}
