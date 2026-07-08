package androidx.appcompat.view.menu;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Binder;
import android.os.Bundle;
import android.os.ConditionVariable;
import android.os.IBinder;
import android.os.Process;
import android.os.RemoteException;
import androidx.appcompat.view.menu.h00;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class a7 implements i30 {
    public static final a7 o = new a7();
    public final Map l = new HashMap();
    public final List m = new ArrayList();
    public final Object n = new Object();

    public class a implements IBinder.DeathRecipient {
        public final /* synthetic */ IBinder l;
        public final /* synthetic */ yj0 m;

        public a(IBinder iBinder, yj0 yj0Var) {
            this.l = iBinder;
            this.m = yj0Var;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            this.l.unlinkToDeath(this, 0);
            a7.this.q(this.m);
        }
    }

    public static void b(yj0 yj0Var) {
        try {
            lr.m(yj0Var.m.getBytes(), new File(lv0.r(yj0Var.s), "cmdline"));
        } catch (IOException unused) {
        }
    }

    public static a7 e() {
        return o;
    }

    public static int h(Context context, String str) {
        try {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses()) {
                if (runningAppProcessInfo.processName.equalsIgnoreCase(str.toLowerCase())) {
                    return runningAppProcessInfo.pid;
                }
            }
            return -1;
        } catch (Throwable th) {
            th.printStackTrace();
            return -1;
        }
    }

    public static String i(Context context, int i) {
        String str;
        Iterator<ActivityManager.RunningAppProcessInfo> it = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses().iterator();
        while (true) {
            if (!it.hasNext()) {
                str = null;
                break;
            }
            ActivityManager.RunningAppProcessInfo next = it.next();
            if (next.pid == i) {
                str = next.processName;
                break;
            }
        }
        if (str != null) {
            return str;
        }
        throw new RuntimeException("processName = null");
    }

    public static void s(yj0 yj0Var) {
        lr.d(lv0.r(yj0Var.s));
    }

    public final void a(yj0 yj0Var, IBinder iBinder) {
        h00 asInterface = h00.a.asInterface(iBinder);
        if (asInterface == null) {
            p(yj0Var);
            return;
        }
        try {
            iBinder.linkToDeath(new a(iBinder, yj0Var), 0);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
        yj0Var.n = asInterface;
        try {
            yj0Var.o = d4.a(asInterface.s0());
        } catch (RemoteException e2) {
            e2.printStackTrace();
        }
        yj0Var.v.open();
    }

    public yj0 c(int i) {
        synchronized (this.m) {
            try {
                for (yj0 yj0Var : this.m) {
                    if (yj0Var.q == i) {
                        return yj0Var;
                    }
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public yj0 d(String str, String str2, int i) {
        synchronized (this.l) {
            try {
                Map map = (Map) this.l.get(Integer.valueOf(d7.b(i, x6.w2().y2(str))));
                if (map == null) {
                    return null;
                }
                return (yj0) map.get(str2);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public int f(int i, String str) {
        yj0 c = c(i);
        return c == null ? x6.w2().y2(str) : d7.a(c.r);
    }

    public List g(String str, int i) {
        synchronized (this.l) {
            try {
                Map map = (Map) this.l.get(Integer.valueOf(d7.b(i, x6.w2().y2(str))));
                if (map == null) {
                    return new ArrayList();
                }
                return new ArrayList(map.values());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.appcompat.view.menu.i30
    public void j() {
        lr.d(lv0.q());
    }

    public int k(int i) {
        yj0 c = c(i);
        if (c == null) {
            return 0;
        }
        return c.u;
    }

    public final int l() {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) yu0.m().getSystemService("activity")).getRunningAppProcesses();
        HashSet hashSet = new HashSet();
        Iterator<ActivityManager.RunningAppProcessInfo> it = runningAppProcesses.iterator();
        while (it.hasNext()) {
            hashSet.add(Integer.valueOf(r(it.next().processName)));
        }
        for (int i = 0; i < 4; i++) {
            if (!hashSet.contains(Integer.valueOf(i))) {
                return i;
            }
        }
        return -1;
    }

    public final boolean m(yj0 yj0Var) {
        p3 a2 = yj0Var.a();
        Bundle bundle = new Bundle();
        bundle.putParcelable("SnakeEngine_client_config", a2);
        IBinder b = e9.b(gl0.b(yj0Var.c(), "_Engine_|_init_process_", null, bundle), "_Engine_|_client_");
        if (b == null || !b.isBinderAlive()) {
            return false;
        }
        a(yj0Var, b);
        b(yj0Var);
        return true;
    }

    public void n(String str) {
        synchronized (this.n) {
            synchronized (this.m) {
                try {
                    ArrayList arrayList = new ArrayList(this.m);
                    int y2 = x6.w2().y2(str);
                    for (yj0 yj0Var : this.m) {
                        if (y2 == d7.a(yj0Var.r)) {
                            this.l.remove(Integer.valueOf(yj0Var.r));
                            p(yj0Var);
                            arrayList.remove(yj0Var);
                        }
                    }
                    this.m.clear();
                    this.m.addAll(arrayList);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public void o(String str, int i) {
        synchronized (this.n) {
            try {
                int b = d7.b(i, x6.w2().y2(str));
                Map map = (Map) this.l.get(Integer.valueOf(b));
                if (map == null) {
                    return;
                }
                for (yj0 yj0Var : map.values()) {
                    p(yj0Var);
                    this.m.remove(yj0Var);
                }
                this.l.remove(Integer.valueOf(b));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void p(yj0 yj0Var) {
        int i = yj0Var.q;
        if (i > 0) {
            Process.killProcess(i);
            return;
        }
        try {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager) yu0.m().getSystemService("activity")).getRunningAppProcesses()) {
                int r = r(runningAppProcessInfo.processName);
                if (r != -1 && yj0Var.s == r) {
                    Process.killProcess(runningAppProcessInfo.pid);
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void q(yj0 yj0Var) {
        synchronized (this.n) {
            try {
                p(yj0Var);
                Map map = (Map) this.l.get(Integer.valueOf(yj0Var.r));
                if (map != null) {
                    map.remove(yj0Var.m);
                    if (map.isEmpty()) {
                        this.l.remove(Integer.valueOf(yj0Var.r));
                    }
                }
                this.m.remove(yj0Var);
                s(yj0Var);
                pv0.k().h(yj0Var.b(), yj0Var.u);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final int r(String str) {
        if (str == null) {
            return -1;
        }
        String str2 = yu0.o() + ":p";
        if (str.startsWith(str2)) {
            try {
                return Integer.parseInt(str.substring(str2.length()));
            } catch (NumberFormatException unused) {
            }
        }
        return -1;
    }

    public void t(String str, String str2, int i) {
        synchronized (this.n) {
            try {
                int callingPid = Binder.getCallingPid();
                yj0 c = c(callingPid);
                if (c != null) {
                    p(c);
                }
                u(str, str2, i, r(i(yu0.m(), callingPid)), callingPid);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public yj0 u(String str, String str2, int i, int i2, int i3) {
        ApplicationInfo c0 = x6.w2().c0(str, 0, i);
        yj0 yj0Var = null;
        if (c0 == null) {
            return null;
        }
        int b = d7.b(i, x6.w2().y2(str));
        synchronized (this.n) {
            try {
                Map map = (Map) this.l.get(Integer.valueOf(b));
                if (map == null) {
                    map = new HashMap();
                }
                if (i2 == -1) {
                    yj0 yj0Var2 = (yj0) map.get(str2);
                    if (yj0Var2 != null) {
                        ConditionVariable conditionVariable = yj0Var2.v;
                        if (conditionVariable != null) {
                            conditionVariable.block();
                        }
                        if (yj0Var2.n != null) {
                            return yj0Var2;
                        }
                    }
                    i2 = l();
                }
                if (i2 == -1) {
                    throw new RuntimeException("No processes available");
                }
                yj0 yj0Var3 = new yj0(c0, str2);
                yj0Var3.p = Process.myUid();
                yj0Var3.s = i2;
                yj0Var3.r = x6.w2().y2(str);
                yj0Var3.t = f(i3, str);
                yj0Var3.u = i;
                map.put(str2, yj0Var3);
                this.m.add(yj0Var3);
                synchronized (this.l) {
                    this.l.put(Integer.valueOf(b), map);
                }
                if (m(yj0Var3)) {
                    yj0Var3.q = h(yu0.m(), kl0.c(yj0Var3.s));
                    yj0Var = yj0Var3;
                } else {
                    map.remove(str2);
                    this.m.remove(yj0Var3);
                }
                return yj0Var;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
