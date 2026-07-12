package androidx.appcompat.view.menu;

import java.util.Locale;

/* loaded from: classes.dex */
public final class ms0 extends Exception {
    public final int m;

    public ms0(String str) {
        super(str);
        this.m = a(str);
    }

    public final int a(String str) {
        if (str == null) {
            return 0;
        }
        String lowerCase = str.toLowerCase(Locale.US);
        lowerCase.hashCode();
        switch (lowerCase) {
        }
        return 0;
    }
}
