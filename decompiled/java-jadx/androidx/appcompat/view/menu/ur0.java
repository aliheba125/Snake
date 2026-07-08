package androidx.appcompat.view.menu;

import android.app.job.JobInfo;
import androidx.appcompat.view.menu.h6;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public abstract class ur0 {

    public static class a {
        public ec a;
        public Map b = new HashMap();

        public a a(tj0 tj0Var, b bVar) {
            this.b.put(tj0Var, bVar);
            return this;
        }

        public ur0 b() {
            if (this.a == null) {
                throw new NullPointerException("missing required property: clock");
            }
            if (this.b.keySet().size() < tj0.values().length) {
                throw new IllegalStateException("Not all priorities have been configured");
            }
            Map map = this.b;
            this.b = new HashMap();
            return ur0.d(this.a, map);
        }

        public a c(ec ecVar) {
            this.a = ecVar;
            return this;
        }
    }

    public static abstract class b {

        public static abstract class a {
            public abstract b a();

            public abstract a b(long j);

            public abstract a c(Set set);

            public abstract a d(long j);
        }

        public static a a() {
            return new h6.b().c(Collections.emptySet());
        }

        public abstract long b();

        public abstract Set c();

        public abstract long d();
    }

    public enum c {
        NETWORK_UNMETERED,
        DEVICE_IDLE,
        DEVICE_CHARGING
    }

    public static a b() {
        return new a();
    }

    public static ur0 d(ec ecVar, Map map) {
        return new g6(ecVar, map);
    }

    public static ur0 f(ec ecVar) {
        return b().a(tj0.DEFAULT, b.a().b(30000L).d(86400000L).a()).a(tj0.HIGHEST, b.a().b(1000L).d(86400000L).a()).a(tj0.VERY_LOW, b.a().b(86400000L).d(86400000L).c(i(c.DEVICE_IDLE)).a()).c(ecVar).b();
    }

    public static Set i(Object... objArr) {
        return Collections.unmodifiableSet(new HashSet(Arrays.asList(objArr)));
    }

    public final long a(int i, long j) {
        return (long) (Math.pow(3.0d, i - 1) * j * Math.max(1.0d, Math.log(10000.0d) / Math.log((j > 1 ? j : 2L) * r7)));
    }

    public JobInfo.Builder c(JobInfo.Builder builder, tj0 tj0Var, long j, int i) {
        builder.setMinimumLatency(g(tj0Var, j, i));
        j(builder, ((b) h().get(tj0Var)).c());
        return builder;
    }

    public abstract ec e();

    public long g(tj0 tj0Var, long j, int i) {
        long a2 = j - e().a();
        b bVar = (b) h().get(tj0Var);
        return Math.min(Math.max(a(i, bVar.b()), a2), bVar.d());
    }

    public abstract Map h();

    public final void j(JobInfo.Builder builder, Set set) {
        if (set.contains(c.NETWORK_UNMETERED)) {
            builder.setRequiredNetworkType(2);
        } else {
            builder.setRequiredNetworkType(1);
        }
        if (set.contains(c.DEVICE_CHARGING)) {
            builder.setRequiresCharging(true);
        }
        if (set.contains(c.DEVICE_IDLE)) {
            builder.setRequiresDeviceIdle(true);
        }
    }
}
