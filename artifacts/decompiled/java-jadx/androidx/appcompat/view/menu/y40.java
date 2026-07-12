package androidx.appcompat.view.menu;

import android.content.IIntentReceiver;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class y40 extends IIntentReceiver.Stub {
    public static final Map m = new HashMap();
    public final WeakReference l;

    public class a implements IBinder.DeathRecipient {
        public final /* synthetic */ IBinder l;

        public a(IBinder iBinder) {
            this.l = iBinder;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            y40.m.remove(this.l);
            this.l.unlinkToDeath(this, 0);
        }
    }

    public y40(IIntentReceiver iIntentReceiver) {
        this.l = new WeakReference(iIntentReceiver);
    }

    public static IIntentReceiver j(IIntentReceiver iIntentReceiver) {
        if (iIntentReceiver instanceof y40) {
            return iIntentReceiver;
        }
        IBinder asBinder = iIntentReceiver.asBinder();
        y40 y40Var = (y40) m.get(asBinder);
        if (y40Var != null) {
            return y40Var;
        }
        try {
            asBinder.linkToDeath(new a(asBinder), 0);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
        y40 y40Var2 = new y40(iIntentReceiver);
        m.put(asBinder, y40Var2);
        return y40Var2;
    }

    @Override // android.content.IIntentReceiver
    public void performReceive(Intent intent, int i, String str, Bundle bundle, boolean z, boolean z2, int i2) {
        intent.setExtrasClassLoader(jv0.H2().getClassLoader());
        jl0 a2 = jl0.a(intent);
        Intent intent2 = a2.a;
        if (intent2 != null) {
            intent2.setExtrasClassLoader(jv0.H2().getClassLoader());
            intent = a2.a;
        }
        Intent intent3 = intent;
        IIntentReceiver iIntentReceiver = (IIntentReceiver) this.l.get();
        if (iIntentReceiver != null) {
            k10.b.b(iIntentReceiver, intent3, Integer.valueOf(i), str, bundle, Boolean.valueOf(z), Boolean.valueOf(z2), Integer.valueOf(i2));
        }
    }
}
