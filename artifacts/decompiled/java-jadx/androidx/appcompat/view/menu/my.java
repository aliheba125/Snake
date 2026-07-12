package androidx.appcompat.view.menu;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import androidx.appcompat.view.menu.e1;
import androidx.appcompat.view.menu.t1;
import java.lang.reflect.Proxy;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public class my implements j10, Handler.Callback {
    public Handler.Callback l;
    public final AtomicBoolean m = new AtomicBoolean(false);

    @Override // androidx.appcompat.view.menu.j10
    public boolean a() {
        Handler.Callback e = e();
        return (e == null || e == this) ? false : true;
    }

    @Override // androidx.appcompat.view.menu.j10
    public void b() {
        Handler.Callback e = e();
        this.l = e;
        if (e != null && (e == this || e.getClass().getName().equals(getClass().getName()))) {
            this.l = null;
        }
        ny.b.e(d(), this);
    }

    public final void c() {
        try {
            Object b = e1.d.b(new Object[0]);
            if (b instanceof Proxy) {
                return;
            }
            pz pzVar = new pz(b);
            pzVar.k(true);
            pzVar.b();
            e1.a.b.e(e1.b.c(e1.c.b(new Object[0])), pzVar.g());
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final Handler d() {
        return (Handler) t1.g.c(yu0.D());
    }

    public final Handler.Callback e() {
        return (Handler.Callback) ny.b.c(d());
    }

    public final Object f(Object obj) {
        for (Object obj2 : (List) bc.b.c(obj)) {
            if (h80.a.p().getName().equals(obj2.getClass().getCanonicalName())) {
                return obj2;
            }
        }
        return null;
    }

    public final boolean g(Object obj) {
        if (jv0.D2() != null) {
            String E2 = jv0.E2();
            ServiceInfo serviceInfo = (ServiceInfo) t1.c.b.c(obj);
            if (!serviceInfo.name.equals(kl0.i(jv0.F2())) && !serviceInfo.name.equals(kl0.g(jv0.F2()))) {
                Intent intent = new Intent();
                intent.setComponent(new ComponentName(E2, serviceInfo.name));
                yu0.j().E(intent, null, false, jv0.N2());
                return true;
            }
        }
        return false;
    }

    public final boolean h(Object obj) {
        Intent intent;
        IBinder iBinder;
        il0 a;
        ActivityInfo activityInfo;
        Object f = y8.e() ? f(obj) : obj;
        if (f == null) {
            return false;
        }
        if (y8.e()) {
            intent = (Intent) h80.c.c(f);
            iBinder = (IBinder) bc.c.c(obj);
        } else {
            intent = (Intent) t1.a.d.c(f);
            iBinder = (IBinder) t1.a.e.c(f);
        }
        if (intent != null && (activityInfo = (a = il0.a(intent)).b) != null) {
            if (jv0.D2() == null) {
                yu0.j().y(activityInfo.packageName, activityInfo.processName, a.a);
                Intent l = yu0.u().l(activityInfo.packageName, a.a);
                intent.setExtrasClassLoader(getClass().getClassLoader());
                il0.b(intent, l, a.b, a.d, a.a);
                if (y8.e()) {
                    h80.c.e(f, intent);
                    h80.b.e(f, activityInfo);
                } else {
                    t1.a.d.e(f, intent);
                    t1.a.c.e(f, activityInfo);
                }
                return true;
            }
            if (!jv0.B2().S2()) {
                jv0.B2().x2(activityInfo.packageName, activityInfo.processName);
                return true;
            }
            yu0.j().r(((Integer) qz.b.b(l1.c.b(new Object[0]), iBinder, Boolean.FALSE)).intValue(), iBinder, a.d);
            int i = Build.VERSION.SDK_INT;
            if (i == 31 || (i == 30 && Build.VERSION.PREVIEW_SDK_INT == 1)) {
                Object b = t1.n.b(yu0.D(), iBinder);
                t1.a.d.e(b, a.c);
                t1.a.c.e(b, activityInfo);
                t1.a.g.e(b, jv0.B2().L2());
                c();
            } else if (y8.e()) {
                h80.c.e(f, a.c);
                h80.b.e(f, activityInfo);
            } else {
                t1.a.d.e(f, a.c);
                t1.a.c.e(f, activityInfo);
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x006d A[Catch: all -> 0x0088, TRY_LEAVE, TryCatch #0 {all -> 0x0088, blocks: (B:6:0x000a, B:8:0x0010, B:10:0x0020, B:12:0x0028, B:15:0x005d, B:17:0x006d, B:20:0x0079, B:22:0x007d, B:25:0x0039, B:27:0x0049, B:29:0x0051), top: B:5:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0079 A[Catch: all -> 0x0088, TRY_ENTER, TryCatch #0 {all -> 0x0088, blocks: (B:6:0x000a, B:8:0x0010, B:10:0x0020, B:12:0x0028, B:15:0x005d, B:17:0x006d, B:20:0x0079, B:22:0x007d, B:25:0x0039, B:27:0x0049, B:29:0x0051), top: B:5:0x000a }] */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean handleMessage(Message message) {
        boolean handleMessage;
        if (!this.m.getAndSet(true)) {
            try {
                if (!y8.e()) {
                    if (message.what == ((Integer) t1.d.d.b()).intValue() && h(message.obj)) {
                        d().sendMessageAtFrontOfQueue(Message.obtain(message));
                        this.m.set(false);
                        return true;
                    }
                    if (message.what != ((Integer) t1.d.b.b()).intValue()) {
                    }
                    this.m.set(false);
                    return handleMessage;
                }
                if (message.what == ((Integer) t1.d.c.b()).intValue() && h(message.obj)) {
                    d().sendMessageAtFrontOfQueue(Message.obtain(message));
                    this.m.set(false);
                    return true;
                }
                if (message.what != ((Integer) t1.d.b.b()).intValue()) {
                    handleMessage = g(message.obj);
                } else {
                    Handler.Callback callback = this.l;
                    if (callback == null) {
                        this.m.set(false);
                        return false;
                    }
                    handleMessage = callback.handleMessage(message);
                }
                this.m.set(false);
                return handleMessage;
            } catch (Throwable unused) {
                this.m.set(false);
            }
        }
        return false;
    }
}
