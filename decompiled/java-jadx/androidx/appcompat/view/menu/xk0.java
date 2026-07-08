package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public @interface xk0 {

    public enum a {
        DEFAULT,
        SIGNED,
        FIXED
    }

    a intEncoding() default a.DEFAULT;

    int tag();
}
