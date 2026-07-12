package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public abstract /* synthetic */ class vi1 {
    public static final /* synthetic */ int[] a;

    static {
        int[] iArr = new int[tj1.values().length];
        a = iArr;
        try {
            iArr[tj1.AND.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            a[tj1.NOT.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            a[tj1.OR.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
    }
}
