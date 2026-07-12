package com.snake.helper;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import androidx.appcompat.view.menu.jv0;
import androidx.appcompat.view.menu.ql0;

/* loaded from: classes.dex */
public abstract class ProxyPendingActivity extends Activity {

    public static class P0 extends ProxyPendingActivity {
    }

    public static class P1 extends ProxyPendingActivity {
    }

    public static class P2 extends ProxyPendingActivity {
    }

    public static class P3 extends ProxyPendingActivity {
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        finish();
        ql0 a = ql0.a(getIntent());
        Intent intent = a.b;
        if (intent == null) {
            return;
        }
        intent.addFlags(268435456);
        a.b.setExtrasClassLoader(jv0.H2().getClassLoader());
        startActivity(a.b);
    }
}
