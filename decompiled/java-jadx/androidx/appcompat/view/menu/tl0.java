package androidx.appcompat.view.menu;

import android.util.SparseArray;

/* loaded from: classes.dex */
public enum tl0 {
    DEFAULT(0),
    UNMETERED_ONLY(1),
    UNMETERED_OR_DAILY(2),
    FAST_IF_RADIO_AWAKE(3),
    NEVER(4),
    UNRECOGNIZED(-1);

    public static final SparseArray t;
    public final int m;

    static {
        tl0 tl0Var = DEFAULT;
        tl0 tl0Var2 = UNMETERED_ONLY;
        tl0 tl0Var3 = UNMETERED_OR_DAILY;
        tl0 tl0Var4 = FAST_IF_RADIO_AWAKE;
        tl0 tl0Var5 = NEVER;
        tl0 tl0Var6 = UNRECOGNIZED;
        SparseArray sparseArray = new SparseArray();
        t = sparseArray;
        sparseArray.put(0, tl0Var);
        sparseArray.put(1, tl0Var2);
        sparseArray.put(2, tl0Var3);
        sparseArray.put(3, tl0Var4);
        sparseArray.put(4, tl0Var5);
        sparseArray.put(-1, tl0Var6);
    }

    tl0(int i) {
        this.m = i;
    }
}
