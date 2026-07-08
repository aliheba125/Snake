package androidx.appcompat.view.menu;

import java.nio.ByteBuffer;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

/* loaded from: classes.dex */
public final class m60 implements xc0 {
    public static final m60 a = new m60();

    @Override // androidx.appcompat.view.menu.xc0
    public ByteBuffer a(Object obj) {
        if (obj == null) {
            return null;
        }
        Object a2 = o60.a(obj);
        return a2 instanceof String ? ix0.b.a(JSONObject.quote((String) a2)) : ix0.b.a(a2.toString());
    }

    @Override // androidx.appcompat.view.menu.xc0
    public Object b(ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            return null;
        }
        try {
            JSONTokener jSONTokener = new JSONTokener(ix0.b.b(byteBuffer));
            Object nextValue = jSONTokener.nextValue();
            if (jSONTokener.more()) {
                throw new IllegalArgumentException("Invalid JSON");
            }
            return nextValue;
        } catch (JSONException e) {
            throw new IllegalArgumentException("Invalid JSON", e);
        }
    }
}
