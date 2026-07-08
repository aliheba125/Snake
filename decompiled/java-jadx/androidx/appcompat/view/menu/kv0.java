package androidx.appcompat.view.menu;

import android.os.IBinder;
import android.os.IInterface;

/* loaded from: classes.dex */
public abstract class kv0 {
    public IInterface a;
    public String b = "";
    public final Class c;

    public class a implements IBinder.DeathRecipient {
        public a() {
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            kv0.this.a.asBinder().unlinkToDeath(this, 0);
            kv0.this.a = null;
        }
    }

    public kv0(Class cls) {
        this.c = cls;
    }

    public IInterface c() {
        IInterface iInterface = this.a;
        if (iInterface != null && iInterface.asBinder().pingBinder() && this.a.asBinder().isBinderAlive()) {
            return this.a;
        }
        try {
            go0 x = go0.x(e().getName() + "$Stub");
            this.a = (IInterface) x.z("asInterface", IBinder.class).c(yu0.h().t(d()));
            StringBuilder sb = new StringBuilder();
            sb.append("getService: ");
            sb.append(this.a);
            sb.append(" ");
            sb.append(e().getName());
            sb.append("$Stub ");
            sb.append(x.a);
            this.a.asBinder().linkToDeath(new a(), 0);
            if (this.b.isEmpty()) {
                this.b = this.a.toString();
            }
            return c();
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public abstract String d();

    public final Class e() {
        getClass().getGenericSuperclass();
        return this.c;
    }
}
