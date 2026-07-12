package androidx.appcompat.view.menu;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationChannelGroup;
import android.app.NotificationManager;
import android.os.Binder;
import androidx.appcompat.view.menu.go0;
import androidx.appcompat.view.menu.k00;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class pv0 extends k00.a implements i30 {
    public static final pv0 n = new pv0();
    public final Map l = new HashMap();
    public final NotificationManager m = (NotificationManager) yu0.m().getSystemService("notification");

    public static pv0 k() {
        return n;
    }

    public static int w2(int i, int i2, String str) {
        return (str + i + i2).hashCode();
    }

    public final void A2(NotificationChannel notificationChannel, int i) {
        ef0.b.e(notificationChannel, u2((String) ef0.b.c(notificationChannel), i));
        notificationChannel.setGroup(v2(notificationChannel.getGroup(), i));
    }

    public final void B2(NotificationChannelGroup notificationChannelGroup, int i) {
        ff0.c.e(notificationChannelGroup, v2((String) ff0.c.c(notificationChannelGroup), i));
        List list = (List) ff0.b.c(notificationChannelGroup);
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                a0((NotificationChannel) it.next(), i);
            }
        }
    }

    public final void C2(String str, int i) {
        String str2 = str + "-" + i;
        synchronized (this.l) {
            this.l.remove(str2);
        }
    }

    public final void D2(NotificationChannel notificationChannel) {
        ef0.b.e(notificationChannel, y2((String) ef0.b.c(notificationChannel)));
    }

    public final void E2(NotificationChannelGroup notificationChannelGroup) {
        ff0.c.e(notificationChannelGroup, z2((String) ff0.c.c(notificationChannelGroup)));
        List list = (List) ff0.b.c(notificationChannelGroup);
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                D2((NotificationChannel) it.next());
            }
        }
    }

    @Override // androidx.appcompat.view.menu.k00
    public List H0(String str, int i) {
        ArrayList arrayList;
        nf0 x2 = x2(str, i);
        synchronized (x2.b) {
            arrayList = new ArrayList(x2.b.values());
        }
        return arrayList;
    }

    @Override // androidx.appcompat.view.menu.k00
    public void R(int i, String str, Notification notification, int i2) {
        yj0 c = a7.e().c(Binder.getCallingPid());
        if (c == null) {
            return;
        }
        int w2 = w2(i2, i, c.b());
        if (y8.d()) {
            go0.b bVar = lf0.b;
            if (bVar != null) {
                lf0.b.d(u2((String) bVar.b(), i2));
            }
            go0.b bVar2 = lf0.c;
            if (bVar2 != null) {
                lf0.c.d(v2((String) bVar2.b(), i2));
            }
        }
        nf0 x2 = x2(c.b(), i2);
        synchronized (x2.c) {
            x2.c.add(Integer.valueOf(w2));
        }
        this.m.notify(w2, notification);
    }

    @Override // androidx.appcompat.view.menu.k00
    public void V(String str, int i) {
        yj0 c = a7.e().c(Binder.getCallingPid());
        if (c == null) {
            return;
        }
        nf0 x2 = x2(c.b(), i);
        synchronized (x2.b) {
            try {
                NotificationChannelGroup notificationChannelGroup = (NotificationChannelGroup) x2.b.remove(str);
                if (notificationChannelGroup != null) {
                    this.m.deleteNotificationChannelGroup(v2(notificationChannelGroup.getId(), i));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.appcompat.view.menu.k00
    public NotificationChannel V0(String str, int i) {
        NotificationChannel notificationChannel;
        yj0 c = a7.e().c(Binder.getCallingPid());
        if (c == null) {
            return null;
        }
        nf0 x2 = x2(c.b(), i);
        synchronized (x2.a) {
            notificationChannel = (NotificationChannel) x2.a.get(str);
        }
        return notificationChannel;
    }

    @Override // androidx.appcompat.view.menu.k00
    public void Y0(int i, String str, int i2) {
        yj0 c = a7.e().c(Binder.getCallingPid());
        if (c == null) {
            return;
        }
        int w2 = w2(i2, i, c.b());
        this.m.cancel(w2);
        nf0 x2 = x2(c.b(), i2);
        synchronized (x2.c) {
            x2.c.remove(Integer.valueOf(w2));
        }
    }

    @Override // androidx.appcompat.view.menu.k00
    public void a0(NotificationChannel notificationChannel, int i) {
        yj0 c = a7.e().c(Binder.getCallingPid());
        if (c == null) {
            return;
        }
        A2(notificationChannel, i);
        this.m.createNotificationChannel(notificationChannel);
        D2(notificationChannel);
        nf0 x2 = x2(c.b(), i);
        synchronized (x2.a) {
            x2.a.put(notificationChannel.getId(), notificationChannel);
        }
    }

    @Override // androidx.appcompat.view.menu.k00
    public void e0(NotificationChannelGroup notificationChannelGroup, int i) {
        yj0 c = a7.e().c(Binder.getCallingPid());
        if (c == null) {
            return;
        }
        B2(notificationChannelGroup, i);
        this.m.createNotificationChannelGroup(notificationChannelGroup);
        E2(notificationChannelGroup);
        nf0 x2 = x2(c.b(), i);
        synchronized (x2.b) {
            x2.b.put(notificationChannelGroup.getId(), notificationChannelGroup);
        }
    }

    public void h(String str, int i) {
        nf0 x2 = x2(str, i);
        if (y8.d()) {
            Iterator it = x2.b.values().iterator();
            while (it.hasNext()) {
                this.m.deleteNotificationChannelGroup(v2(((NotificationChannelGroup) it.next()).getId(), i));
            }
            Iterator it2 = x2.a.values().iterator();
            while (it2.hasNext()) {
                this.m.deleteNotificationChannel(u2(((NotificationChannel) it2.next()).getId(), i));
            }
        }
        Iterator it3 = x2.c.iterator();
        while (it3.hasNext()) {
            this.m.cancel(((Integer) it3.next()).intValue());
        }
        C2(str, i);
    }

    @Override // androidx.appcompat.view.menu.i30
    public void j() {
    }

    @Override // androidx.appcompat.view.menu.k00
    public List p(String str, int i) {
        ArrayList arrayList;
        nf0 x2 = x2(str, i);
        synchronized (x2.a) {
            arrayList = new ArrayList(x2.a.values());
        }
        return arrayList;
    }

    @Override // androidx.appcompat.view.menu.k00
    public void p1(String str, int i) {
        yj0 c = a7.e().c(Binder.getCallingPid());
        if (c == null) {
            return;
        }
        nf0 x2 = x2(c.b(), i);
        synchronized (x2.a) {
            try {
                NotificationChannel notificationChannel = (NotificationChannel) x2.a.remove(str);
                if (notificationChannel != null) {
                    this.m.deleteNotificationChannel(u2(notificationChannel.getId(), i));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final String u2(String str, int i) {
        if (str == null || str.contains("@snake_engine-")) {
            return str;
        }
        return str + "@snake_engine-" + i;
    }

    public final String v2(String str, int i) {
        if (str == null || str.contains("@snake_engine-group-")) {
            return str;
        }
        return str + "@snake_engine-group-" + i;
    }

    public final nf0 x2(String str, int i) {
        nf0 nf0Var;
        String str2 = str + "-" + i;
        synchronized (this.l) {
            try {
                nf0Var = (nf0) this.l.get(str2);
                if (nf0Var == null) {
                    nf0Var = new nf0();
                    this.l.put(str2, nf0Var);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return nf0Var;
    }

    public final String y2(String str) {
        return (str == null || !str.contains("@snake_engine-")) ? str : str.split("@snake_engine-")[0];
    }

    public final String z2(String str) {
        return (str == null || !str.contains("@snake_engine-group-")) ? str : str.split("@snake_engine-group-")[0];
    }
}
