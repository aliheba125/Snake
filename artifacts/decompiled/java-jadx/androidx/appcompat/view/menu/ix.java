package androidx.appcompat.view.menu;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;

/* loaded from: classes.dex */
public abstract class ix extends ly {

    public static final class a implements Runnable {
        public final Future m;
        public final hx n;

        public a(Future future, hx hxVar) {
            this.m = future;
            this.n = hxVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.n.a(ix.b(this.m));
            } catch (Error e) {
                e = e;
                this.n.b(e);
            } catch (RuntimeException e2) {
                e = e2;
                this.n.b(e);
            } catch (ExecutionException e3) {
                this.n.b(e3.getCause());
            }
        }

        public String toString() {
            return ud0.a(this).c(this.n).toString();
        }
    }

    public static void a(j90 j90Var, hx hxVar, Executor executor) {
        nj0.i(hxVar);
        j90Var.c(new a(j90Var, hxVar), executor);
    }

    public static Object b(Future future) {
        nj0.o(future.isDone(), "Future was expected to be done: %s", future);
        return q31.a(future);
    }
}
