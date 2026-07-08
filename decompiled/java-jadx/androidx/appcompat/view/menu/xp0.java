package androidx.appcompat.view.menu;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import java.io.IOException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class xp0 {
    public static int h;
    public static PendingIntent i;
    public static final Executor j = new Executor() { // from class: androidx.appcompat.view.menu.yf2
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            runnable.run();
        }
    };
    public static final Pattern k = Pattern.compile("\\|ID\\|([^|]+)\\|:?+(.*)");
    public final Context b;
    public final jf2 c;
    public final ScheduledExecutorService d;
    public Messenger f;
    public ep1 g;
    public final nu0 a = new nu0();
    public final Messenger e = new Messenger(new kf1(this, Looper.getMainLooper()));

    public xp0(Context context) {
        this.b = context;
        this.c = new jf2(context);
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1);
        scheduledThreadPoolExecutor.setKeepAliveTime(60L, TimeUnit.SECONDS);
        scheduledThreadPoolExecutor.allowCoreThreadTimeOut(true);
        this.d = scheduledThreadPoolExecutor;
    }

    public static /* synthetic */ zy0 c(Bundle bundle) {
        return k(bundle) ? jz0.e(null) : jz0.e(bundle);
    }

    public static /* bridge */ /* synthetic */ void e(xp0 xp0Var, Message message) {
        if (message != null) {
            Object obj = message.obj;
            if (obj instanceof Intent) {
                Intent intent = (Intent) obj;
                intent.setExtrasClassLoader(new bn1());
                if (intent.hasExtra("google.messenger")) {
                    Parcelable parcelableExtra = intent.getParcelableExtra("google.messenger");
                    if (parcelableExtra instanceof ep1) {
                        xp0Var.g = (ep1) parcelableExtra;
                    }
                    if (parcelableExtra instanceof Messenger) {
                        xp0Var.f = (Messenger) parcelableExtra;
                    }
                }
                Intent intent2 = (Intent) message.obj;
                String action = intent2.getAction();
                if (!of2.a(action, "com.google.android.c2dm.intent.REGISTRATION")) {
                    if (Log.isLoggable("Rpc", 3)) {
                        "Unexpected response action: ".concat(String.valueOf(action));
                        return;
                    }
                    return;
                }
                String stringExtra = intent2.getStringExtra("registration_id");
                if (stringExtra == null) {
                    stringExtra = intent2.getStringExtra("unregistered");
                }
                if (stringExtra != null) {
                    Matcher matcher = k.matcher(stringExtra);
                    if (!matcher.matches()) {
                        if (Log.isLoggable("Rpc", 3)) {
                            "Unexpected response string: ".concat(stringExtra);
                            return;
                        }
                        return;
                    }
                    String group = matcher.group(1);
                    String group2 = matcher.group(2);
                    if (group != null) {
                        Bundle extras = intent2.getExtras();
                        extras.putString("registration_id", group2);
                        xp0Var.j(group, extras);
                        return;
                    }
                    return;
                }
                String stringExtra2 = intent2.getStringExtra("error");
                if (stringExtra2 == null) {
                    "Unexpected response, no error or registration id ".concat(String.valueOf(intent2.getExtras()));
                    return;
                }
                if (Log.isLoggable("Rpc", 3)) {
                    "Received InstanceID error ".concat(stringExtra2);
                }
                if (!stringExtra2.startsWith("|")) {
                    synchronized (xp0Var.a) {
                        for (int i2 = 0; i2 < xp0Var.a.size(); i2++) {
                            try {
                                xp0Var.j((String) xp0Var.a.i(i2), intent2.getExtras());
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return;
                }
                String[] split = stringExtra2.split("\\|");
                if (split.length <= 2 || !of2.a(split[1], "ID")) {
                    "Unexpected structured response ".concat(stringExtra2);
                    return;
                }
                String str = split[2];
                String str2 = split[3];
                if (str2.startsWith(":")) {
                    str2 = str2.substring(1);
                }
                xp0Var.j(str, intent2.putExtra("error", str2).getExtras());
            }
        }
    }

    public static synchronized String h() {
        String num;
        synchronized (xp0.class) {
            int i2 = h;
            h = i2 + 1;
            num = Integer.toString(i2);
        }
        return num;
    }

    public static synchronized void i(Context context, Intent intent) {
        synchronized (xp0.class) {
            try {
                if (i == null) {
                    Intent intent2 = new Intent();
                    intent2.setPackage("com.google.example.invalidpackage");
                    i = PendingIntent.getBroadcast(context, 0, intent2, re1.a);
                }
                intent.putExtra("app", i);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static boolean k(Bundle bundle) {
        return bundle != null && bundle.containsKey("google.messenger");
    }

    public zy0 a(jc jcVar) {
        if (this.c.a() < 233700000) {
            return jz0.d(new IOException("SERVICE_NOT_AVAILABLE"));
        }
        Bundle bundle = new Bundle();
        bundle.putString("google.message_id", jcVar.f());
        Integer i2 = jcVar.i();
        if (i2 != null) {
            bundle.putInt("google.product_id", i2.intValue());
        }
        return ef2.b(this.b).c(3, bundle);
    }

    public zy0 b(final Bundle bundle) {
        return this.c.a() < 12000000 ? this.c.b() != 0 ? g(bundle).g(j, new yg() { // from class: androidx.appcompat.view.menu.dg2
            @Override // androidx.appcompat.view.menu.yg
            public final Object a(zy0 zy0Var) {
                return xp0.this.d(bundle, zy0Var);
            }
        }) : jz0.d(new IOException("MISSING_INSTANCEID_SERVICE")) : ef2.b(this.b).d(1, bundle).f(j, new yg() { // from class: androidx.appcompat.view.menu.we1
            @Override // androidx.appcompat.view.menu.yg
            public final Object a(zy0 zy0Var) {
                if (zy0Var.m()) {
                    return (Bundle) zy0Var.i();
                }
                if (Log.isLoggable("Rpc", 3)) {
                    "Error making request: ".concat(String.valueOf(zy0Var.h()));
                }
                throw new IOException("SERVICE_NOT_AVAILABLE", zy0Var.h());
            }
        });
    }

    public final /* synthetic */ zy0 d(Bundle bundle, zy0 zy0Var) {
        return (zy0Var.m() && k((Bundle) zy0Var.i())) ? g(bundle).n(j, new cy0() { // from class: androidx.appcompat.view.menu.tf2
            @Override // androidx.appcompat.view.menu.cy0
            public final zy0 a(Object obj) {
                return xp0.c((Bundle) obj);
            }
        }) : zy0Var;
    }

    public final /* synthetic */ void f(String str, ScheduledFuture scheduledFuture, zy0 zy0Var) {
        synchronized (this.a) {
            this.a.remove(str);
        }
        scheduledFuture.cancel(false);
    }

    public final zy0 g(Bundle bundle) {
        final String h2 = h();
        final bz0 bz0Var = new bz0();
        synchronized (this.a) {
            this.a.put(h2, bz0Var);
        }
        Intent intent = new Intent();
        intent.setPackage("com.google.android.gms");
        if (this.c.b() == 2) {
            intent.setAction("com.google.iid.TOKEN_REQUEST");
        } else {
            intent.setAction("com.google.android.c2dm.intent.REGISTER");
        }
        intent.putExtras(bundle);
        i(this.b, intent);
        intent.putExtra("kid", "|ID|" + h2 + "|");
        if (Log.isLoggable("Rpc", 3)) {
            "Sending ".concat(String.valueOf(intent.getExtras()));
        }
        intent.putExtra("google.messenger", this.e);
        if (this.f != null || this.g != null) {
            Message obtain = Message.obtain();
            obtain.obj = intent;
            try {
                Messenger messenger = this.f;
                if (messenger != null) {
                    messenger.send(obtain);
                } else {
                    this.g.b(obtain);
                }
            } catch (RemoteException unused) {
                Log.isLoggable("Rpc", 3);
            }
            final ScheduledFuture<?> schedule = this.d.schedule(new Runnable() { // from class: androidx.appcompat.view.menu.af1
                @Override // java.lang.Runnable
                public final void run() {
                    bz0.this.d(new IOException("TIMEOUT"));
                }
            }, 30L, TimeUnit.SECONDS);
            bz0Var.a().c(j, new gg0() { // from class: androidx.appcompat.view.menu.ff1
                @Override // androidx.appcompat.view.menu.gg0
                public final void a(zy0 zy0Var) {
                    xp0.this.f(h2, schedule, zy0Var);
                }
            });
            return bz0Var.a();
        }
        if (this.c.b() == 2) {
            this.b.sendBroadcast(intent);
        } else {
            this.b.startService(intent);
        }
        final ScheduledFuture schedule2 = this.d.schedule(new Runnable() { // from class: androidx.appcompat.view.menu.af1
            @Override // java.lang.Runnable
            public final void run() {
                bz0.this.d(new IOException("TIMEOUT"));
            }
        }, 30L, TimeUnit.SECONDS);
        bz0Var.a().c(j, new gg0() { // from class: androidx.appcompat.view.menu.ff1
            @Override // androidx.appcompat.view.menu.gg0
            public final void a(zy0 zy0Var) {
                xp0.this.f(h2, schedule2, zy0Var);
            }
        });
        return bz0Var.a();
    }

    public final void j(String str, Bundle bundle) {
        synchronized (this.a) {
            try {
                bz0 bz0Var = (bz0) this.a.remove(str);
                if (bz0Var != null) {
                    bz0Var.c(bundle);
                    return;
                }
                StringBuilder sb = new StringBuilder();
                sb.append("Missing callback for ");
                sb.append(str);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
