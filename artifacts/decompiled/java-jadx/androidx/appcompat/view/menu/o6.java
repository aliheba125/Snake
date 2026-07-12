package androidx.appcompat.view.menu;

import android.app.job.JobInfo;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageParser;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Binder;
import androidx.appcompat.view.menu.i00;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class o6 extends i00.a implements i30 {
    public static final o6 m = new o6();
    public final Map l = new HashMap();

    public static o6 k() {
        return m;
    }

    @Override // androidx.appcompat.view.menu.i00
    public int B0(String str, int i, int i2) {
        return i;
    }

    @Override // androidx.appcompat.view.menu.i00
    public a70 E(String str, int i, int i2) {
        return (a70) this.l.get(h(str, i));
    }

    @Override // androidx.appcompat.view.menu.i00
    public void O(String str, int i) {
    }

    public final String h(String str, int i) {
        return str + "_" + i;
    }

    @Override // androidx.appcompat.view.menu.i00
    public JobInfo i0(JobInfo jobInfo, int i) {
        ComponentName service = jobInfo.getService();
        Intent intent = new Intent();
        intent.setComponent(service);
        ResolveInfo W = x6.w2().W(intent, PackageParser.PARSE_IS_PRIVILEGED, null, i);
        if (W == null) {
            return jobInfo;
        }
        ServiceInfo serviceInfo = W.serviceInfo;
        yj0 d = a7.e().d(serviceInfo.packageName, serviceInfo.processName, i);
        if (d != null || (d = a7.e().u(serviceInfo.packageName, serviceInfo.processName, i, -1, Binder.getCallingPid())) != null) {
            return u2(d, jobInfo, serviceInfo);
        }
        throw new RuntimeException("Unable to create Process " + serviceInfo.processName);
    }

    @Override // androidx.appcompat.view.menu.i30
    public void j() {
    }

    public JobInfo u2(yj0 yj0Var, JobInfo jobInfo, ServiceInfo serviceInfo) {
        a70 a70Var = new a70();
        a70Var.m = jobInfo;
        a70Var.n = serviceInfo;
        this.l.put(h(yj0Var.m, jobInfo.getId()), a70Var);
        u60.b.e(jobInfo, new ComponentName(yu0.o(), kl0.g(yj0Var.s)));
        return jobInfo;
    }
}
