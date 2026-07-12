package androidx.appcompat.view.menu;

import android.content.ComponentName;
import android.os.Handler;
import android.os.Message;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class nd2 implements Handler.Callback {
    public final /* synthetic */ ie2 l;

    public /* synthetic */ nd2(ie2 ie2Var, gc2 gc2Var) {
        this.l = ie2Var;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        HashMap hashMap;
        HashMap hashMap2;
        HashMap hashMap3;
        HashMap hashMap4;
        HashMap hashMap5;
        int i = message.what;
        if (i == 0) {
            hashMap = this.l.f;
            synchronized (hashMap) {
                try {
                    l92 l92Var = (l92) message.obj;
                    hashMap2 = this.l.f;
                    ab2 ab2Var = (ab2) hashMap2.get(l92Var);
                    if (ab2Var != null && ab2Var.i()) {
                        if (ab2Var.j()) {
                            ab2Var.g("GmsClientSupervisor");
                        }
                        hashMap3 = this.l.f;
                        hashMap3.remove(l92Var);
                    }
                } finally {
                }
            }
            return true;
        }
        if (i != 1) {
            return false;
        }
        hashMap4 = this.l.f;
        synchronized (hashMap4) {
            try {
                l92 l92Var2 = (l92) message.obj;
                hashMap5 = this.l.f;
                ab2 ab2Var2 = (ab2) hashMap5.get(l92Var2);
                if (ab2Var2 != null && ab2Var2.a() == 3) {
                    String valueOf = String.valueOf(l92Var2);
                    StringBuilder sb = new StringBuilder();
                    sb.append("Timeout waiting for ServiceConnection callback ");
                    sb.append(valueOf);
                    new Exception();
                    ComponentName b = ab2Var2.b();
                    if (b == null) {
                        b = l92Var2.b();
                    }
                    if (b == null) {
                        String d = l92Var2.d();
                        mj0.i(d);
                        b = new ComponentName(d, "unknown");
                    }
                    ab2Var2.onServiceDisconnected(b);
                }
            } finally {
            }
        }
        return true;
    }
}
