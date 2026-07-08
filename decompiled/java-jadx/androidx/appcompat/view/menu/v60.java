package androidx.appcompat.view.menu;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.PersistableBundle;
import android.util.Base64;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.zip.Adler32;

/* loaded from: classes.dex */
public class v60 implements pa1 {
    public final Context a;
    public final gp b;
    public final ur0 c;

    public v60(Context context, gp gpVar, ur0 ur0Var) {
        this.a = context;
        this.b = gpVar;
        this.c = ur0Var;
    }

    @Override // androidx.appcompat.view.menu.pa1
    public void a(d21 d21Var, int i) {
        b(d21Var, i, false);
    }

    @Override // androidx.appcompat.view.menu.pa1
    public void b(d21 d21Var, int i, boolean z) {
        ComponentName componentName = new ComponentName(this.a, (Class<?>) JobInfoSchedulerService.class);
        JobScheduler jobScheduler = (JobScheduler) this.a.getSystemService("jobscheduler");
        int c = c(d21Var);
        if (!z && d(jobScheduler, c, i)) {
            ma0.a("JobInfoScheduler", "Upload for context %s is already scheduled. Returning...", d21Var);
            return;
        }
        long g = this.b.g(d21Var);
        JobInfo.Builder c2 = this.c.c(new JobInfo.Builder(c, componentName), d21Var.d(), g, i);
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putInt("attemptNumber", i);
        persistableBundle.putString("backendName", d21Var.b());
        persistableBundle.putInt("priority", vj0.a(d21Var.d()));
        if (d21Var.c() != null) {
            persistableBundle.putString("extras", Base64.encodeToString(d21Var.c(), 0));
        }
        c2.setExtras(persistableBundle);
        ma0.b("JobInfoScheduler", "Scheduling upload for context %s with jobId=%d in %dms(Backend next call timestamp %d). Attempt %d", d21Var, Integer.valueOf(c), Long.valueOf(this.c.g(d21Var.d(), g, i)), Long.valueOf(g), Integer.valueOf(i));
        jobScheduler.schedule(c2.build());
    }

    public int c(d21 d21Var) {
        Adler32 adler32 = new Adler32();
        adler32.update(this.a.getPackageName().getBytes(Charset.forName("UTF-8")));
        adler32.update(d21Var.b().getBytes(Charset.forName("UTF-8")));
        adler32.update(ByteBuffer.allocate(4).putInt(vj0.a(d21Var.d())).array());
        if (d21Var.c() != null) {
            adler32.update(d21Var.c());
        }
        return (int) adler32.getValue();
    }

    public final boolean d(JobScheduler jobScheduler, int i, int i2) {
        for (JobInfo jobInfo : jobScheduler.getAllPendingJobs()) {
            int i3 = jobInfo.getExtras().getInt("attemptNumber");
            if (jobInfo.getId() == i) {
                return i3 >= i2;
            }
        }
        return false;
    }
}
