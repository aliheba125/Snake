package androidx.appcompat.view.menu;

import com.snake.helper.ProxyVpnService;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class j71 {

    public static class a extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            k71.b.e(objArr[0], ProxyVpnService.class.getName());
            f((List) k71.d.b());
            f((List) k71.c.b());
            return method.invoke(obj, objArr);
        }

        public final void f(List list) {
            if (list != null && list.contains(jv0.E2())) {
                list.add(yu0.o());
            }
        }
    }

    public static class b extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            od0.f(objArr);
            return method.invoke(obj, objArr);
        }
    }

    public static class c extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            od0.f(objArr);
            return method.invoke(obj, objArr);
        }
    }

    public static Map a() {
        HashMap hashMap = new HashMap();
        hashMap.put("setVpnPackageAuthorization", new c());
        hashMap.put("prepareVpn", new b());
        hashMap.put("establishVpn", new a());
        return hashMap;
    }
}
