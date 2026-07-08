.class public Landroidx/appcompat/view/menu/e20;
.super Landroidx/appcompat/view/menu/j8;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Landroidx/appcompat/view/menu/bt0;->c:Landroidx/appcompat/view/menu/go0$e;

    const-string v1, "permissionmgr"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0$e;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/j8;-><init>(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h()Ljava/lang/Object;
    .locals 3

    sget-object v0, Landroidx/appcompat/view/menu/d20;->b:Landroidx/appcompat/view/menu/go0$e;

    sget-object v1, Landroidx/appcompat/view/menu/bt0;->c:Landroidx/appcompat/view/menu/go0$e;

    const-string v2, "permissionmgr"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/go0$e;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0$e;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public i(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    const-string p1, "permissionmgr"

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/j8;->l(Ljava/lang/String;)V

    sget-object p1, Landroidx/appcompat/view/menu/t1;->d:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/go0$b;->d(Ljava/lang/Object;)V

    sget-object p1, Landroidx/appcompat/view/menu/t1;->m:Landroidx/appcompat/view/menu/go0$d;

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->D()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/view/menu/go0$d;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Landroidx/appcompat/view/menu/tg;->d:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/go0$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManager;

    if-eqz p1, :cond_0

    :try_start_0
    sget-object v0, Landroidx/appcompat/view/menu/c4;->c:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/go0$b;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public j()V
    .locals 3

    invoke-super {p0}, Landroidx/appcompat/view/menu/j8;->j()V

    new-instance v0, Landroidx/appcompat/view/menu/di0;

    const-string v1, "getPermissionInfo"

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/di0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ob;->d(Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/di0;

    const-string v1, "getPermissionFlags"

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/di0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ob;->d(Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/di0;

    const-string v1, "updatePermissionFlags"

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/di0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ob;->d(Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/di0;

    const-string v1, "grantRuntimePermission"

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/di0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ob;->d(Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/di0;

    const-string v1, "revokeRuntimePermission"

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/di0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ob;->d(Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/di0;

    const-string v1, "shouldShowRequestPermissionRationale"

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/di0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ob;->d(Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/di0;

    const-string v1, "isPermissionRevokedByPolicy"

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/di0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ob;->d(Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/di0;

    const-string v1, "startOneTimePermissionSession"

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/di0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ob;->d(Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/di0;

    const-string v1, "stopOneTimePermissionSession"

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/di0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ob;->d(Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/di0;

    const-string v1, "setAutoRevokeExempted"

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/di0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ob;->d(Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/di0;

    const-string v1, "isAutoRevokeExempted"

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/di0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ob;->d(Landroidx/appcompat/view/menu/md0;)V

    invoke-static {}, Landroidx/appcompat/view/menu/y8;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/di0;

    const-string v1, "getAllowlistedRestrictedPermissions"

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/di0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ob;->d(Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/di0;

    const-string v1, "addAllowlistedRestrictedPermission"

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/di0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ob;->d(Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/di0;

    const-string v1, "removeAllowlistedRestrictedPermission"

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/di0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ob;->d(Landroidx/appcompat/view/menu/md0;)V

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_1

    new-instance v0, Landroidx/appcompat/view/menu/di0;

    const-string v1, "revokePostNotificationPermissionWithoutKillForTest"

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/di0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ob;->d(Landroidx/appcompat/view/menu/md0;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroidx/appcompat/view/menu/di0;

    const-string v1, "checkPermission"

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/di0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ob;->d(Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/g31;

    const-string v1, "checkUidPermission"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/g31;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ob;->d(Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/di0;

    const-string v1, "getWhitelistedRestrictedPermissions"

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/di0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ob;->d(Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/di0;

    const-string v1, "addWhitelistedRestrictedPermission"

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/di0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ob;->d(Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/di0;

    const-string v1, "removeWhitelistedRestrictedPermission"

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/di0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ob;->d(Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/di0;

    const-string v1, "setDefaultBrowser"

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/di0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ob;->d(Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/di0;

    const-string v1, "grantDefaultPermissionsToActiveLuiApp"

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/di0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ob;->d(Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/e20$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/e20$a;-><init>(Landroidx/appcompat/view/menu/e20;)V

    const-string v1, "checkDeviceIdentifierAccess"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    :goto_0
    return-void
.end method
