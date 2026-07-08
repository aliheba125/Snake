package androidx.appcompat.view.menu;

import android.content.pm.PackageManager;
import android.os.Build;
import android.os.IBinder;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class e20 extends j8 {

    public class a extends md0 {
        public a() {
        }

        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            od0.f(objArr);
            od0.i(objArr);
            return method.invoke(obj, objArr);
        }
    }

    public e20() {
        super((IBinder) bt0.c.b("permissionmgr"));
    }

    @Override // androidx.appcompat.view.menu.j10
    public boolean a() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.ob
    public Object h() {
        return d20.b.b(bt0.c.b("permissionmgr"));
    }

    @Override // androidx.appcompat.view.menu.ob
    public void i(Object obj, Object obj2) {
        l("permissionmgr");
        t1.d.d(obj2);
        PackageManager packageManager = (PackageManager) tg.d.c(t1.m.b(yu0.D(), new Object[0]));
        if (packageManager != null) {
            try {
                c4.c.e(packageManager, obj2);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // androidx.appcompat.view.menu.j8, androidx.appcompat.view.menu.ob
    public void j() {
        super.j();
        d(new di0("getPermissionInfo"));
        d(new di0("getPermissionFlags"));
        d(new di0("updatePermissionFlags"));
        d(new di0("grantRuntimePermission"));
        d(new di0("revokeRuntimePermission"));
        d(new di0("shouldShowRequestPermissionRationale"));
        d(new di0("isPermissionRevokedByPolicy"));
        d(new di0("startOneTimePermissionSession"));
        d(new di0("stopOneTimePermissionSession"));
        d(new di0("setAutoRevokeExempted"));
        d(new di0("isAutoRevokeExempted"));
        if (y8.j()) {
            d(new di0("getAllowlistedRestrictedPermissions"));
            d(new di0("addAllowlistedRestrictedPermission"));
            d(new di0("removeAllowlistedRestrictedPermission"));
        } else {
            if (Build.VERSION.SDK_INT == 31) {
                d(new di0("revokePostNotificationPermissionWithoutKillForTest"));
                return;
            }
            d(new di0("checkPermission"));
            d(new g31("checkUidPermission", 1));
            d(new di0("getWhitelistedRestrictedPermissions"));
            d(new di0("addWhitelistedRestrictedPermission"));
            d(new di0("removeWhitelistedRestrictedPermission"));
            d(new di0("setDefaultBrowser"));
            d(new di0("grantDefaultPermissionsToActiveLuiApp"));
            e("checkDeviceIdentifierAccess", new a());
        }
    }
}
