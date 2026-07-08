package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public enum xh {
    DEFAULT,
    LAZY,
    ATOMIC,
    UNDISPATCHED;

    public /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[xh.values().length];
            try {
                iArr[xh.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[xh.ATOMIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[xh.UNDISPATCHED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[xh.LAZY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            a = iArr;
        }
    }

    public final void e(tw twVar, Object obj, xg xgVar) {
        int i = a.a[ordinal()];
        if (i == 1) {
            ba.d(twVar, obj, xgVar, null, 4, null);
            return;
        }
        if (i == 2) {
            bh.a(twVar, obj, xgVar);
        } else if (i == 3) {
            n31.a(twVar, obj, xgVar);
        } else if (i != 4) {
            throw new ye0();
        }
    }

    public final boolean g() {
        return this == LAZY;
    }
}
