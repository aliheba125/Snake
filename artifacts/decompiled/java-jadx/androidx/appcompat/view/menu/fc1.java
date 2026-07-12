package androidx.appcompat.view.menu;

import android.content.Context;
import android.os.Looper;
import android.os.Message;

/* loaded from: classes.dex */
public final class fc1 extends zd1 {
    public final Context a;
    public final /* synthetic */ xx b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fc1(xx xxVar, Context context) {
        super(Looper.myLooper() == null ? Looper.getMainLooper() : Looper.myLooper());
        this.b = xxVar;
        this.a = context.getApplicationContext();
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i = message.what;
        if (i != 1) {
            StringBuilder sb = new StringBuilder(50);
            sb.append("Don't know how to handle this message: ");
            sb.append(i);
        } else {
            int g = this.b.g(this.a);
            if (this.b.j(g)) {
                this.b.o(this.a, g);
            }
        }
    }
}
