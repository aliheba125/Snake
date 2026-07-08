package androidx.appcompat.view.menu;

import android.graphics.RectF;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class mo0 implements gh {
    public final float a;

    public mo0(float f) {
        this.a = f;
    }

    public static float b(RectF rectF) {
        return Math.min(rectF.width(), rectF.height());
    }

    @Override // androidx.appcompat.view.menu.gh
    public float a(RectF rectF) {
        return this.a * b(rectF);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof mo0) && this.a == ((mo0) obj).a;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.a)});
    }
}
