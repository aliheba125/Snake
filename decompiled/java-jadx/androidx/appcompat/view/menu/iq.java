package androidx.appcompat.view.menu;

import androidx.window.extensions.layout.WindowLayoutComponent;

/* loaded from: classes.dex */
public abstract class iq implements b81 {
    public static final a a = new a(null);

    public static final class a {
        public a() {
        }

        public /* synthetic */ a(lj ljVar) {
            this();
        }

        public final b81 a(WindowLayoutComponent windowLayoutComponent, qf qfVar) {
            z50.e(windowLayoutComponent, "component");
            z50.e(qfVar, "adapter");
            int a = nq.a.a();
            return a >= 2 ? new mq(windowLayoutComponent) : a == 1 ? new lq(windowLayoutComponent, qfVar) : new kq();
        }
    }
}
