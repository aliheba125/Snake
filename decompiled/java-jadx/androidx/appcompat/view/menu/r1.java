package androidx.appcompat.view.menu;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public class r1 {
    public static final ConcurrentHashMap e = new ConcurrentHashMap();
    public final Map b = new LinkedHashMap();
    public final Map c = new HashMap();
    public final Handler d = new a(Looper.getMainLooper());
    public final ActivityManager a = (ActivityManager) yu0.m().getSystemService("activity");

    public class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            String str;
            if (message.what != 0 || (str = (String) message.obj) == null) {
                return;
            }
            r1.this.c.remove(str);
        }
    }

    public boolean c(Intent intent, int i) {
        return (intent.getFlags() & i) != 0;
    }

    public final void d(p1 p1Var, Intent intent) {
        StringBuilder sb = new StringBuilder();
        sb.append("deliverNewIntent called: record=");
        sb.append(p1Var.p);
        sb.append(" proc=");
        sb.append(p1Var.t);
        sb.append(" bActivityThread=");
        yj0 yj0Var = p1Var.t;
        sb.append(yj0Var != null ? yj0Var.n : "null");
        try {
            yj0 yj0Var2 = p1Var.t;
            Objects.requireNonNull(yj0Var2);
            yj0Var2.n.t(p1Var.m, intent);
        } catch (Throwable unused) {
        }
    }

    public final p1 e(int i, ComponentName componentName) {
        p1 p1Var = null;
        for (iz0 iz0Var : this.b.values()) {
            if (i == iz0Var.b) {
                Iterator it = iz0Var.e.iterator();
                while (true) {
                    if (it.hasNext()) {
                        p1 p1Var2 = (p1) it.next();
                        if (Objects.equals(p1Var2.p, componentName)) {
                            p1Var = p1Var2;
                            break;
                        }
                    }
                }
            }
        }
        return p1Var;
    }

    public final p1 f(int i, IBinder iBinder) {
        p1 p1Var = null;
        if (iBinder != null) {
            for (iz0 iz0Var : this.b.values()) {
                if (i == iz0Var.b) {
                    Iterator it = iz0Var.e.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            p1 p1Var2 = (p1) it.next();
                            if (p1Var2.m == iBinder) {
                                p1Var = p1Var2;
                                break;
                            }
                        }
                    }
                }
            }
        }
        return p1Var;
    }

    public final iz0 g(int i, String str) {
        synchronized (this.b) {
            try {
                for (iz0 iz0Var : this.b.values()) {
                    if (i == iz0Var.b && iz0Var.c.equals(str)) {
                        return iz0Var;
                    }
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void h(int i) {
        Iterator it = this.b.values().iterator();
        while (it.hasNext()) {
            for (p1 p1Var : ((iz0) it.next()).e) {
                if (p1Var.r == i && p1Var.s) {
                    try {
                        p1Var.t.n.e2(p1Var.m);
                    } catch (RemoteException unused) {
                    }
                }
            }
        }
    }

    public ComponentName i(IBinder iBinder, int i) {
        p1 f;
        synchronized (this.b) {
            try {
                x();
                p1 f2 = f(i, iBinder);
                return (f2 == null || (f = f(i, f2.n)) == null) ? new ComponentName(yu0.o(), "t.MainActivity") : f.p;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public String j(IBinder iBinder, int i) {
        p1 f;
        synchronized (this.b) {
            try {
                x();
                p1 f2 = f(i, iBinder);
                if (f2 == null || (f = f(i, f2.n)) == null) {
                    return yu0.o();
                }
                ActivityInfo activityInfo = f.o;
                Objects.requireNonNull(activityInfo);
                return activityInfo.packageName;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x007f, code lost:
    
        if (0 == 0) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Intent k(Intent intent, int i, il0 il0Var, ActivityInfo activityInfo) {
        Intent intent2 = new Intent();
        boolean z = true;
        TypedArray typedArray = null;
        try {
            try {
                Resources k = zg0.k(yu0.m(), activityInfo.applicationInfo);
                int i2 = activityInfo.theme;
                if (i2 == 0) {
                    i2 = activityInfo.applicationInfo.theme;
                }
                typedArray = k.newTheme().obtainStyledAttributes(i2, (int[]) nn0.i.b());
                if (typedArray.getBoolean(((Integer) nn0.k.b()).intValue(), false)) {
                    intent2.setComponent(new ComponentName(yu0.o(), kl0.a(i)));
                } else {
                    intent2.setComponent(new ComponentName(yu0.o(), kl0.d(i, activityInfo.screenOrientation == 0)));
                }
            } catch (Throwable unused) {
                String o = yu0.o();
                if (activityInfo.screenOrientation != 0) {
                    z = false;
                }
                intent2.setComponent(new ComponentName(o, kl0.d(i, z)));
            }
            typedArray.recycle();
            il0.b(intent2, intent, il0Var.b, il0Var.d, il0Var.a);
            return intent2;
        } catch (Throwable th) {
            if (0 != 0) {
                typedArray.recycle();
            }
            throw th;
        }
    }

    public final /* synthetic */ void l(yj0 yj0Var) {
        y(yj0Var);
        yu0.E(yj0Var);
    }

    public p1 m(Intent intent, ActivityInfo activityInfo, IBinder iBinder, int i) {
        p1 a2 = p1.a(intent, activityInfo, iBinder, i);
        synchronized (this.c) {
            this.c.put(a2.u, a2);
            this.d.sendMessageDelayed(Message.obtain(this.d, 0, a2.u), 15000L);
        }
        return a2;
    }

    public void n(yj0 yj0Var, int i, IBinder iBinder, String str) {
        p1 p1Var = (p1) this.c.get(str);
        if (p1Var == null) {
            return;
        }
        synchronized (this.c) {
            this.c.remove(str);
            this.d.removeMessages(0, str);
        }
        synchronized (this.b) {
            try {
                x();
                iz0 iz0Var = (iz0) this.b.get(Integer.valueOf(i));
                if (iz0Var == null) {
                    int i2 = p1Var.r;
                    ActivityInfo activityInfo = p1Var.o;
                    Objects.requireNonNull(activityInfo);
                    iz0Var = new iz0(i, i2, te.a(activityInfo));
                    iz0Var.d = p1Var.q;
                    this.b.put(Integer.valueOf(i), iz0Var);
                }
                p1Var.m = iBinder;
                p1Var.t = yj0Var;
                p1Var.l = iz0Var;
                iz0Var.a(p1Var);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void o(int i, IBinder iBinder) {
        synchronized (this.b) {
            try {
                x();
                p1 f = f(i, iBinder);
                if (f == null) {
                    return;
                }
                f.s = true;
                iz0 iz0Var = f.l;
                Objects.requireNonNull(iz0Var);
                synchronized (iz0Var.e) {
                    f.l.d(f);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void p(int i, IBinder iBinder) {
        synchronized (this.b) {
            try {
                x();
                p1 f = f(i, iBinder);
                if (f == null) {
                    return;
                }
                iz0 iz0Var = f.l;
                Objects.requireNonNull(iz0Var);
                synchronized (iz0Var.e) {
                    f.l.d(f);
                    f.l.a(f);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void q(int i, IBinder iBinder) {
        synchronized (this.b) {
            try {
                x();
                p1 f = f(i, iBinder);
                if (f == null) {
                    return;
                }
                f.s = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final int r(IInterface iInterface, Intent intent, String str, IBinder iBinder, String str2, int i, int i2, Bundle bundle) {
        try {
            return ((Integer) qz.d.b(l1.c.b(new Object[0]), iInterface, yu0.o(), intent, str, iBinder, str2, Integer.valueOf(i), Integer.valueOf(i2 & (-15)), null, bundle)).intValue();
        } catch (Throwable th) {
            th.printStackTrace();
            return 0;
        }
    }

    public int s(int i, Intent[] intentArr, String[] strArr, IBinder iBinder, Bundle bundle) {
        if (intentArr == null) {
            throw new NullPointerException("intents is null");
        }
        if (strArr == null) {
            throw new NullPointerException("resolvedTypes is null");
        }
        if (intentArr.length != strArr.length) {
            throw new IllegalArgumentException("intents are length different than resolvedTypes");
        }
        for (int i2 = 0; i2 < intentArr.length; i2++) {
            v(i, intentArr[i2], strArr[i2], iBinder, null, -1, 0, bundle);
        }
        return 0;
    }

    public final int t(int i, Intent intent, ActivityInfo activityInfo, IBinder iBinder, int i2) {
        Intent w = w(i, intent, activityInfo, m(intent, activityInfo, iBinder, i));
        w.addFlags(134217728);
        w.addFlags(524288);
        w.addFlags(268435456);
        w.addFlags(i2);
        yu0.m().startActivity(w);
        return 0;
    }

    public final int u(Intent intent, String str, IBinder iBinder, String str2, int i, int i2, Bundle bundle, int i3, p1 p1Var, ActivityInfo activityInfo, int i4) {
        Intent w = w(i3, intent, activityInfo, m(intent, activityInfo, iBinder, i3));
        w.setAction(UUID.randomUUID().toString());
        w.addFlags(i4);
        if (iBinder == null) {
            if (intent.getBooleanExtra("_snake_external_caller", false)) {
                w.addFlags(134742016);
                intent.removeExtra("_snake_external_caller");
            } else {
                w.addFlags(268435456);
            }
        }
        yj0 yj0Var = p1Var.t;
        Objects.requireNonNull(yj0Var);
        return r(yj0Var.o, w, str, iBinder, str2, i, i2, bundle);
    }

    public int v(int i, Intent intent, String str, IBinder iBinder, String str2, int i2, int i3, Bundle bundle) {
        ActivityInfo activityInfo;
        iz0 g;
        iz0 iz0Var;
        p1 p1Var;
        p1 b;
        ActivityInfo activityInfo2;
        ActivityInfo activityInfo3;
        synchronized (this.b) {
            x();
        }
        ResolveInfo n = x6.w2().n(intent, 1, str, i);
        if (n == null || ((activityInfo3 = n.activityInfo) == null && activityInfo3.packageName.equals(yu0.o()))) {
            try {
                n = yu0.r().resolveActivity(intent, 0);
                Iterator it = this.b.values().iterator();
                p1 p1Var2 = null;
                while (it.hasNext() && (p1Var2 = ((iz0) it.next()).b()) == null) {
                }
                if (p1Var2 != null && (activityInfo = p1Var2.o) != null) {
                    ActivityInfo activityInfo4 = n.activityInfo;
                    activityInfo4.packageName = activityInfo.packageName;
                    activityInfo4.processName = activityInfo.processName;
                    activityInfo4.applicationInfo = activityInfo.applicationInfo;
                }
            } catch (Exception unused) {
            }
        }
        if (n == null || n.activityInfo == null) {
            ComponentName component = intent.getComponent();
            if (component == null || !component.getPackageName().equals(yu0.o())) {
                return 0;
            }
            ActivityInfo activityInfo5 = new ActivityInfo();
            activityInfo5.packageName = component.getPackageName();
            activityInfo5.name = component.getClassName();
            activityInfo5.processName = component.getPackageName();
            activityInfo5.applicationInfo = yu0.m().getApplicationInfo();
            n = new ResolveInfo();
            n.activityInfo = activityInfo5;
        }
        ActivityInfo activityInfo6 = n.activityInfo;
        IBinder iBinder2 = iBinder;
        p1 f = f(i, iBinder2);
        if (f == null) {
            iBinder2 = null;
        }
        iz0 iz0Var2 = f != null ? f.l : null;
        String a2 = te.a(activityInfo6);
        boolean z = c(intent, 536870912) || activityInfo6.launchMode == 1;
        boolean c = c(intent, 268435456);
        boolean c2 = c(intent, 67108864);
        boolean c3 = c(intent, 32768);
        int i4 = activityInfo6.launchMode;
        if (i4 == 0 || i4 == 1 || i4 == 2) {
            g = g(i, a2);
            if (g == null && !c) {
                g = iz0Var2;
            }
        } else {
            g = i4 != 3 ? null : g(i, a2);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("task=");
        sb.append(g);
        sb.append(" affinity=");
        sb.append(a2);
        sb.append(" newTask=");
        sb.append(c);
        sb.append(" clearTop=");
        sb.append(c2);
        sb.append(" singleTop=");
        sb.append(z);
        sb.append(" launchMode=");
        sb.append(activityInfo6.launchMode);
        if (g == null || g.c()) {
            return t(i, intent, activityInfo6, iBinder2, 0);
        }
        this.a.moveTaskToFront(g.a, 0);
        if (!c2 && !z && !c3 && te.b(g.d, intent) && g.d.getFlags() == intent.getFlags()) {
            return 0;
        }
        p1 b2 = g.b();
        ComponentName f2 = te.f(activityInfo6);
        p1 e2 = e(i, f2);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("startActivityLocked: target=");
        sb2.append(f2);
        sb2.append(" found=");
        sb2.append(e2 != null);
        sb2.append(" clearTop=");
        sb2.append(c2);
        sb2.append(" singleTop=");
        sb2.append(z);
        sb2.append(" resultTo=");
        sb2.append(iBinder2);
        sb2.append(" requestCode=");
        sb2.append(i2);
        if (!c2 || e2 == null) {
            iz0Var = iz0Var2;
            p1Var = null;
        } else {
            iz0 iz0Var3 = e2.l;
            Objects.requireNonNull(iz0Var3);
            synchronized (iz0Var3.e) {
                try {
                    int size = e2.l.e.size() - 1;
                    while (true) {
                        if (size < 0) {
                            iz0Var = iz0Var2;
                            break;
                        }
                        p1 p1Var3 = (p1) e2.l.e.get(size);
                        if (p1Var3 != e2) {
                            p1Var3.s = true;
                            size--;
                            iz0Var2 = iz0Var2;
                        } else {
                            iz0Var = iz0Var2;
                            if (z) {
                                p1Var = e2;
                            } else {
                                e2.s = true;
                            }
                        }
                    }
                    p1Var = null;
                } finally {
                }
            }
        }
        if (z && !c2 && te.b(b2.q, intent)) {
            p1Var = b2;
        }
        if (activityInfo6.launchMode == 2 && !c2) {
            if (te.b(b2.q, intent)) {
                p1Var = b2;
            } else {
                p1 e3 = e(i, te.f(activityInfo6));
                if (e3 != null) {
                    synchronized (g.e) {
                        try {
                            boolean z2 = true;
                            int size2 = g.e.size() - 1;
                            while (size2 >= 0) {
                                p1 p1Var4 = (p1) g.e.get(size2);
                                if (p1Var4 == e3) {
                                    break;
                                }
                                p1Var4.s = z2;
                                size2--;
                                z2 = true;
                            }
                        } finally {
                        }
                    }
                    p1Var = e3;
                }
            }
        }
        p1 p1Var5 = activityInfo6.launchMode == 3 ? b2 : p1Var;
        if (c3 && c) {
            Iterator it2 = g.e.iterator();
            while (it2.hasNext()) {
                ((p1) it2.next()).s = true;
            }
        }
        h(i);
        if (p1Var5 != null) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("newIntentRecord=");
            sb3.append(p1Var5.p);
            sb3.append(" targetActivityRecord=");
            sb3.append(e2 != null ? e2.p : "NULL");
            sb3.append(" topActivityRecord=");
            sb3.append(b2 != null ? b2.p : "NULL");
            d(p1Var5, intent);
            return 0;
        }
        if (iBinder2 == null) {
            p1 b3 = g.b();
            if (b3 != null && (activityInfo2 = b3.o) != null && !activityInfo2.name.startsWith(yu0.o())) {
                iBinder2 = b3.m;
            }
        } else if (iz0Var != null && (b = iz0Var.b()) != null) {
            iBinder2 = b.m;
        }
        return u(intent, str, iBinder2, str2, i2, i3, bundle, i, b2, activityInfo6, 0);
    }

    public final Intent w(int i, Intent intent, ActivityInfo activityInfo, p1 p1Var) {
        il0 il0Var = new il0(i, activityInfo, intent, p1Var.u);
        yj0 u = a7.e().u(activityInfo.packageName, activityInfo.processName, i, -1, Binder.getCallingPid());
        if (u != null) {
            z(u);
            return k(intent, u.s, il0Var, activityInfo);
        }
        throw new RuntimeException("Unable to create process, name:" + activityInfo.name);
    }

    public final void x() {
        List<ActivityManager.RecentTaskInfo> recentTasks = this.a.getRecentTasks(100, 0);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (int size = recentTasks.size() - 1; size >= 0; size--) {
            ActivityManager.RecentTaskInfo recentTaskInfo = recentTasks.get(size);
            iz0 iz0Var = (iz0) this.b.get(Integer.valueOf(recentTaskInfo.id));
            if (iz0Var != null) {
                linkedHashMap.put(Integer.valueOf(recentTaskInfo.id), iz0Var);
            }
        }
        this.b.clear();
        this.b.putAll(linkedHashMap);
    }

    public final void y(yj0 yj0Var) {
        IBinder asBinder;
        IBinder.DeathRecipient deathRecipient = (IBinder.DeathRecipient) e.remove(yj0Var);
        if (deathRecipient == null) {
            return;
        }
        h00 h00Var = yj0Var.n;
        if (h00Var != null) {
            asBinder = h00Var.asBinder();
        } else {
            IInterface iInterface = yj0Var.o;
            asBinder = iInterface != null ? iInterface.asBinder() : null;
        }
        if (asBinder != null) {
            try {
                asBinder.unlinkToDeath(deathRecipient, 0);
            } catch (Throwable unused) {
            }
        }
    }

    public final void z(final yj0 yj0Var) {
        IBinder asBinder;
        h00 h00Var = yj0Var.n;
        if (h00Var != null) {
            asBinder = h00Var.asBinder();
        } else {
            IInterface iInterface = yj0Var.o;
            asBinder = iInterface != null ? iInterface.asBinder() : null;
        }
        if (asBinder == null) {
            return;
        }
        IBinder.DeathRecipient deathRecipient = new IBinder.DeathRecipient() { // from class: androidx.appcompat.view.menu.q1
            @Override // android.os.IBinder.DeathRecipient
            public final void binderDied() {
                r1.this.l(yj0Var);
            }
        };
        try {
            asBinder.linkToDeath(deathRecipient, 0);
            e.put(yj0Var, deathRecipient);
        } catch (RemoteException unused) {
            deathRecipient.binderDied();
        }
    }
}
