package androidx.appcompat.view.menu;

import java.util.ArrayDeque;
import java.util.Queue;

/* loaded from: classes.dex */
public final class me2 {
    public final Object a = new Object();
    public Queue b;
    public boolean c;

    public final void a(rd2 rd2Var) {
        synchronized (this.a) {
            try {
                if (this.b == null) {
                    this.b = new ArrayDeque();
                }
                this.b.add(rd2Var);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b(zy0 zy0Var) {
        rd2 rd2Var;
        synchronized (this.a) {
            if (this.b != null && !this.c) {
                this.c = true;
                while (true) {
                    synchronized (this.a) {
                        try {
                            rd2Var = (rd2) this.b.poll();
                            if (rd2Var == null) {
                                this.c = false;
                                return;
                            }
                        } finally {
                        }
                    }
                    rd2Var.b(zy0Var);
                }
            }
        }
    }
}
