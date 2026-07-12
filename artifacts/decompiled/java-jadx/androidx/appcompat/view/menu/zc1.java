package androidx.appcompat.view.menu;

import android.content.Intent;

/* loaded from: classes.dex */
public final class zc1 extends ad1 {
    public final /* synthetic */ Intent a;
    public final /* synthetic */ y80 b;

    public zc1(Intent intent, y80 y80Var, int i) {
        this.a = intent;
        this.b = y80Var;
    }

    @Override // androidx.appcompat.view.menu.ad1
    public final void a() {
        Intent intent = this.a;
        if (intent != null) {
            this.b.startActivityForResult(intent, 2);
        }
    }
}
