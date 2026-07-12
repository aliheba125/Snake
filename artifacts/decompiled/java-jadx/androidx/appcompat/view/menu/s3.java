package androidx.appcompat.view.menu;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.res.Configuration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public class s3 {
    public static final s3 b = new s3();
    public final Map a = new HashMap();

    public static s3 a() {
        return b;
    }

    public JobService b(int i) {
        JobService jobService;
        synchronized (this.a) {
            a70 a70Var = (a70) this.a.get(Integer.valueOf(i));
            if (a70Var != null && (jobService = a70Var.o) != null) {
                return jobService;
            }
            try {
                a70 i2 = yu0.k().i(jv0.G2(), i);
                if (i2 == null) {
                    return null;
                }
                JobService y2 = jv0.B2().y2(i2.n);
                i2.o = y2;
                if (y2 == null) {
                    return null;
                }
                this.a.put(Integer.valueOf(i), i2);
                return i2.o;
            } catch (Throwable th) {
                th.printStackTrace();
                return null;
            }
        }
    }

    public void c(Configuration configuration) {
        Iterator it = this.a.values().iterator();
        while (it.hasNext()) {
            JobService jobService = ((a70) it.next()).o;
            if (jobService != null) {
                jobService.onConfigurationChanged(configuration);
            }
        }
    }

    public void d() {
        Iterator it = this.a.values().iterator();
        while (it.hasNext()) {
            JobService jobService = ((a70) it.next()).o;
            if (jobService != null) {
                jobService.onDestroy();
            }
        }
    }

    public void e() {
        Iterator it = this.a.values().iterator();
        while (it.hasNext()) {
            JobService jobService = ((a70) it.next()).o;
            if (jobService != null) {
                jobService.onLowMemory();
            }
        }
    }

    public boolean f(JobParameters jobParameters) {
        try {
            JobService b2 = b(jobParameters.getJobId());
            if (b2 == null) {
                return false;
            }
            return b2.onStartJob(jobParameters);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean g(JobParameters jobParameters) {
        JobService b2 = b(jobParameters.getJobId());
        if (b2 == null) {
            return false;
        }
        boolean onStopJob = b2.onStopJob(jobParameters);
        b2.onDestroy();
        synchronized (this.a) {
            this.a.remove(Integer.valueOf(jobParameters.getJobId()));
        }
        return onStopJob;
    }

    public void h(int i) {
        Iterator it = this.a.values().iterator();
        while (it.hasNext()) {
            JobService jobService = ((a70) it.next()).o;
            if (jobService != null) {
                jobService.onTrimMemory(i);
            }
        }
    }
}
