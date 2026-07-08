package androidx.appcompat.view.menu;

import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class lc2 {
    public final Messenger a;
    public final ep1 b;

    public lc2(IBinder iBinder) {
        String interfaceDescriptor = iBinder.getInterfaceDescriptor();
        if (eb2.a(interfaceDescriptor, "android.os.IMessenger")) {
            this.a = new Messenger(iBinder);
            this.b = null;
        } else {
            if (!eb2.a(interfaceDescriptor, "com.google.android.gms.iid.IMessengerCompat")) {
                "Invalid interface descriptor: ".concat(String.valueOf(interfaceDescriptor));
                throw new RemoteException();
            }
            this.b = new ep1(iBinder);
            this.a = null;
        }
    }

    public final void a(Message message) {
        Messenger messenger = this.a;
        if (messenger != null) {
            messenger.send(message);
            return;
        }
        ep1 ep1Var = this.b;
        if (ep1Var == null) {
            throw new IllegalStateException("Both messengers are null");
        }
        ep1Var.b(message);
    }
}
