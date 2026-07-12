package androidx.appcompat.view.menu;

import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public abstract class zx0 extends yx0 {
    public static char H(CharSequence charSequence) {
        z50.e(charSequence, "<this>");
        if (charSequence.length() != 0) {
            return charSequence.charAt(xx0.k(charSequence));
        }
        throw new NoSuchElementException("Char sequence is empty.");
    }
}
