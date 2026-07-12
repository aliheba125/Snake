package androidx.appcompat.view.menu;

import android.content.Intent;
import android.os.Binder;
import android.os.Process;
import android.util.Log;
import androidx.appcompat.view.menu.ja1;

/* loaded from: classes.dex */
public class ga1 extends Binder {
    public final a l;

    public interface a {
        zy0 a(Intent intent);
    }

    public ga1(a aVar) {
        this.l = aVar;
    }

    public void c(final ja1.a aVar) {
        if (Binder.getCallingUid() != Process.myUid()) {
            throw new SecurityException("Binding only allowed within app");
        }
        Log.isLoggable("FirebaseMessaging", 3);
        this.l.a(aVar.a).c(new ic0(), new gg0() { // from class: androidx.appcompat.view.menu.fa1
            @Override // androidx.appcompat.view.menu.gg0
            public final void a(zy0 zy0Var) {
                ja1.a.this.d();
            }
        });
    }
}
