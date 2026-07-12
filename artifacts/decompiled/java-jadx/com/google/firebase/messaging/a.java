package com.google.firebase.messaging;

import android.util.Log;
import androidx.appcompat.view.menu.o4;
import androidx.appcompat.view.menu.yg;
import androidx.appcompat.view.menu.zy0;
import java.util.Map;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public class a {
    public final Executor a;
    public final Map b = new o4();

    /* renamed from: com.google.firebase.messaging.a$a, reason: collision with other inner class name */
    public interface InterfaceC0066a {
        zy0 a();
    }

    public a(Executor executor) {
        this.a = executor;
    }

    public synchronized zy0 b(final String str, InterfaceC0066a interfaceC0066a) {
        zy0 zy0Var = (zy0) this.b.get(str);
        if (zy0Var != null) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Joining ongoing request for: ");
                sb.append(str);
            }
            return zy0Var;
        }
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Making new request for: ");
            sb2.append(str);
        }
        zy0 g = interfaceC0066a.a().g(this.a, new yg() { // from class: androidx.appcompat.view.menu.xo0
            @Override // androidx.appcompat.view.menu.yg
            public final Object a(zy0 zy0Var2) {
                zy0 c;
                c = com.google.firebase.messaging.a.this.c(str, zy0Var2);
                return c;
            }
        });
        this.b.put(str, g);
        return g;
    }

    public final /* synthetic */ zy0 c(String str, zy0 zy0Var) {
        synchronized (this) {
            this.b.remove(str);
        }
        return zy0Var;
    }
}
