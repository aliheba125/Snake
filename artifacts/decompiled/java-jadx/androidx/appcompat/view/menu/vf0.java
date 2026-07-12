package androidx.appcompat.view.menu;

import android.os.IBinder;
import androidx.appcompat.view.menu.b20;
import java.lang.reflect.Field;

/* loaded from: classes.dex */
public final class vf0 extends b20.a {
    public final Object l;

    public vf0(Object obj) {
        this.l = obj;
    }

    public static Object j(b20 b20Var) {
        if (b20Var instanceof vf0) {
            return ((vf0) b20Var).l;
        }
        IBinder asBinder = b20Var.asBinder();
        Field[] declaredFields = asBinder.getClass().getDeclaredFields();
        Field field = null;
        int i = 0;
        for (Field field2 : declaredFields) {
            if (!field2.isSynthetic()) {
                i++;
                field = field2;
            }
        }
        if (i != 1) {
            throw new IllegalArgumentException("Unexpected number of IObjectWrapper declared fields: " + declaredFields.length);
        }
        mj0.i(field);
        if (field.isAccessible()) {
            throw new IllegalArgumentException("IObjectWrapper declared field not private!");
        }
        field.setAccessible(true);
        try {
            return field.get(asBinder);
        } catch (IllegalAccessException e) {
            throw new IllegalArgumentException("Could not access the field in remoteBinder.", e);
        } catch (NullPointerException e2) {
            throw new IllegalArgumentException("Binder object is null.", e2);
        }
    }

    public static b20 k(Object obj) {
        return new vf0(obj);
    }
}
