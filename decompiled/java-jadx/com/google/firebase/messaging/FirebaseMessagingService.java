package com.google.firebase.messaging;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import androidx.appcompat.view.menu.dt0;
import androidx.appcompat.view.menu.fr;
import androidx.appcompat.view.menu.jc;
import androidx.appcompat.view.menu.lm;
import androidx.appcompat.view.menu.mf0;
import androidx.appcompat.view.menu.ms0;
import androidx.appcompat.view.menu.po0;
import androidx.appcompat.view.menu.ro;
import androidx.appcompat.view.menu.xp0;
import androidx.appcompat.view.menu.zc0;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public class FirebaseMessagingService extends ro {
    public static final Queue g = new ArrayDeque(10);
    public xp0 f;

    @Override // androidx.appcompat.view.menu.ro
    public Intent e(Intent intent) {
        return dt0.b().c();
    }

    @Override // androidx.appcompat.view.menu.ro
    public void f(Intent intent) {
        String action = intent.getAction();
        if ("com.google.android.c2dm.intent.RECEIVE".equals(action) || "com.google.firebase.messaging.RECEIVE_DIRECT_BOOT".equals(action)) {
            p(intent);
        } else {
            if ("com.google.firebase.messaging.NEW_TOKEN".equals(action)) {
                t(intent.getStringExtra("token"));
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("Unknown intent action: ");
            sb.append(intent.getAction());
        }
    }

    public final boolean l(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        Queue queue = g;
        if (!queue.contains(str)) {
            if (queue.size() >= 10) {
                queue.remove();
            }
            queue.add(str);
            return false;
        }
        if (!Log.isLoggable("FirebaseMessaging", 3)) {
            return true;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Received duplicate message: ");
        sb.append(str);
        return true;
    }

    public final void m(Intent intent) {
        Bundle extras = intent.getExtras();
        if (extras == null) {
            extras = new Bundle();
        }
        extras.remove("androidx.content.wakelockid");
        if (mf0.t(extras)) {
            mf0 mf0Var = new mf0(extras);
            ExecutorService e = fr.e();
            try {
                if (new lm(this, mf0Var, e).a()) {
                    return;
                }
                e.shutdown();
                if (zc0.A(intent)) {
                    zc0.t(intent);
                }
            } finally {
                e.shutdown();
            }
        }
        r(new po0(extras));
    }

    public final String n(Intent intent) {
        String stringExtra = intent.getStringExtra("google.message_id");
        return stringExtra == null ? intent.getStringExtra("message_id") : stringExtra;
    }

    public final xp0 o(Context context) {
        if (this.f == null) {
            this.f = new xp0(context.getApplicationContext());
        }
        return this.f;
    }

    public final void p(Intent intent) {
        if (!l(intent.getStringExtra("google.message_id"))) {
            v(intent);
        }
        o(this).a(new jc(intent));
    }

    public void q() {
    }

    public void r(po0 po0Var) {
    }

    public void s(String str) {
    }

    public void t(String str) {
    }

    public void u(String str, Exception exc) {
    }

    public final void v(Intent intent) {
        String stringExtra;
        stringExtra = intent.getStringExtra("message_type");
        if (stringExtra == null) {
            stringExtra = "gcm";
        }
        switch (stringExtra) {
            case "deleted_messages":
                q();
                break;
            case "gcm":
                zc0.v(intent);
                m(intent);
                break;
            case "send_error":
                u(n(intent), new ms0(intent.getStringExtra("error")));
                break;
            case "send_event":
                s(intent.getStringExtra("google.message_id"));
                break;
            default:
                StringBuilder sb = new StringBuilder();
                sb.append("Received message with unknown type: ");
                sb.append(stringExtra);
                break;
        }
    }
}
