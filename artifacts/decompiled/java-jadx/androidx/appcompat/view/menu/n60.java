package androidx.appcompat.view.menu;

import java.nio.ByteBuffer;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class n60 implements ld0 {
    public static final n60 a = new n60();

    @Override // androidx.appcompat.view.menu.ld0
    public ByteBuffer a(Object obj) {
        return m60.a.a(new JSONArray().put(o60.a(obj)));
    }

    @Override // androidx.appcompat.view.menu.ld0
    public ByteBuffer b(String str, String str2, Object obj, String str3) {
        return m60.a.a(new JSONArray().put(str).put(o60.a(str2)).put(o60.a(obj)).put(o60.a(str3)));
    }

    @Override // androidx.appcompat.view.menu.ld0
    public ByteBuffer c(String str, String str2, Object obj) {
        return m60.a.a(new JSONArray().put(str).put(o60.a(str2)).put(o60.a(obj)));
    }

    @Override // androidx.appcompat.view.menu.ld0
    public id0 d(ByteBuffer byteBuffer) {
        try {
            Object b = m60.a.b(byteBuffer);
            if (b instanceof JSONObject) {
                JSONObject jSONObject = (JSONObject) b;
                Object obj = jSONObject.get("method");
                Object g = g(jSONObject.opt("args"));
                if (obj instanceof String) {
                    return new id0((String) obj, g);
                }
            }
            throw new IllegalArgumentException("Invalid method call: " + b);
        } catch (JSONException e) {
            throw new IllegalArgumentException("Invalid JSON", e);
        }
    }

    @Override // androidx.appcompat.view.menu.ld0
    public Object e(ByteBuffer byteBuffer) {
        try {
            Object b = m60.a.b(byteBuffer);
            if (b instanceof JSONArray) {
                JSONArray jSONArray = (JSONArray) b;
                if (jSONArray.length() == 1) {
                    return g(jSONArray.opt(0));
                }
                if (jSONArray.length() == 3) {
                    Object obj = jSONArray.get(0);
                    Object g = g(jSONArray.opt(1));
                    Object g2 = g(jSONArray.opt(2));
                    if ((obj instanceof String) && (g == null || (g instanceof String))) {
                        throw new lt((String) obj, (String) g, g2);
                    }
                }
            }
            throw new IllegalArgumentException("Invalid envelope: " + b);
        } catch (JSONException e) {
            throw new IllegalArgumentException("Invalid JSON", e);
        }
    }

    @Override // androidx.appcompat.view.menu.ld0
    public ByteBuffer f(id0 id0Var) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("method", id0Var.a);
            jSONObject.put("args", o60.a(id0Var.b));
            return m60.a.a(jSONObject);
        } catch (JSONException e) {
            throw new IllegalArgumentException("Invalid JSON", e);
        }
    }

    public Object g(Object obj) {
        if (obj == JSONObject.NULL) {
            return null;
        }
        return obj;
    }
}
