package androidx.appcompat.view.menu;

import android.app.job.JobInfo;
import android.os.RemoteException;

/* loaded from: classes.dex */
public class mv0 extends kv0 {
    public static final mv0 d = new mv0(i00.class);

    public mv0(Class cls) {
        super(cls);
    }

    public static mv0 h() {
        return d;
    }

    @Override // androidx.appcompat.view.menu.kv0
    public String d() {
        return "job_manager";
    }

    public int f(String str, int i) {
        try {
            return ((i00) c()).B0(str, i, jv0.N2());
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public void g(String str) {
        try {
            ((i00) c()).O(str, jv0.N2());
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public a70 i(String str, int i) {
        try {
            return ((i00) c()).E(str, i, jv0.N2());
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public JobInfo j(JobInfo jobInfo) {
        try {
            return ((i00) c()).i0(jobInfo, jv0.N2());
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }
}
