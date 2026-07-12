package androidx.appcompat.view.menu;

import android.os.Handler;

/* loaded from: classes.dex */
public final class o72 {
    public m72 a;
    public final /* synthetic */ y62 b;

    public o72(y62 y62Var) {
        this.b = y62Var;
    }

    public final void a() {
        Handler handler;
        this.b.n();
        if (this.a != null) {
            handler = this.b.c;
            handler.removeCallbacks(this.a);
        }
        this.b.i().s.a(false);
        this.b.D(false);
    }

    public final void b(long j) {
        Handler handler;
        this.a = new m72(this, this.b.b().a(), j);
        handler = this.b.c;
        handler.postDelayed(this.a, 2000L);
    }
}
