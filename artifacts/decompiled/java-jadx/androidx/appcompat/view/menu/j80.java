package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public class j80 implements el0 {
    public static final Object c = new Object();
    public volatile Object a = c;
    public volatile el0 b;

    public j80(el0 el0Var) {
        this.b = el0Var;
    }

    @Override // androidx.appcompat.view.menu.el0
    public Object get() {
        Object obj = this.a;
        Object obj2 = c;
        if (obj == obj2) {
            synchronized (this) {
                try {
                    obj = this.a;
                    if (obj == obj2) {
                        obj = this.b.get();
                        this.a = obj;
                        this.b = null;
                    }
                } finally {
                }
            }
        }
        return obj;
    }
}
