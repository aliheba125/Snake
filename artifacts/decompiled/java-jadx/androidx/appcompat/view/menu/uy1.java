package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.kt1;

/* loaded from: classes.dex */
public abstract /* synthetic */ class uy1 {
    public static final /* synthetic */ int[] a;

    static {
        int[] iArr = new int[kt1.b.values().length];
        a = iArr;
        try {
            iArr[kt1.b.STRING.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            a[kt1.b.NUMBER.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            a[kt1.b.BOOLEAN.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            a[kt1.b.STATEMENT.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            a[kt1.b.UNKNOWN.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
    }
}
