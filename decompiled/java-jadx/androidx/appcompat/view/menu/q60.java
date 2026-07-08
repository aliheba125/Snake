package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.kh;
import java.util.concurrent.CancellationException;

/* loaded from: classes.dex */
public interface q60 extends kh.b {
    public static final b d = b.m;

    public static final class a {
        public static /* synthetic */ void a(q60 q60Var, CancellationException cancellationException, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
            }
            if ((i & 1) != 0) {
                cancellationException = null;
            }
            q60Var.e(cancellationException);
        }

        public static Object b(q60 q60Var, Object obj, tw twVar) {
            return kh.b.a.a(q60Var, obj, twVar);
        }

        public static kh.b c(q60 q60Var, kh.c cVar) {
            return kh.b.a.b(q60Var, cVar);
        }

        public static /* synthetic */ mm d(q60 q60Var, boolean z, boolean z2, fw fwVar, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: invokeOnCompletion");
            }
            if ((i & 1) != 0) {
                z = false;
            }
            if ((i & 2) != 0) {
                z2 = true;
            }
            return q60Var.s(z, z2, fwVar);
        }

        public static kh e(q60 q60Var, kh.c cVar) {
            return kh.b.a.c(q60Var, cVar);
        }

        public static kh f(q60 q60Var, kh khVar) {
            return kh.b.a.d(q60Var, khVar);
        }
    }

    public static final class b implements kh.c {
        public static final /* synthetic */ b m = new b();
    }

    jb B(lb lbVar);

    boolean a();

    boolean c();

    void e(CancellationException cancellationException);

    mm h(fw fwVar);

    mm s(boolean z, boolean z2, fw fwVar);

    CancellationException w();
}
