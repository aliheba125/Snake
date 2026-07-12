package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public interface gx extends ss {

    public static final class a {
        public static /* synthetic */ ss a(gx gxVar, kh khVar, int i, u8 u8Var, int i2, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fuse");
            }
            if ((i2 & 1) != 0) {
                khVar = bo.m;
            }
            if ((i2 & 2) != 0) {
                i = -3;
            }
            if ((i2 & 4) != 0) {
                u8Var = u8.SUSPEND;
            }
            return gxVar.c(khVar, i, u8Var);
        }
    }

    ss c(kh khVar, int i, u8 u8Var);
}
