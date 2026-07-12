.class public Landroidx/appcompat/view/menu/c20;
.super Landroidx/appcompat/view/menu/j8;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/c20$s;,
        Landroidx/appcompat/view/menu/c20$t;,
        Landroidx/appcompat/view/menu/c20$h;,
        Landroidx/appcompat/view/menu/c20$j;,
        Landroidx/appcompat/view/menu/c20$k;,
        Landroidx/appcompat/view/menu/c20$b;,
        Landroidx/appcompat/view/menu/c20$l;,
        Landroidx/appcompat/view/menu/c20$e;,
        Landroidx/appcompat/view/menu/c20$p;,
        Landroidx/appcompat/view/menu/c20$q;,
        Landroidx/appcompat/view/menu/c20$f;,
        Landroidx/appcompat/view/menu/c20$c;,
        Landroidx/appcompat/view/menu/c20$o;,
        Landroidx/appcompat/view/menu/c20$n;,
        Landroidx/appcompat/view/menu/c20$r;,
        Landroidx/appcompat/view/menu/c20$i;,
        Landroidx/appcompat/view/menu/c20$g;,
        Landroidx/appcompat/view/menu/c20$m;,
        Landroidx/appcompat/view/menu/c20$d;,
        Landroidx/appcompat/view/menu/c20$u;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/t1;->c:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/go0$b;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

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
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/t1;->c:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/go0$b;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public i(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    sget-object p1, Landroidx/appcompat/view/menu/t1;->c:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/go0$b;->d(Ljava/lang/Object;)V

    const-string p1, "package"

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/j8;->l(Ljava/lang/String;)V

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
    sget-object v0, Landroidx/appcompat/view/menu/c4;->b:Landroidx/appcompat/view/menu/go0$b;

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
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/view/menu/j8;->j()V

    new-instance v0, Landroidx/appcompat/view/menu/di0;

    const-string v1, "getPackageUid"

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/di0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ob;->d(Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/di0;

    const-string v1, "canRequestPackageInstalls"

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/di0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ob;->d(Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/c20$s;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/c20$s;-><init>()V

    const-string v1, "resolveIntent"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/c20$t;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/c20$t;-><init>()V

    const-string v1, "resolveService"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/c20$h;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/c20$h;-><init>()V

    const-string v1, "getPackageInfo"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/c20$j;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/c20$j;-><init>()V

    const-string v1, "getProviderInfo"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/c20$k;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/c20$k;-><init>()V

    const-string v1, "getReceiverInfo"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/c20$b;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/c20$b;-><init>()V

    const-string v1, "getActivityInfo"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/c20$l;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/c20$l;-><init>()V

    const-string v1, "getServiceInfo"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/c20$e;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/c20$e;-><init>()V

    const-string v1, "getInstalledApplications"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/c20$p;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/c20$p;-><init>()V

    const-string v1, "queryIntentActivities"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/c20$q;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/c20$q;-><init>()V

    const-string v1, "queryIntentServices"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/c20$f;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/c20$f;-><init>()V

    const-string v1, "getInstalledPackages"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/c20$c;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/c20$c;-><init>()V

    const-string v1, "getApplicationInfo"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/c20$o;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/c20$o;-><init>()V

    const-string v1, "queryContentProviders"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/c20$n;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/c20$n;-><init>()V

    const-string v1, "queryIntentReceivers"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/c20$r;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/c20$r;-><init>()V

    const-string v1, "resolveContentProvider"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/c20$i;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/c20$i;-><init>()V

    const-string v1, "getPackagesForUid"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/c20$g;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/c20$g;-><init>()V

    const-string v1, "getInstallerPackageName"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/c20$m;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/c20$m;-><init>()V

    const-string v1, "getSharedLibraries"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/c20$d;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/c20$d;-><init>()V

    const-string v1, "getComponentEnabledSetting"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/c20$u;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/c20$u;-><init>()V

    const-string v1, "setComponentEnabledSetting"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/c20$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/c20$a;-><init>(Landroidx/appcompat/view/menu/c20;)V

    const-string v1, "getPackageInfoVersioned"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    return-void
.end method
