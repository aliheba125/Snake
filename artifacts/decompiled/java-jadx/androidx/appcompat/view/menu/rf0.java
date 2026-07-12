package androidx.appcompat.view.menu;

import android.animation.ObjectAnimator;
import android.animation.TypeConverter;
import android.graphics.Path;
import android.util.Property;

/* loaded from: classes.dex */
public abstract class rf0 {
    public static ObjectAnimator a(Object obj, Property property, Path path) {
        return ObjectAnimator.ofObject(obj, (Property<Object, V>) property, (TypeConverter) null, path);
    }
}
