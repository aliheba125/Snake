package androidx.appcompat.view.menu;

import android.app.IServiceConnection;
import android.content.ComponentName;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class ys0 extends IServiceConnection.Stub {
    public static final Map n = new HashMap();
    public final IServiceConnection l;
    public final ComponentName m;

    public class a implements IBinder.DeathRecipient {
        public final /* synthetic */ IBinder l;

        public a(IBinder iBinder) {
            this.l = iBinder;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            ys0.n.remove(this.l);
            this.l.unlinkToDeath(this, 0);
        }
    }

    public ys0(IServiceConnection iServiceConnection, ComponentName componentName) {
        this.l = iServiceConnection;
        this.m = componentName;
    }

    public static IServiceConnection k(IServiceConnection iServiceConnection, Intent intent) {
        IBinder asBinder = iServiceConnection.asBinder();
        ys0 ys0Var = (ys0) n.get(asBinder);
        if (ys0Var != null) {
            return ys0Var;
        }
        try {
            asBinder.linkToDeath(new a(asBinder), 0);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
        ys0 ys0Var2 = new ys0(iServiceConnection, intent.getComponent());
        n.put(asBinder, ys0Var2);
        return ys0Var2;
    }

    public static ys0 u2(IBinder iBinder) {
        return (ys0) n.get(iBinder);
    }

    @Override // android.app.IServiceConnection
    public void connected(ComponentName componentName, IBinder iBinder) {
        j(componentName, iBinder, false);
    }

    public void j(ComponentName componentName, IBinder iBinder, boolean z) {
        if (y8.d()) {
            u20.b.b(this.l, this.m, iBinder, Boolean.valueOf(z));
        } else {
            this.l.connected(componentName, iBinder);
        }
    }
}
